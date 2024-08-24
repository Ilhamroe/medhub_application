import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:medhub_application/presentation/utils/color.dart';

class PaymentSummaryWidgets extends StatelessWidget {
  final double orderTotal;
  final double itemDiscount;
  final double couponDiscount;
  final bool shipping;
  final double shippingCost;
  final double total;

  const PaymentSummaryWidgets({
    super.key,
    required this.orderTotal,
    required this.itemDiscount,
    required this.couponDiscount,
    required this.shipping,
    required this.shippingCost,
    required this.total,
  });

  dynamic getShippingCost() {
    return shipping ? 'free' : shippingCost;
  }

  @override
  Widget build(BuildContext context) {
    final formatCurrency =
        NumberFormat.currency(locale: 'id_ID', symbol: 'Rp ', decimalDigits: 0);
        
    return Padding(
      padding: EdgeInsets.only(top: 8.0.r),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16.w),
            child: Text(
              'Payment Summary',
              style: TextStyle(
                fontFamily: 'Overpass-Bold',
                fontSize: 14.sp,
                color: primary,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 17.0.r),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Order Total',
                  style: TextStyle(
                    fontFamily: 'Overpass',
                    fontSize: 14.sp,
                    color: textColor,
                  ),
                ),
                Text(formatCurrency.format(orderTotal)),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 17.0.r),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Items Discount',
                  style: TextStyle(
                    fontFamily: 'Overpass',
                    fontSize: 14.sp,
                    color: textColor,
                  ),
                ),
                Text(formatCurrency.format(itemDiscount)),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 17.0.r),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Coupon Discount',
                  style: TextStyle(
                    fontFamily: 'Overpass',
                    fontSize: 14.sp,
                    color: textColor,
                  ),
                ),
                Text(formatCurrency.format(couponDiscount)),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 16.0.r),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Shipping',
                  style: TextStyle(
                    fontFamily: 'Overpass',
                    fontSize: 14.sp,
                    color: textColor,
                  ),
                ),
                Text(getShippingCost()),
              ],
            ),
          ),
          const Divider(
            color: dvdColor,
            thickness: 1,
            height: 1,
          ),
          Padding(
            padding: EdgeInsets.only(top: 16.0.r),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total',
                  style: TextStyle(
                    fontFamily: 'Overpass-Bold',
                    fontSize: 14.sp,
                    color: primary,
                  ),
                ),
                Text(formatCurrency.format(total)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
