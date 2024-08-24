import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medhub_application/presentation/utils/color.dart';

class ProductDetailsWidgets extends StatelessWidget {
  const ProductDetailsWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0.w),
          child: Text(
            'Product Details',
            style: TextStyle(
              fontFamily: 'Overpass-ExtraBold',
              fontSize: 16.sp,
              color: primary,
            ),
          ),
        ),
        Text(
          'Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi ut nisi odio. Nulla facilisi.Nunc risus massa, gravida id egestas a, pretium vel tellus. Praesent feugiat diam sit amet pulvinar finibus. Etiam et nisi aliquet, accumsan nisi sit.',
          style: TextStyle(
            fontFamily: 'Overpass',
            fontSize: 14.sp,
            color: textColor,
          ),
          maxLines: 5,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
