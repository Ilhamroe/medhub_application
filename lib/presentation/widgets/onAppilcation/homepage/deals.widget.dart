import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:medhub_application/domain/model/homepage/deals_model.dart';
import 'package:medhub_application/presentation/utils/color.dart';
import 'package:intl/intl.dart';

class DealsWidget extends StatelessWidget {
  const DealsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final formatCurrency =
        NumberFormat.currency(locale: 'id_ID', symbol: 'Rp ', decimalDigits: 0);

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Deals of the Day',
              style: TextStyle(
                fontFamily: 'Overpass',
                fontSize: 16.sp,
                color: primary,
              ),
            ),
            GestureDetector(
              onTap: () => context.push('/category'),
              child: Text(
                'More',
                style: TextStyle(
                  fontFamily: 'Overpass',
                  fontSize: 14.sp,
                  color: green,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 220.h,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0.h),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: dealsModel.length,
              itemBuilder: (context, index) {
                final deals = dealsModel[index];
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 17.0.w),
                      child: GestureDetector(
                        onTap: () =>  context.push(deals.route!),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(9.r),
                              bottomRight: Radius.circular(9.r),
                            ),
                            color: pureWhite,
                          ),
                          height: 200.h,
                          width: 180.w,
                          child: Column(
                            children: [
                              AspectRatio(
                                aspectRatio: 16 / 9,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(9.r),
                                      topRight: Radius.circular(9.r),
                                    ),
                                    color: dealsColor,
                                  ),
                                  child: Image.asset(
                                    deals.image,
                                  ),
                                  
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: 14.0.r, left: 8.0.r, right: 8.0.r),
                                    child: Text(
                                      deals.title,
                                      style: TextStyle(
                                        fontFamily: 'Overpass',
                                        fontSize: 16.sp,
                                        color: primary,
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 8.0.r),
                                        child: Text(
                                          formatCurrency.format(deals.price),
                                          style: TextStyle(
                                            fontFamily: 'Overpass',
                                            fontSize: 16.sp,
                                            color: primary,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(20.r),
                                            bottomLeft: Radius.circular(20.r),
                                          ),
                                          color: green,
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(8.0.r),
                                          child: Row(
                                            children: [
                                              const Icon(
                                                Icons.star,
                                                color: pureWhite,
                                              ),
                                              SizedBox(width: 4.w),
                                              Text(
                                                deals.rating.toStringAsFixed(1),
                                                style: TextStyle(
                                                  fontFamily: 'Overpass',
                                                  fontSize: 14.sp,
                                                  color: pureWhite,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
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
    );
  }
}
