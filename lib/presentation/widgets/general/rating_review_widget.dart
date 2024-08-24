import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medhub_application/presentation/utils/color.dart';

class RatingReviewWidget extends StatelessWidget {
  const RatingReviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 16.0.w),
          child: Text(
            'Rating and Reviews',
            style: TextStyle(
              fontFamily: 'Overpass-ExtraBold',
              fontSize: 16.sp,
              color: primary,
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          '4.4',
                          style: TextStyle(
                            fontFamily: 'Overpass-ExtraBold',
                            fontSize: 26.sp,
                            color: primary,
                          ),
                        ),
                        SizedBox(width: 10.w),
                        SvgPicture.asset('assets/images/Star 1.svg'),
                      ],
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      '923 Ratings\nand 257 Reviews',
                      style: TextStyle(
                        fontFamily: 'Overpass',
                        fontSize: 16.sp,
                        color: textColor,
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 1,
                  height: 90.h,
                  color: Colors.grey,
                  margin: EdgeInsets.symmetric(horizontal: 8.w),
                ),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      _buildRatingBar(5, 0.67, green, textColor),
                      _buildRatingBar(4, 0.20, green, textColor),
                      _buildRatingBar(3, 0.07, green, textColor),
                      _buildRatingBar(2, 0.00, green, textColor),
                      _buildRatingBar(1, 0.02, green, textColor),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Lorem Hoffman',
                      style: TextStyle(
                        fontFamily: 'Overpass-Bold',
                        fontSize: 14.sp,
                        color: textColor,
                      ),
                    ),
                    SizedBox(height: 4.h),
                    Row(
                      children: [
                        SvgPicture.asset('assets/images/Star 6.svg'),
                        Text(
                          ' 4.2',
                          style: TextStyle(
                            fontFamily: 'Overpass',
                            fontSize: 13.sp,
                            color: textColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                Text(
                  '05 August 2024',
                  style: TextStyle(
                    fontFamily: 'Overpass',
                    fontSize: 13.sp,
                    color: textColor,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0.w),
              child: Text(
                'Interdum et malesuada fames ac ante ipsum primis in faucibus. '
                'Morbi ut nisi odio. Nulla facilisi. Nunc risus massa, gravida id egestas.',
                style: TextStyle(
                  fontFamily: 'Overpass',
                  fontSize: 14.sp,
                  color: textColor,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}


Widget _buildRatingBar(
    int stars, double percentage, Color ratingBarColor, Color textColor) {
  return Row(
    children: [
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '$stars',
            style: TextStyle(
              fontFamily: 'Overpass',
              fontSize: 12.sp,
              color: textColor,
            ),
          ),
          SvgPicture.asset('assets/images/Star 6.svg'),
        ],
      ),
      SizedBox(width: 8.w),
      Stack(
        children: [
          Container(
            width: 100,
            height: 8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              color: ratingColor,
            ),
          ),
          Container(
            width: 100 * percentage,
            height: 8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              color: ratingBarColor,
            ),
          ),
        ],
      ),
      SizedBox(width: 8.w),
      Text(
        '${(percentage * 100).toInt()}%',
        style: TextStyle(
          fontFamily: 'Overpass',
          fontSize: 14.sp,
          color: textColor,
        ),
      ),
    ],
  );
}
