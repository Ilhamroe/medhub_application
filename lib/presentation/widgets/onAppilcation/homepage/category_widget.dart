import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:medhub_application/domain/model/homepage/category_model.dart';
import 'package:medhub_application/presentation/utils/color.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 30.0.w),
          child: Text(
            'Top Categories',
            style: TextStyle(
              fontFamily: 'Overpass',
              fontSize: 16.sp,
              color: primary,
            ),
          ),
        ),
        SizedBox(
          height: 70.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categoryModel.length,
            itemBuilder: (context, index) {
              final category = categoryModel[index];
              return GestureDetector(
                onTap: () => context.push('/category'),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 13.0.w),
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: category.color,
                          shape: BoxShape.circle,
                        ),
                        width: 48.0.w,
                        height: 48.0.h,
                        child: Padding(
                          padding: EdgeInsets.all(16.0.w),
                          child: SvgPicture.asset(
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
              );
            },
          ),
        ),
      ],
    );
  }
}
