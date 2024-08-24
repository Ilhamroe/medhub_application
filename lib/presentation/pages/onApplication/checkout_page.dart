import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:medhub_application/presentation/utils/color.dart';
import 'package:medhub_application/presentation/widgets/general/button_widget.dart';
import 'package:medhub_application/presentation/widgets/onAppilcation/checkout/address_widgets.dart';
import 'package:medhub_application/presentation/widgets/onAppilcation/checkout/payment_widgets.dart';
import 'package:medhub_application/presentation/widgets/onAppilcation/checkout/text_items_widget.dart';

class CheckOutPage extends StatelessWidget {
  const CheckOutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final label = Uri.encodeComponent("Thank you");
    final description = Uri.encodeComponent(
        "Your Order will be delivered with invoice #INV20240817. You can track the delivery in the order section.");
    final descButton = Uri.encodeComponent("Continue Order");
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
                    context.push('/cart');
                  },
                child: const Icon(Icons.arrow_back,),),
              Padding(
                padding: EdgeInsets.only(left: 10.0.r),
                child: Text(
                  'Your CheckOut',
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TextItemsWidgets(),
              const AddressWidgets(),
              const PaymentWidgets(),
              Padding(
                padding: EdgeInsets.only(top: 40.0.r, bottom: 20.r),
                child: ButtonWidgets(
                  text: 'Pay Now @ Rp 185.000',
                  image: '',
                  borderColor: primary,
                  buttonColor: primary,
                  colorText: pureWhite,
                  onPressed: () => context
                      .push('/successpage/$label/$description/$descButton'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
