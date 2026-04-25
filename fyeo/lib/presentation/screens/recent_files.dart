import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class RecentFilesScreen extends HookWidget {
  const RecentFilesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isLoading = useState(false);

    return Scaffold(
      appBar: AppBar(title: const Text("Recent Files")),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text("File $index"),
            trailing: const Icon(Icons.file_copy),
          );
        },
      ),
    );
  }
}
