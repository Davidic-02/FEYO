import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fyeo/bloc/dashboard/dashboard_bloc.dart';

class DashboardScreen extends HookWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // hooks go here (if needed later)
    // final controller = useTextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text("Dashboard")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            context.read<DashboardBloc>().add(const DashboardEvent.pickFile());
          },
          child: const Text("Pick File"),
        ),
      ),
    );
  }
}
