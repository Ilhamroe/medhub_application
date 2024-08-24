import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:medhub_application/presentation/utils/color.dart';
import 'package:medhub_application/presentation/widgets/general/button_widget.dart';
import 'package:medhub_application/presentation/widgets/onAppilcation/cart/cart_product_widget.dart';
import 'package:medhub_application/presentation/widgets/onAppilcation/cart/discount_widget.dart';
import 'package:medhub_application/presentation/widgets/onAppilcation/cart/payment_summary_widget.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pureWhite,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        surfaceTintColor: pureWhite,
        elevation: 0,
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.0.w),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  context.push('/detailproduct');
                },
                child: const Icon(Icons.arrow_back, color: Colors.black,),),
              Padding(
                padding: EdgeInsets.only(left: 10.0.r),
                child: Text(
                  'Your Cart',
                  style: TextStyle(
                    fontFamily: 'Overpass-Bold',
                    fontSize: 16.sp,
                    color: primary,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0.w),
          child: Column(
            children: [
              const CartProductWidgets(),
              const DiscountWidgtes(),
              const PaymentSummaryWidgets(
                orderTotal: 228800,
                itemDiscount: 28800,
                couponDiscount: 15800,
                shipping: true,
                shippingCost: 20000,
                total: 185000,
              ),
              // const Spacer(),
              Padding(
                padding: EdgeInsets.only(top: 80.0.r, bottom: 20.r),
                child: ButtonWidgets(text: 'Place Order @ Rp 185.000', image: '', borderColor: primary, buttonColor: primary, colorText: pureWhite, onPressed: () => context.push('/co')),
              ),
            ],
          ),
      ),
      ),
    );
  }
}
