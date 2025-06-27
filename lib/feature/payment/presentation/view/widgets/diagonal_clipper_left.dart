import 'package:flutter/material.dart';

class DiagonalClipperLeft extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(size.width * 1, 0); // بدل 0.5 عشان نوسع الناحية الشمال
    path.lineTo(0, size.height * 1);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
