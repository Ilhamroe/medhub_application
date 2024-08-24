import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:medhub_application/presentation/utils/color.dart';
import 'package:medhub_application/presentation/widgets/general/button_widget.dart';
import 'package:medhub_application/presentation/widgets/general/field_widget.dart';
import 'package:flutter/services.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _usernameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _emailController = TextEditingController();
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
        padding: EdgeInsets.only(left: 30.0.r, right: 34.0.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                "Create Your Account!",
                style:
                    TextStyle(fontSize: 24.sp, fontFamily: 'Overpass-ExtraBold'),
              ),
            ),
            LoginFieldWidgets(
              label: 'Your Name',
              controller: _usernameController,
            ),
            LoginFieldWidgets(
              label: 'Mobile Number',
              controller: _phoneController,
              keyboardType: TextInputType.number, 
               inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            ),
            LoginFieldWidgets(
              label: 'Email',
              controller: _emailController,
            ),
            LoginFieldWidgets(
              label: 'Password',
              controller: _passwordController,
              leadingIcon: 'assets/images/pw.svg',
              obscureText: true,
              trailingIcon: Icons.visibility,
            ),
            Padding(
              padding: EdgeInsets.only(top: 30.r, bottom: 50.r),
              child: ButtonWidgets(
                  text: 'CREATE ACCOUNT',
                  image: '',
                  borderColor: primary,
                  buttonColor: primary,
                  colorText: pureWhite,
                  onPressed: () => context.push('/verifyOtp')),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('< Already have account? ', style: TextStyle(fontFamily: 'Overpass', fontSize: 14.sp, color: textColor),),
                  GestureDetector(
                    onTap: () => context.push('/login'),
                    child: Text(
                      'Login',
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
