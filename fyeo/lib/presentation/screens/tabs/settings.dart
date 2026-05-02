import 'package:flutter/material.dart';
import 'package:fyeo/constants/app_colors.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.darkBg,
      body: Center(
        child: Text('Settings', style: TextStyle(color: AppColors.whiteColor)),
      ),
    );
  }
}
