import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:medhub_application/presentation/utils/color.dart';
import 'package:medhub_application/presentation/widgets/general/button_widget.dart';
import 'package:medhub_application/presentation/widgets/general/medhub_widget.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      backgroundColor: pureWhite,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  bottom: 20.r,
                  child: Image.asset(
                    'assets/images/elips.png',
                    width: 230.w,
                    height: 230.h,
                  ),
                ),
                Image.asset(
                  'assets/images/welcome.png',
                  width: 230.w, 
                  height: 230.h, 
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(32.r, 30.r, 32.r, 20.r),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Welcome to ",
                    style: Theme.of(context)
                        .textTheme
                        .headlineLarge!
                        .copyWith(fontFamily: 'Overpass-ExtraBold', fontSize: 24.sp, color: primary),
                        textAlign: TextAlign.center,
                  ),
                  const MedhubWidget(),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 60.w),
              child: Text(
                "Do you want some help with your health to get better life?",
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontFamily: 'Overpass', color: textColor,  fontSize: 16.sp),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30.0.r, bottom: 5.0.r),
              child: ButtonWidgets(text: 'SIGN UP WITH EMAIL', image: '', borderColor: primary, buttonColor: primary, colorText: pureWhite, onPressed: () => context.push('/register')),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5.0.r, bottom: 5.0.r),
              child: ButtonWidgets(text: 'SIGN UP WITH FACEBOOK', image: 'assets/images/fb.svg', borderColor: border, buttonColor: button, colorText: textButton, onPressed: (){}),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5.0.r, bottom: 10.0.r),
              child: ButtonWidgets(text: 'SIGN UP WITH GOOGLE', image: 'assets/images/google.svg', borderColor: border, buttonColor: button, colorText: textButton, onPressed: (){}),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.r),
              child: TextButton(
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.all(Colors
                      .transparent),
                  backgroundColor: MaterialStateProperty.all(Colors
                      .transparent),
                ),
                onPressed: () => context.push('/login'),
                child: Text(
                  "LOGIN",
                  style: TextStyle(
                    fontFamily: 'Overpass',
                    fontSize: 14.sp,
                    color: textColor, 
                  ),
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}