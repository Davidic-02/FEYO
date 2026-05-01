import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fyeo/bloc/dashboard/dashboard_bloc.dart';
import 'package:fyeo/bloc/encryption/encryption_bloc.dart';
import 'package:fyeo/models/encryption_result.dart';
import 'package:fyeo/presentation/screens/dashboard.dart';
import 'package:fyeo/presentation/screens/encryption.dart';
import 'package:fyeo/presentation/screens/encryption_success.dart';
import 'package:fyeo/presentation/screens/recent_files.dart';
import 'package:fyeo/presentation/screens/tabs/main_shell.dart';
import 'package:fyeo/presentation/screens/tabs/settings.dart';
import 'package:fyeo/presentation/screens/tabs/vault.dart';

import 'package:fyeo/router/app_routes.dart';
import 'package:go_router/go_router.dart';
import 'dart:io';

class AppRouter {
  final DashboardBloc dashboardBloc;

  AppRouter({required this.dashboardBloc});

  late final GoRouter router = GoRouter(
    initialLocation: '/dashboard',
    refreshListenable: _MultiBlocStream([dashboardBloc.stream]),

    redirect: (context, routerState) {
      final dashState = dashboardBloc.state;
      final pending = dashState.pendingRoute;

      if (pending is EncryptRoute) {
        dashboardBloc.add(const DashboardEvent.routeConsumed());
        Future.microtask(
          () => router.push('/encrypt', extra: dashState.fileToNavigate),
        );
        return null;
      }

      if (pending is RecentFilesRoute) {
        dashboardBloc.add(const DashboardEvent.routeConsumed());
        return '/recent-files';
      }

      return null;
    },

    routes: [
      // ── Shell — wraps all bottom nav screens ─────────────────
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return MainShell(navigationShell: navigationShell);
        },
        branches: [
          // ── Branch 0: Dashboard ──────────────────────────────
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/dashboard',
                builder: (context, state) => BlocProvider.value(
                  value: dashboardBloc,
                  child: const DashboardScreen(),
                ),
              ),
              GoRoute(
                path: '/recent-files',
                builder: (context, state) => const RecentFilesScreen(),
              ),
            ],
          ),

          // ── Branch 1: Vault ──────────────────────────────────
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/vault',
                builder: (context, state) => const VaultScreen(),
              ),
            ],
          ),

          // ── Branch 2: Settings ───────────────────────────────
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/settings',
                builder: (context, state) => const SettingsScreen(),
              ),
            ],
          ),
        ],
      ),

      // ── Outside shell — full screen, no bottom nav ────────────
      GoRoute(
        path: '/encrypt',
        builder: (context, state) {
          final file = state.extra as File;
          return BlocProvider(
            create: (_) => EncryptionBloc(fileToEncrypt: file),
            child: const EncryptionScreen(),
          );
        },
      ),
      GoRoute(
        path: '/success',
        builder: (context, state) {
          final result = state.extra as EncryptionResult;
          return EncryptionSuccess(result: result);
        },
      ),
    ],
  );
}

class _MultiBlocStream extends ChangeNotifier {
  _MultiBlocStream(List<Stream> streams) {
    for (final stream in streams) {
      _subs.add(stream.listen((_) => notifyListeners()));
    }
  }

  final List<StreamSubscription> _subs = [];

  @override
  void dispose() {
    for (final sub in _subs) {
      sub.cancel();
    }
    super.dispose();
  }
}
