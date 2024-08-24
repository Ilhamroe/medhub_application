import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medhub_application/presentation/utils/color.dart';

class FieldOtpWidgets extends StatelessWidget {
  const FieldOtpWidgets({super.key});

  @override
 Widget build(BuildContext context) {
    final int field = 4;

    return Row(
      mainAxisAlignment:
          MainAxisAlignment.spaceEvenly,
      children: List.generate(
        field,
        (index) => Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(
            horizontal: 8.0.w),
            child: TextField(
              textAlign: TextAlign
                  .center,
              style: TextStyle(
                fontFamily: 'Overpass',
                color: textColor, 
                fontSize: 24.sp,
              ),
              decoration: InputDecoration(
                hintText: '0',
                hintStyle: TextStyle(
                  fontFamily: 'Overpass',
                  color: textColor, 
                  fontSize: 24.sp,
                ),
                contentPadding: EdgeInsets.symmetric(
                    vertical: 20
                        .h),
              ),
              keyboardType: TextInputType.number, 
            ),
          ),
        ),
      ),
    );
  }
}
