import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medhub_application/presentation/utils/color.dart';
import 'package:medhub_application/presentation/widgets/general/search_widget.dart';
import 'package:medhub_application/presentation/widgets/onAppilcation/homepage/carousel_widget.dart';
import 'package:medhub_application/presentation/widgets/onAppilcation/homepage/category_widget.dart';
import 'package:medhub_application/presentation/widgets/onAppilcation/homepage/deals.widget.dart';
import 'package:medhub_application/presentation/widgets/onAppilcation/homepage/feature_widget.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final searchController = TextEditingController();
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 30.h),
          SearchWidgets(
            label: 'Search Medicine & Healthcare products',
            image: 'assets/images/search.svg',
            controller: searchController,
            borderColor: border,
            buttonColor: button,
            colorText: grey,
            onPressed: () {},
          ),
          const CategoryWidget(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0.w),
            child: SizedBox(height: 150.h, child: const CarouselWidget()),
          ),
          const DealsWidget(),
          const FeaturedWidget(),
        ],
      ),
    );
  }
}
