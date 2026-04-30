import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fyeo/models/encryption_result.dart';

class EncryptionSuccess extends HookWidget {
  final EncryptionResult result;

  const EncryptionSuccess({super.key, required this.result});

  @override
  Widget build(BuildContext context) {
    final controller = useAnimationController(
      duration: const Duration(milliseconds: 800),
    );

    useEffect(() {
      controller.forward();
      return null;
    }, []);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Encryption Successful'),
        centerTitle: true,
      ),
      body: FadeTransition(
        opacity: controller,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.verified, size: 100, color: Colors.green),
              const SizedBox(height: 20),

              const Text(
                'File Encrypted Successfully!',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 20),

              Text('File: ${result.originalFileName}'),
              Text('Size: ${result.originalSize} bytes'),
              Text('Encrypted at: ${result.encryptedAt}'),

              const SizedBox(height: 30),

              ElevatedButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Done'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
