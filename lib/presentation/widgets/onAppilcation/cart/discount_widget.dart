import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medhub_application/presentation/utils/color.dart';

class DiscountWidgtes extends StatefulWidget {
  const DiscountWidgtes({super.key});

  @override
  State<DiscountWidgtes> createState() => _DiscountWidgtesState();
}

class _DiscountWidgtesState extends State<DiscountWidgtes> {
  bool _isVisible = true; 

  @override
  Widget build(BuildContext context) {
    if (!_isVisible) return SizedBox.shrink();

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: button,
        border: Border.all(
          color: sideColor,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment
            .spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0.w),
                child: SvgPicture.asset('assets/images/discount.svg'),
              ),
              SizedBox(width: 8.w),
              Text(
                '1 Coupon Applied',
                style: TextStyle(
                  fontFamily: 'Overpass',
                  fontSize: 14.sp,
                  color: green,
                ),
              ),
            ],
          ),
          IconButton(
            icon: const Icon(Icons.highlight_remove, color: grey),
            onPressed: () {
              setState(() {
                _isVisible = false;
              });
            },
          ),
        ],
      ),
    );
  }
}
