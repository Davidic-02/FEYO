import 'package:flutter/material.dart';

class NoisePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..strokeWidth = 1;
    for (int i = 0; i < size.height.toInt(); i += 3) {
      paint.color = Colors.white.withOpacity(0.03 * (i % 5));
      canvas.drawLine(
        Offset(0, i.toDouble()),
        Offset(size.width, i.toDouble()),
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(NoisePainter oldDelegate) => false;
}
