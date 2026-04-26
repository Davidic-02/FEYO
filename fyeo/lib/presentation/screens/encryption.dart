import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class EncryptionScreen extends HookWidget {
  final File file;

  const EncryptionScreen({super.key, required this.file});

  @override
  Widget build(BuildContext context) {
    final isProcessing = useState(false);

    return Scaffold(
      appBar: AppBar(title: const Text("Encrypt File")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("File: ${file.path}"),
            const SizedBox(height: 20),

            if (isProcessing.value)
              const CircularProgressIndicator()
            else
              ElevatedButton(
                onPressed: () async {
                  isProcessing.value = true;

                  // later: call bloc / repository here
                  await Future.delayed(const Duration(seconds: 2));

                  isProcessing.value = false;
                },
                child: const Text("Start Encryption"),
              ),
          ],
        ),
      ),
    );
  }
}
