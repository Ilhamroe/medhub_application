import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medhub_application/presentation/utils/color.dart';

class TextItemsWidgets extends StatelessWidget {
  const TextItemsWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '2 Items in your cart',
            style: TextStyle(
              fontFamily: 'Sofia-Pro',
              fontSize: 14.sp,
              color: textColor,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'TOTAL',
                style: TextStyle(
                  fontFamily: 'Sofia-Pro',
                  fontSize: 13.sp,
                  color: textColor,
                ),
              ),
              Text(
                'Rp 185.000',
                style: TextStyle(
                  fontFamily: 'Overpass-Bold',
                  fontSize: 16.sp,
                  color: primary,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
