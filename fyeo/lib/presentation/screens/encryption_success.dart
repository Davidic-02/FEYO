import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fyeo/bloc/encryption_success/encryption_success_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:fyeo/constants/app_colors.dart';
import 'package:fyeo/models/encryption_result.dart';

import 'package:fyeo/router/app_routes.dart';

class EncryptionSuccess extends StatelessWidget {
  final EncryptionResult result;
  const EncryptionSuccess({Key? key, required this.result}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => EncryptionSuccessBloc(result: result),
      child: const _SuccessView(),
    );
  }
}
