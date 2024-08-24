import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:medhub_application/presentation/utils/color.dart';
import 'package:medhub_application/presentation/widgets/general/button_widget.dart';

class TemplateSuccessPage extends StatelessWidget {
  final String label;
  final String description;
  final String descButton;
  const TemplateSuccessPage({super.key, required this.label, required this.description, required this.descButton});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: EdgeInsets.only(left: 21.0.r, right: 43.0.r),
          child: Icon(
            Icons.arrow_back,
            size: 24.h,
          ),
        ),
      ),
      body: Column(
        children: [
          const Spacer(),
          SvgPicture.asset('assets/images/success.svg'),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 60.w, vertical: 20.w),
            child: Text(
              label,
              style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                  fontFamily: 'Overpass-ExtraBold',
                  fontSize: 24.sp,
                  color: primary),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 60.w),
            child: Text(
              description,
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  fontFamily: 'Overpass', color: textColor, fontSize: 16.sp),
              textAlign: TextAlign.center,
            ),
          ),
          const Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 20.h),
            child: ButtonWidgets(
              text: descButton,
              image: '',
              borderColor: primary,
              buttonColor: primary,
              colorText: pureWhite,
              onPressed: () => context.go('/navbar'),
            ),
          ),
        ],
      ),
    );
  }
}
