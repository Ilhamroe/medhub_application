import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medhub_application/presentation/utils/color.dart';

class AddPage extends StatelessWidget {
  const AddPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: screenPage,
      body: Center(
        child: Text(
          'Add Page',
          style: TextStyle(
            fontFamily: 'Overpass-ExtraBold',
            fontSize: 20.sp,
          ),
        ),
      ),
    );
  }
}
