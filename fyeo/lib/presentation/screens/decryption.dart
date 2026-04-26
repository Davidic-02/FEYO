import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fyeo/models/encrypted_file.dart';

class DecryptionScreen extends HookWidget {
  final EncryptedFile file;

  const DecryptionScreen({super.key, required this.file});

  @override
  Widget build(BuildContext context) {
    final isDecrypting = useState(false);
    final result = useState<String?>(null);

    return Scaffold(
      appBar: AppBar(title: const Text("Decrypt File")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Encrypted File: ${file.fileName}"),
            const SizedBox(height: 20),

            if (isDecrypting.value)
              const CircularProgressIndicator()
            else
              ElevatedButton(
                onPressed: () async {
                  isDecrypting.value = true;

                  // later: call bloc / repository / backend
                  await Future.delayed(const Duration(seconds: 2));

                  result.value = "Decrypted content here";
                  isDecrypting.value = false;
                },
                child: const Text("Start Decryption"),
              ),

            const SizedBox(height: 20),

            if (result.value != null) Text("Result: ${result.value}"),
          ],
        ),
      ),
    );
  }
}
