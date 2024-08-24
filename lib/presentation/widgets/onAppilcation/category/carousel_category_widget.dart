import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medhub_application/domain/model/category/category_product_model.dart';
import 'package:medhub_application/presentation/utils/color.dart';
import 'package:medhub_application/presentation/widgets/onAppilcation/category/carousel_category_template.dart';

class CarouselCategoryWidget extends StatefulWidget {
  const CarouselCategoryWidget({super.key});

  @override
  State<CarouselCategoryWidget> createState() => _CarouselCategoryWidgetState();
}

class _CarouselCategoryWidgetState extends State<CarouselCategoryWidget> {
  int selectedIndex = 0;
  late PageController controller;
  Timer? _timer;

  void initState() {
    controller =
        PageController(initialPage: 0, keepPage: true, viewportFraction: 1);

    _timer = Timer.periodic(Duration(seconds: 3), (Timer timer) {
      if (selectedIndex < CategoryProductList.categoryProductList.length - 1) {
        selectedIndex++;
      } else {
        selectedIndex = 0;
      }
      controller.animateToPage(
        selectedIndex,
        duration: Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    });

    super.initState();
  }

  @override
  void dispose() {
    _timer?.cancel();
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 130.h,
          child: PageView.builder(
            itemCount: CategoryProductList.categoryProductList.length,
            controller: controller,
            onPageChanged: (v) {
              setState(() {
                selectedIndex = v;
              });
            },
            itemBuilder: (context, index) {
              return CarouselProductTemplate(
                item: CategoryProductList.categoryProductList[index],
              );
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 8.0.r),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              CategoryProductList.categoryProductList.length,
              (index) => AnimatedContainer(
                duration: const Duration(milliseconds: 500),
                curve: Curves.ease,
                height: 8,
                width: selectedIndex == index ? 8 : 8,
                margin: const EdgeInsets.symmetric(horizontal: 4),
                decoration: BoxDecoration(
                  color: selectedIndex == index ? green : grey,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
