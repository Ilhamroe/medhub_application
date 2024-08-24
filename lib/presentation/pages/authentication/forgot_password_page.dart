import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Forgot Password Page',
          style: TextStyle(
            fontFamily: 'Overpass-ExtraBold',
            fontSize: 20.sp,
            ),
          ),
      ),
    );
  }
}