import 'package:flutter/material.dart';
import 'package:medhub_application/presentation/utils/color.dart';

class CategoryModel {
  final String text;
  final String image;
  final LinearGradient color;

  CategoryModel({
    required this.text,
    required this.image,
    required this.color,
  });
}

final List<CategoryModel> categoryModel = [
  CategoryModel(
      text: 'Dental', image: 'assets/images/theeth_icon.svg', color: categoryPink),
  CategoryModel(
      text: 'Wellness', image: 'assets/images/leaves_icon.svg', color: categoryGreen),
  CategoryModel(
      text: 'Homeo', image: 'assets/images/medical_icon.svg', color: categoryOrange),
  CategoryModel(
      text: 'Eye care', image: 'assets/images/eye_icon.svg', color: categoryBlue),
  CategoryModel(
      text: 'Skin & Hair', image: 'assets/images/skin_icon.svg', color: categoryDark),
  CategoryModel(
      text: 'Category', image: '', color: categoryGrey),
];
