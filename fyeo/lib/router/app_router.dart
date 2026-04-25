import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fyeo/router/app_routes.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  final DashboardBloc dashboardBloc;

  AppRouter({required this.dashboardBloc});

  late final GoRouter router = GoRouter(
    initialLocation: '/dashboard',
    // ── Router rebuilds whenever Bloc state changes ────────
    refreshListenable: GoRouterBlocRefreshStream(dashboardBloc.stream),
    routes: [
      GoRoute(
        path: '/dashboard',
        builder: (context, state) => const DashboardScreen(),
      ),
      GoRoute(
        path: '/encrypt',
        builder: (context, state) {
          // File comes from router extra, not from Bloc state
          final file = state.extra as File;
          return EncryptionScreen(file: file);
        },
      ),
      GoRoute(
        path: '/recent-files',
        builder: (context, state) => const RecentFilesScreen(),
      ),
    ],
    // ── Redirect logic — this is where routing decisions live ─
    redirect: (context, routerState) {
      final dashState = dashboardBloc.state;

      // If there is a pending file to encrypt, redirect there
      if (dashState.pendingRoute case EncryptRoute(:final file)) {
        return null; // GoRouter will handle via extra below
      }
    },
  );
}

// ── Makes GoRouter listen to any Bloc stream ───────────────────
class GoRouterBlocRefreshStream extends ChangeNotifier {
  GoRouterBlocRefreshStream(Stream<dynamic> stream) {
    notifyListeners();
    _subscription = stream.listen((_) => notifyListeners());
  }

  late final StreamSubscription<dynamic> _subscription;

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}
