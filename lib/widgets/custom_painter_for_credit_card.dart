import 'package:flutter/material.dart';

class BackGroundPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint1 = Paint();

    //paint for first curve
    paint1.shader = const LinearGradient(
      colors: [
        Color(0xffafdbdb),
        Color(0xff74c0c3),
      ],
      begin: Alignment.bottomCenter,
      end: Alignment.topRight,
    ).createShader(
      Rect.fromCircle(
        center: Offset(size.width * .1, size.height * .55),
        radius: size.height * .2,
      ),
    );

    //paint for second curve
    Paint paint2 = Paint();

    paint2.shader = const LinearGradient(
      colors: [
        Color(0xffafdbdb),
        Color(0xff74c0c3),
      ],
      begin: Alignment.centerLeft,
      end: Alignment.bottomRight,
    ).createShader(
      Rect.fromCircle(
        center: Offset(size.width* .6, size.height * .4),
        radius: size.height * .3,
      ),
    );

    //path for first curve
    Path shadowPath1 = Path();

    shadowPath1.moveTo(0, size.height * .35);
    shadowPath1.quadraticBezierTo(size.width * .2, size.height * .8,
        size.width * .5, size.height * .45);
    shadowPath1.quadraticBezierTo(
        size.width * .5, size.height * .2, size.width * .6, 0);
    shadowPath1.lineTo(0, size.height * .15);
    shadowPath1.close();

    //canvas for first curve
    canvas.drawPath(shadowPath1, paint1);

    //path for second curve
    Path shadowPath2 = Path();

    shadowPath2.moveTo(size.width* .6, 0);
    shadowPath2.quadraticBezierTo(size.width* .45, size.height* .65, size.width* .7, size.height);
    shadowPath2.lineTo(size.width* .95, size.height* .95);
    shadowPath2.lineTo(size.width* .9, 0);
    shadowPath2.close();

    //canvas for second curve
    canvas.drawPath(shadowPath2, paint2);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}