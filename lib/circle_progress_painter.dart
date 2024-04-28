import 'dart:math' as math;
import 'dart:math';
import 'package:flutter/material.dart';

class CircleProgressPainter extends CustomPainter {
  final double progress;
  final Color backgroundColor;
  final Color progressColor;
  final String timerText;

  CircleProgressPainter({
    required this.progress,
    this.backgroundColor = Colors.grey,
    this.progressColor = Colors.blue,
    required this.timerText,
  });

  @override
  void paint(Canvas canvas, Size size) {
    Paint backgroundPaint = Paint()
      ..color = backgroundColor
      ..strokeWidth = 5
      ..style = PaintingStyle.stroke;

    Paint progressPaint = Paint()
      ..shader = LinearGradient(
        colors: [progressColor, progressColor.withOpacity(0.5)],
      ).createShader(Rect.fromCircle(center: Offset(size.width / 2, size.height / 2), radius: size.width / 2))
      ..strokeWidth = 5
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;

    Offset center = Offset(size.width / 2, size.height / 2);
    double radius = min(size.width / 2, size.height / 2);

    canvas.drawCircle(center, radius, backgroundPaint);
    double angle = 2 * math.pi * progress;
    canvas.drawArc(Rect.fromCircle(center: center, radius: radius), -math.pi / 2, angle, false, progressPaint);

    // 绘制倒计时数字
    TextSpan span = new TextSpan(style: new TextStyle(color: Colors.black, fontSize: 80.0, fontWeight: FontWeight.bold), text: timerText);
    TextPainter tp = new TextPainter(text: span, textAlign: TextAlign.center, textDirection: TextDirection.ltr);
    tp.layout();
    tp.paint(canvas, new Offset(size.width / 2 - tp.width / 2, size.height / 2 - tp.height / 2)); // 将文本绘制在画布中心
  }
  

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
