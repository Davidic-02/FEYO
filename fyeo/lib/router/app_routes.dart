import 'package:fyeo/models/encryption_result.dart';

sealed class AppRoute {
  const AppRoute();
}

class DashboardRoute extends AppRoute {
  const DashboardRoute();
}

class EncryptRoute extends AppRoute {
  const EncryptRoute();
}

class SuccessRoute extends AppRoute {
  final EncryptionResult result;
  const SuccessRoute({required this.result});
}

class RecentFilesRoute extends AppRoute {
  const RecentFilesRoute();
}

class NoRoute extends AppRoute {
  const NoRoute();
}
