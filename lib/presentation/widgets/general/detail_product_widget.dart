import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medhub_application/presentation/utils/color.dart';

class DetailProductWidgets extends StatelessWidget {
  final String price;
  final String title;

  const DetailProductWidgets({
    Key? key,
    required this.price,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 16.0.w, bottom: 7.0.w),
      child: Container(
        height: 68.r,
        width: 79.r,
        decoration: BoxDecoration(
          color: itemColor,
          borderRadius: BorderRadius.circular(6.r),
          border: Border.all(
            color: green,
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
                  color: green,
                ),
              ),
              Text(
                title,
                style: TextStyle(
                  fontFamily: 'Overpass',
                  fontSize: 12.sp,
                  color: green,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}