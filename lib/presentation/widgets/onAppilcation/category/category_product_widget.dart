import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:medhub_application/domain/model/category/category_product_model.dart';
import 'package:medhub_application/presentation/utils/color.dart';

class CategoryProductWidget extends StatelessWidget {
  const CategoryProductWidget({super.key});

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: EdgeInsets.only(left:  8.0.r, right: 8.0.r, top: 16.0.r),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Diabetic Diet',
            style: TextStyle(
              fontFamily: 'Overpass',
              fontSize: 16.sp,
              color: primary,
            ),
          ),
          SizedBox(
            height: 180.h,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0.h),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categoryProductModel.length,
                itemBuilder: (context, index) {
                  final categoryProduct = categoryProductModel[index];
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0.w),
                        child: GestureDetector(
                          onTap: () =>  context.push(categoryProduct.route!),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(9.r)),
                              color: dealsColor,
                            ),
                            height: 150.h,
                            width: 100.w,
                            child: Column(
                              children: [
                                AspectRatio(
                                  aspectRatio: 1 / 1,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(9.r),
                                        topRight: Radius.circular(9.r),
                                      ),
                                      color: dealsColor,
                                      image: DecorationImage(
                                        image: AssetImage(categoryProduct.image),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: 14.0.r,
                                        left: 8.0.r,
                                        right: 8.0.r,
                                      ),
                                      child: Text(
                                        categoryProduct.title!,
                                        style: TextStyle(
                                          fontFamily: 'Overpass',
                                          fontSize: 16.sp,
                                          color: primary,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
