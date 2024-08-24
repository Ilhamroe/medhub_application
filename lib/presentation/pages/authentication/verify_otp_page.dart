import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:medhub_application/presentation/utils/color.dart';
import 'package:medhub_application/presentation/widgets/general/button_widget.dart';
import 'package:medhub_application/presentation/widgets/general/field_otp_widget.dart';

class VerifyOtpPage extends StatelessWidget {
  const VerifyOtpPage({super.key});

  @override
  Widget build(BuildContext context) {
    final label = Uri.encodeComponent("Phone Number Verified");
    final description = Uri.encodeComponent("Congradulations, your phone number has been verified. You can start using the app");
    final descButton = Uri.encodeComponent("CONTINUE");
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        automaticallyImplyLeading: false,
        title: GestureDetector(
          onTap: () {
            context.push('/register');
          },
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10.0.w,
            ),
            child: Icon(Icons.arrow_back, size: 24.r,),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 30.0.r, right: 34.0.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Enter the Verify Code",
                    style: TextStyle(
                        fontSize: 24.sp, fontFamily: 'Overpass-ExtraBold'),
                  ),
                  Text(
                    'We just send you a verification code via phone +62 821 39 488 953',
                    style: TextStyle(
                      fontFamily: 'Overpass',
                      color: textColor, 
                      fontSize: 14.sp,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5.r, bottom: 40.r),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 30.0.r),
                    child: const FieldOtpWidgets(),
                  ),
                  ButtonWidgets(
                      text: 'SUBMIT CODE',
                      image: '',
                      borderColor: primary,
                      buttonColor: primary,
                      colorText: pureWhite,
                      onPressed: () => context.push('/successpage/$label/$description/$descButton')),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20.0.w),
                    child: Text(
                      'The verify code will expire in 00:59',
                      style: TextStyle(
                          fontFamily: 'Overpass', fontSize: 14.sp, color: textColor),
                    ),
                  ),
                  Text(
                    'Resend Code',
                    style: TextStyle(
                        fontFamily: 'Overpass', fontSize: 14.sp, color: green),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
