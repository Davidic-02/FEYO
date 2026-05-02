import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fyeo/bloc/dashboard/dashboard_bloc.dart';
import 'package:fyeo/constants/app_colors.dart';
import 'package:fyeo/presentation/widget/dashboard/empty_state.dart';
import 'package:fyeo/presentation/widget/dashboard/error_state.dart';
import 'package:fyeo/presentation/widget/dashboard/loaded_state.dart';
import 'package:fyeo/presentation/widget/dashboard/loading_state.dart';

class DashboardScreen extends HookWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<DashboardBloc>();

    return BlocListener<DashboardBloc, DashboardState>(
      listenWhen: (prev, curr) =>
          curr.errorMessage != prev.errorMessage && curr.errorMessage != null,
      listener: (context, state) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(state.errorMessage!),
            backgroundColor: AppColors.redError,
            duration: const Duration(seconds: 3),
          ),
        );
      },
      child: Scaffold(
        backgroundColor: AppColors.darkBg,
        body: BlocBuilder<DashboardBloc, DashboardState>(
          builder: (context, state) {
            return _buildBody(context, state, bloc);
          },
        ),
      ),
    );
  }

  Widget _buildBody(
    BuildContext context,
    DashboardState state,
    DashboardBloc bloc,
  ) {
    if (state.isLoading) {
      return const LoadingStateWidget();
    }

    if (state.hasError) {
      return ErrorStateWidget(state: state, bloc: bloc);
    }

    if (!state.hasFiles) {
      return const EmptyStateWidget();
    }

    return LoadedStateWidget(state: state, bloc: bloc);
  }
}
