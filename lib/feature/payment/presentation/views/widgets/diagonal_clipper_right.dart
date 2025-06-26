import 'package:flutter/material.dart';

class DiagonalClipperRight extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(size.width * 0.4, 0); // بدل 0.5 عشان نوسع
    path.lineTo(size.width, size.height * 1);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
