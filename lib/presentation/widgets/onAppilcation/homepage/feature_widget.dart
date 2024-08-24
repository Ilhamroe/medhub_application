import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:medhub_application/domain/model/homepage/featured_model.dart';
import 'package:medhub_application/presentation/utils/color.dart';

class FeaturedWidget extends StatelessWidget {
  const FeaturedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 24.0.r, bottom: 16.r),
          child: Text(
            'Featured Brands',
            style: TextStyle(
              fontFamily: 'Overpass',
              fontSize: 16.sp,
              color: primary,
            ),
          ),
        ),
        SizedBox(
          height: 110.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: featuredModel.length,
            itemBuilder: (context, index) {
              final category = featuredModel[index];
              return Padding(
                padding: EdgeInsets.only(bottom: 13.0.r),
                child: GestureDetector(
                  onTap: () => context.push(category.route!),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.0.w),
                        child: Container(
                          decoration: BoxDecoration(
                            color: category.color,
                            shape: BoxShape.circle,
                          ),
                          width: 80.0.w,
                          height: 80.0.h,
                          child: Padding(
                            padding: EdgeInsets.all(16.0.w),
                            child: Image.asset(
                              category.image,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        category.text,
                        style: TextStyle(
                          fontSize: 11.sp,
                          color: textColor,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
