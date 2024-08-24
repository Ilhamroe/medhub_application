import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medhub_application/domain/model/category/category_product_model.dart';
import 'package:medhub_application/presentation/utils/color.dart';

class CarouselProductTemplate extends StatelessWidget {
  const CarouselProductTemplate({
    super.key,
    required this.item,
  });
  
  final CategoryProductModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: carouselColor, 
        borderRadius: BorderRadius.circular(10.r), 
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.r),
        child: Image.asset(
          item.image,
          fit: BoxFit.contain, 
        ),
      ),
    );
  }
}