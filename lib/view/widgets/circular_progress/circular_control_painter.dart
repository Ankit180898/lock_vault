import 'package:flutter/material.dart';
import 'dart:math';

import 'package:lock_vault/constants/app_color.dart';

class CircularControlPainter extends CustomPainter {
  final double value;

  CircularControlPainter({required this.value});

  @override
  void paint(Canvas canvas, Size size) {
    final centerX = size.width / 2;
    final centerY = size.height / 2;
    final radius = min(centerX, centerY) - 10;

    final paint = Paint()
      ..color = AppColor.primary
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 20;
    const spaceAngle = 0.20; // Angle to add space between indicators

    const startAngle = -pi / 2 + spaceAngle / 2;
    final sweepAngle = value * (2 * pi - spaceAngle); // Subtract space angle

    // Draw completed arc
    canvas.drawArc(
      Rect.fromCircle(center: Offset(centerX, centerY), radius: radius),
      startAngle,
      sweepAngle, // Adjust sweep angle
      false,
      paint,
    );

    // Draw remaining arc
    paint.color = Colors.grey.withOpacity(0.5);
    canvas.drawArc(
      Rect.fromCircle(center: Offset(centerX, centerY), radius: radius),
      startAngle + sweepAngle + spaceAngle,
      2 * pi - sweepAngle - 2 * spaceAngle,
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
