import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medhub_application/domain/model/onBoarding_items.dart';
import 'package:medhub_application/presentation/utils/color.dart';

class OnBoardingContentTemplate extends StatelessWidget {
  const OnBoardingContentTemplate({
    super.key,
    required this.item,
  });

  final OnBoardItems item;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          item.image,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(69, 30, 69, 20).r,
          child: Text(
            item.title,
            style: Theme.of(context)
                .textTheme
                .headlineLarge!
                .copyWith(fontFamily: 'Overpass-ExtraBold', fontSize: 24.sp, color: primary),
                textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60).r,
          child: Text(
            item.shortDescription,
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(fontFamily: 'Overpass', color: textColor,  fontSize: 16.sp),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
