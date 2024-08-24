import 'package:flutter/material.dart';

class DiscountClipper extends CustomClipper<Path> {
  final double radius;

  DiscountClipper({this.radius = 9.0}); // Default radius

  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, radius);
    path.quadraticBezierTo(0, 0, radius, 0);
    path.lineTo(size.width, 0);
    path.lineTo(0, size.height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

