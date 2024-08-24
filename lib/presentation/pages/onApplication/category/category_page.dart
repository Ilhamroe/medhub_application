import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:medhub_application/presentation/utils/color.dart';
import 'package:medhub_application/presentation/widgets/general/image_widget.dart';
import 'package:medhub_application/presentation/widgets/onAppilcation/all_product_widget.dart';
import 'package:medhub_application/presentation/widgets/onAppilcation/category/category_product_widget.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: screenPage,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0.r),
          child: Row(
            children: [
              GestureDetector(
                  onTap: () {
                    context.push('/navbar');
                  },
                child: const Icon(Icons.arrow_back),),
              Padding(
                padding: EdgeInsets.only(left: 16.0.r),
                child: Text(
                  'Diabetes Care',
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
          child: const Column(
            children: [
              ImageWidgets(),
              CategoryProductWidget(),
              AllProductWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
