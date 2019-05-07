import 'package:flutter/material.dart';

class PointsPainter extends CustomPainter{
  Paint _paint = Paint();

  @override
  void paint(Canvas canvas, Size size) {
    _paint.color = Colors.deepPurpleAccent.withOpacity(0.15);
    var path = Path();
    path.moveTo(0, 0);
    path.lineTo(size.width / 2, 0);
    path.lineTo(size.width / 2 - 40, size.height);
    path.lineTo(0, size.height);
    path.close();

    canvas.drawPath(path, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }

}