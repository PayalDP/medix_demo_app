import 'package:flutter/material.dart';

import '../utils/constant.dart';

class Painter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    //dark stroke
    Paint paint1 = Paint();
    paint1.strokeWidth = size.width* .18;
    paint1.strokeCap = StrokeCap.round;
    paint1.style = PaintingStyle.stroke;
    paint1.color = darkTeal;

    Path path1 = Path();

    path1.moveTo(size.width* .35, size.height* .3);
    path1.lineTo(size.width* .5, size.height* .45);

    //light stroke

    Paint paint2 = Paint();
    paint2.strokeWidth = size.width* .18;
    paint2.strokeCap = StrokeCap.round;
    paint2.style = PaintingStyle.stroke;
    paint2.color = Colors.teal.shade100;

    Path path2 = Path();

    path2.moveTo(size.width* .65, size.height* .3);
    path2.lineTo(size.width* .5, size.height* .45);

    canvas.drawPath(path2, paint2);
    canvas.drawPath(path1, paint1);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}