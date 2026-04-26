import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fyeo/presentation/screens/dashboard.dart';
import 'package:fyeo/presentation/screens/encryption.dart';
import 'package:fyeo/presentation/screens/recent_files.dart';
import 'package:fyeo/router/app_routes.dart';
import 'package:go_router/go_router.dart';
import 'dart:async';
import 'package:fyeo/bloc/dashboard/dashboard_bloc.dart';

class AppRouter {
  final DashboardBloc dashboardBloc;

  AppRouter({required this.dashboardBloc});

  late final GoRouter router = GoRouter(
    initialLocation: '/dashboard',
    refreshListenable: _BlocStream(dashboardBloc.stream),
    routes: [
      GoRoute(
        path: '/dashboard',
        builder: (context, state) => BlocProvider.value(
          value: dashboardBloc,
          child: const DashboardScreen(),
        ),
      ),
      GoRoute(
        path: '/encrypt',
        builder: (context, state) =>
            EncryptionScreen(file: state.extra as File),
      ),
      GoRoute(
        path: '/recent-files',
        builder: (context, state) => const RecentFilesScreen(),
      ),
    ],
    redirect: (context, routerState) {
      final dashState = dashboardBloc.state;

      // ── Read pendingRoute, navigate, then clear it ────────
      switch (dashState.pendingRoute) {
        case EncryptRoute(:final file):
          // Tell Bloc the route was consumed BEFORE navigating
          dashboardBloc.add(const DashboardEvent.routeConsumed());
          // GoRouter handles the push — file goes as extra
          // We return null here and use go() below
          // because redirect can't pass extras
          Future.microtask(() {
            router.push('/encrypt', extra: file);
          });
          return null;

        case RecentFilesRoute():
          dashboardBloc.add(const DashboardEvent.routeConsumed());
          return '/recent-files';

        case NoRoute():
          return null;

        case DashboardRoute():
          return '/dashboard'; // stay on current route
      }
    },
  );
}

// Bridges Bloc stream to ChangeNotifier so GoRouter can listen
class _BlocStream extends ChangeNotifier {
  _BlocStream(Stream stream) {
    _sub = stream.listen((_) => notifyListeners());
  }

  late final StreamSubscription _sub;

  @override
  void dispose() {
    _sub.cancel();
    super.dispose();
  }
}
