import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medhub_application/presentation/utils/color.dart';

class TemplatePage extends StatelessWidget {
  const TemplatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Template Page'),
      ),
      backgroundColor: pureWhite,
      body: Center(
        child: Text(
          'Template Page',
          style: TextStyle(
            fontFamily: 'Overpass-ExtraBold',
            fontSize: 20.sp,
          ),
        ),
      ),
    );
  }
}
