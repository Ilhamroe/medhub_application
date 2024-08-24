import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medhub_application/presentation/utils/color.dart';

class AddProductCardWidgets extends StatelessWidget {
  const AddProductCardWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Rp 56.000',
              style: TextStyle(
                fontFamily: 'Overpass-ExtraBold',
                fontSize: 18.sp,
                color: primary,
              ),
            ),
            Text(
              'Etiam mollis',
              style: TextStyle(
                fontFamily: 'Overpass',
                fontSize: 18.sp,
                color: textColor,
              ),
            ),
          ],
        ),
        Row(
          children: [
            SvgPicture.asset(
              'assets/images/plus_icon.svg',
              color: green,
            ),
            SizedBox(
              width: 10.r,
            ),
            Text(
              'Add to cart',
              style: TextStyle(
                fontFamily: 'Overpass',
                fontSize: 18.sp,
                color: green,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
