import 'package:flutter/material.dart';
import 'package:fyeo/constants/app_colors.dart';

class VaultScreen extends StatelessWidget {
  const VaultScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.darkBg,
      body: Center(
        child: Text('Vault', style: TextStyle(color: AppColors.whiteColor)),
      ),
    );
  }
}
