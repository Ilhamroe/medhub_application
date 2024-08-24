import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ButtonWidgets extends StatelessWidget {
  final Color borderColor;
  final Color buttonColor;
  final String text;
  final Color colorText;
  final String? image;
  final VoidCallback onPressed;

  const ButtonWidgets({super.key, 
    required this.text,
    this.image,
    required this.borderColor,
    required this.buttonColor,
    required this.colorText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 311.w,
      height: 50.h,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor,
          side: BorderSide(color: borderColor),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32.0).w,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0).r,
              child: SvgPicture.asset(image!),
            ),
            Text(
              text,
              style: TextStyle(
                fontFamily: 'Overpass-ExtraBold',
                fontSize: 16.sp,
                color: colorText,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
