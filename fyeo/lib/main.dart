import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fyeo/bloc/dashboard/dashboard_bloc.dart';
import 'package:fyeo/constants/app_colors.dart';
import 'package:fyeo/router/app_router.dart';

void main() {
  runApp(const FyeoApp());
}

class FyeoApp extends StatefulWidget {
  const FyeoApp({super.key});

  @override
  State<FyeoApp> createState() => _FyeoAppState();
}

class _FyeoAppState extends State<FyeoApp> {
  // ── Created here so they survive hot reload and widget rebuilds ──
  late final DashboardBloc _dashboardBloc;
  late final AppRouter _appRouter;

  @override
  void initState() {
    super.initState();
    _dashboardBloc = DashboardBloc(); // N
    _appRouter = AppRouter(dashboardBloc: _dashboardBloc);

    // Kick off the initial data fetch
    _dashboardBloc.add(const DashboardEvent.fetchFiles());
  }

  @override
  void dispose() {
    _dashboardBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _dashboardBloc,
      child: MaterialApp.router(
        title: 'F.E.Y.O',
        debugShowCheckedModeBanner: false,
        routerConfig: _appRouter.router,
        theme: ThemeData(
          scaffoldBackgroundColor: AppColors.darkBg,
          colorScheme: ColorScheme.dark(
            primary: AppColors.primaryBlue,
            secondary: AppColors.accentNeon,
            error: AppColors.redError,
            surface: AppColors.darkSurface,
          ),
          appBarTheme: const AppBarTheme(
            backgroundColor: AppColors.darkBg,
            foregroundColor: AppColors.whiteColor,
            elevation: 0,
          ),
          textTheme: const TextTheme(
            headlineLarge: TextStyle(color: AppColors.whiteColor),
            headlineMedium: TextStyle(color: AppColors.whiteColor),
            headlineSmall: TextStyle(color: AppColors.whiteColor),
            bodyLarge: TextStyle(color: AppColors.whiteColor),
            bodyMedium: TextStyle(color: AppColors.whiteColor),
            bodySmall: TextStyle(color: AppColors.mutedText),
            labelSmall: TextStyle(color: AppColors.mutedText),
          ),
          switchTheme: SwitchThemeData(
            thumbColor: WidgetStateProperty.resolveWith((states) {
              if (states.contains(WidgetState.selected)) {
                return AppColors.accentNeon;
              }
              return AppColors.mutedText;
            }),
            trackColor: WidgetStateProperty.resolveWith((states) {
              if (states.contains(WidgetState.selected)) {
                return AppColors.accentNeon.withOpacity(0.3);
              }
              return AppColors.darkSurface;
            }),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primaryBlue,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
          navigationBarTheme: NavigationBarThemeData(
            backgroundColor: AppColors.darkSurface,
            indicatorColor: AppColors.primaryBlue.withOpacity(0.2),
            labelTextStyle: WidgetStateProperty.resolveWith((states) {
              if (states.contains(WidgetState.selected)) {
                return const TextStyle(
                  color: AppColors.primaryBlue,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                );
              }
              return const TextStyle(color: AppColors.mutedText, fontSize: 12);
            }),
            iconTheme: WidgetStateProperty.resolveWith((states) {
              if (states.contains(WidgetState.selected)) {
                return const IconThemeData(color: AppColors.primaryBlue);
              }
              return const IconThemeData(color: AppColors.mutedText);
            }),
          ),
        ),
      ),
    );
  }
}
