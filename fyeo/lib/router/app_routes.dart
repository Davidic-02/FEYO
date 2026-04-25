// lib/navigation/app_route.dart

import 'dart:io';

sealed class AppRoute {
  const AppRoute();
}

class DashboardRoute extends AppRoute {
  const DashboardRoute();
}

class EncryptRoute extends AppRoute {
  final File file;
  const EncryptRoute(this.file);
}

class RecentFilesRoute extends AppRoute {
  const RecentFilesRoute();
}

// No route pending
class NoRoute extends AppRoute {
  const NoRoute();
}
