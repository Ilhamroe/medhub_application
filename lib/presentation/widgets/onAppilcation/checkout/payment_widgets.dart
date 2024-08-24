import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medhub_application/domain/model/cart/payment_model.dart';
import 'package:medhub_application/presentation/utils/color.dart';

class PaymentWidgets extends StatefulWidget {
  const PaymentWidgets({super.key});

  @override
  State<PaymentWidgets> createState() => _PaymentWidgetsState();
}

class _PaymentWidgetsState extends State<PaymentWidgets> {
  int selectedPaymentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 4.0.r, bottom: 21.r),
      child: Column(
        crossAxisAlignment:  CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 13.0.w),
            child: Text(
              'Payment Method',
              style: TextStyle(
                fontFamily: 'Overpass-Bold',
                fontSize: 16.sp,
                color: primary,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 8.0.h, horizontal: 16.0.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6.0.r),
              color: button,
              border: Border.all(
                color: sideColor,
              ),
            ),
            child: Column(
              children: List.generate(paymentModel.length, (index) {
                final payment = paymentModel[index];
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6.0.r),
                              color: button,
                              border: Border.all(
                                color: sideColor,
                              ),
                            ),
                            child: Image.asset(
                              payment.image,
                              width: 40.w,
                              height: 40.h,
                            ),
                          ),
                          SizedBox(width: 16.w),
                          Text(
                            payment.label,
                            style: TextStyle(
                              fontFamily: 'Overpass-Regular',
                              fontSize: 14.sp,
                              color: primary,
                            ),
                          ),
                        ],
                      ),
                      Radio(
                        value: index,
                        groupValue: selectedPaymentIndex,
                        activeColor: Colors.teal,
                        onChanged: (value) {
                          setState(() {
                            selectedPaymentIndex = value!;
                          });
                        },
                      ),
                    ],
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}