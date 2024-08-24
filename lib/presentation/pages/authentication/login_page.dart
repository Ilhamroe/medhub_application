import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:medhub_application/presentation/utils/color.dart';
import 'package:medhub_application/presentation/widgets/general/button_widget.dart';
import 'package:medhub_application/presentation/widgets/general/field_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        automaticallyImplyLeading: false,
        title: GestureDetector(
          onTap: () {
            context.push('/welcome');
          },
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10.0.w,
            ),
            child: Icon(
              Icons.arrow_back,
              size: 24.r,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 32.0.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 4.0.w),
              child: Text(
                "Welcome Back!",
                style: TextStyle(
                    fontSize: 24.sp, fontFamily: 'Overpass-ExtraBold'),
              ),
            ),
            LoginFieldWidgets(
              label: 'Username',
              controller: _usernameController,
              leadingIcon: 'assets/images/id.svg',
            ),
            LoginFieldWidgets(
              label: 'Password',
              controller: _passwordController,
              leadingIcon: 'assets/images/pw.svg',
              obscureText: true,
              trailingText: TextButton(
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.all(Colors.transparent),
                  backgroundColor:
                      MaterialStateProperty.all(Colors.transparent),
                ),
                onPressed: () => context.push('/forgotPassword'),
                child: Text(
                  'Forgot?',
                  style: TextStyle(
                      fontFamily: 'Overpass', color: textColor,  fontSize: 12.sp),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 50.r, bottom: 100.r),
              child: ButtonWidgets(
                  text: 'SIGN IN',
                  image: '',
                  borderColor: primary,
                  buttonColor: primary,
                  colorText: pureWhite,
                  onPressed: () => context.push('/navbar')),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '< Don’t have an account? ',
                    style: TextStyle(
                        fontFamily: 'Overpass', fontSize: 14.sp, color: textColor,),
                  ),
                  GestureDetector(
                    onTap: () => context.push('/register'),
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                          fontFamily: 'Overpass', color: textColor,  fontSize: 12.sp),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
