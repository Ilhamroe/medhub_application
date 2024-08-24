import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medhub_application/presentation/utils/color.dart';

class SearchWidgets extends StatelessWidget {
  final Color borderColor;
  final Color buttonColor;
  final String label;
  final Color colorText;
  final TextEditingController controller;
  final String? image;
  final VoidCallback onPressed;

  const SearchWidgets({super.key, 
    required this.label,
    required this.controller,
    this.image,
    required this.borderColor,
    required this.buttonColor,
    required this.colorText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: pureWhite,
        borderRadius: BorderRadius.circular(30.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10.r,
            offset: Offset(0, 4.h),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Row(
          children: [
            SvgPicture.asset(
              image!,
              width: 14.w,
              height: 14.h,
            ),
            SizedBox(width: 10.w),
            Expanded(
              child: TextField(
                controller: controller,
                decoration: InputDecoration(
                  hintText: label,
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                    fontFamily: 'Overpass',
                    color: Colors.grey,
                    fontSize: 13.sp,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
