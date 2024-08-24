import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medhub_application/domain/model/checkout/address_model.dart';
import 'package:medhub_application/presentation/utils/color.dart';

class AddressWidgets extends StatefulWidget {
  const AddressWidgets({super.key});

  @override
  State<AddressWidgets> createState() => _AddressWidgetsState();
}

class _AddressWidgetsState extends State<AddressWidgets> {
  
  int selectedAddressIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 13.0.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 13.0.w),
            child: Text(
              'Delivery Address',
              style: TextStyle(
                fontFamily: 'Overpass-Bold',
                fontSize: 16.sp,
                color: primary,
              ),
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: addressModel.length,
            itemBuilder: (context, index) {
              final address = addressModel[index];
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 4.0.h),
                child: Container(
                  padding: EdgeInsets.all(16.0.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.0.r),
                    color: button,
                    border: Border.all(
                      color: selectedAddressIndex == index ? green : sideColor,
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Radio(
                        value: index,
                        groupValue: selectedAddressIndex,
                        activeColor: green,
                        onChanged: (value) {
                          setState(() {
                            selectedAddressIndex = value!;
                          });
                        },
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              address.label,
                              style: TextStyle(
                                fontFamily: 'Overpass-Bold',
                                fontSize: 14.sp,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(height: 4.h),
                            Text(
                              address.number,
                              style: TextStyle(
                                fontSize: 13.sp,
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(height: 4.h),
                            Text(
                              address.address,
                              style: TextStyle(
                                fontSize: 13.sp,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: SvgPicture.asset('assets/images/edit.svg'),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 4.0.h),
            child: Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: () {},
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.add, color: green),
                    SizedBox(width: 8.0.w),
                    Text(
                      'Add Address',
                      style: TextStyle(
                        fontFamily: 'Sofia-Pro',
                        fontSize: 14.sp,
                        color: green,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
