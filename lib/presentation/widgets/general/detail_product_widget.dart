import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medhub_application/presentation/utils/color.dart';

class DetailProductWidgets extends StatelessWidget {
  final String price;
  final String title;
  final bool isSelected;

  const DetailProductWidgets({
    super.key,
    required this.price,
    required this.title,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 16.0.w, bottom: 7.0.w),
      child: Container(
        height: 68.r,
        width: 79.r,
        decoration: BoxDecoration(
          color: isSelected
              ? itemColor
              : containColor,
          borderRadius: BorderRadius.circular(6.r),
          border: Border.all(
            color: isSelected
                ? green
                : containColor,
            width: 1.0.w,
          ),
        ),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                price,
                style: TextStyle(
                  fontFamily: 'Overpass-ExtraBold',
                  fontSize: 10.sp,
                  color: isSelected
                      ? green
                      : primary, 
                ),
              ),
              Text(
                title,
                style: TextStyle(
                  fontFamily: 'Overpass',
                  fontSize: 12.sp,
                  color: isSelected
                      ? green
                      : textButton,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
