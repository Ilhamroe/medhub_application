import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:medhub_application/domain/model/category/all_product_model.dart';
import 'package:medhub_application/presentation/utils/color.dart';
import 'package:intl/intl.dart';
import 'package:medhub_application/presentation/widgets/general/discount_clip_widget.dart';

class AllProductWidget extends StatelessWidget {
  const AllProductWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final formatCurrency =
        NumberFormat.currency(locale: 'id_ID', symbol: 'Rp ', decimalDigits: 0);

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0.r),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 8.0.r),
            child: Text(
              'All Products',
              style: TextStyle(
                fontFamily: 'Overpass',
                fontSize: 16.sp,
                color: primary,
              ),
            ),
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: allProductModel.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 14.w,
              mainAxisSpacing: 17.h,
              childAspectRatio: 0.75,
            ),
            itemBuilder: (context, index) {
              final allProduct = allProductModel[index];
              return GestureDetector(
                onTap: () => context.push(allProduct.route),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9.r),
                    color: pureWhite,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(9.r),
                              topRight: Radius.circular(9.r),
                            ),
                            child: Image.asset(
                              allProduct.image,
                              height: 90.h,
                              width: double.infinity,
                            ),
                          ),
                          if (allProduct.discount != null)
                            Positioned(
                              top: 0,
                              left: 0,
                              child: Stack(
                                children: [
                                  Container(
                                    width: 50.0.w,
                                    height: 50.0.h,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(9.r),
                                    ),
                                    child: ClipPath(
                                      clipper: DiscountClipper(radius: 9.0),
                                      child: Container(
                                        color: allProduct.discount == 'SALE'
                                            ? saleColor
                                            : promoColor,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 40.0.w,
                                    height: 40.0.h,
                                    alignment: Alignment.center,
                                    child: Transform.rotate(
                                      angle: -0.785398,
                                      child: Text(
                                        allProduct.discount!,
                                        style: TextStyle(
                                          fontFamily: 'Overpass',
                                          fontSize: 7.0.sp,
                                          color: pureWhite,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.r),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 8.0.r),
                              child: Text(
                                allProduct.title,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontFamily: 'Overpass',
                                  fontSize: 13.sp,
                                  color: primary,
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  formatCurrency.format(allProduct.price),
                                  style: TextStyle(
                                    fontFamily: 'Overpass',
                                    fontSize: 14.sp,
                                    color: primary,
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20.r),
                                    ),
                                    color: green,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 8.0.r, vertical: 4.0.r),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: pureWhite,
                                          size: 12.r,
                                        ),
                                        SizedBox(width: 4.w),
                                        Text(
                                          allProduct.rating.toStringAsFixed(1),
                                          style: TextStyle(
                                            fontFamily: 'Overpass',
                                            fontSize: 12.sp,
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
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
