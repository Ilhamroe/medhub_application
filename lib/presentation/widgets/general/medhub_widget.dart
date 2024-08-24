import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medhub_application/presentation/utils/color.dart';

class MedhubWidget extends StatelessWidget {
  const MedhubWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32.h,
      width: 102.w,
      decoration: const BoxDecoration(
        color: rectangle,
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: Center(
          child: Text(
        'MedHub',
        style: TextStyle(fontFamily: 'Overpass-Bold', fontSize: 24.sp),
      )),
    );
  }
}
