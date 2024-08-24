import 'package:flutter/material.dart';
import 'package:medhub_application/presentation/utils/color.dart';

class FeaturedModel {
  final String text;
  final String image;
  final Color color;
  final String? route;

  FeaturedModel({
    required this.text,
    required this.image,
    required this.color,
    this.route,
  });
}

final List<FeaturedModel> featuredModel = [
  FeaturedModel(
    text: 'Himalaya Wellness',
    image: 'assets/images/himalaya_logo.png',
    color: pureWhite,
    route: '/category',
  ),
  FeaturedModel(
    text: 'Accu-Chek',
    image: 'assets/images/accu_logo.png',
    color: pureWhite,
    route: '/category',
  ),
  FeaturedModel(
    text: 'Vlcc',
    image: 'assets/images/vlcc_logo.png',
    color: pureWhite,
    route: '/category',
  ),
  FeaturedModel(
    text: 'Protinex',
    image: 'assets/images/protinex_logo.png',
    color: pureWhite,
    route: '/category',
  ),
];
