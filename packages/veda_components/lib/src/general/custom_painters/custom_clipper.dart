import 'package:flutter/material.dart';

class CustomClipPathUp extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;

    final path = Path();

    path.moveTo(0, 0);
    path.lineTo(0, h);
    path.quadraticBezierTo(w * 0.5, h - h / 3.8, w, h);
    path.lineTo(w, 0);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class CustomClipPathDown extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var height = size.height;
    var width = size.width;
    var heightOffset = height * 0.2;
    Path path = Path();
    path.lineTo(
      0, // x value
      height - heightOffset, // y value
    );
    path.quadraticBezierTo(
      width * 0.5, // x1 of P1
      height - height / 8, // y1 of P1
      width, // x2 of P2
      height - heightOffset, // y2 of P2
    );
    path.lineTo(
      width, // x value
      0, // y value
    );
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
