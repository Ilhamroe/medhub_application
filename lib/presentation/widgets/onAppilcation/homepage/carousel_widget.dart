import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medhub_application/domain/model/homepage/carousel_model.dart';
import 'package:medhub_application/presentation/utils/color.dart';
import 'package:medhub_application/presentation/widgets/onAppilcation/homepage/carousel_template.dart';

import 'dart:async';

class CarouselWidget extends StatefulWidget {
  const CarouselWidget({super.key});

  @override
  State<CarouselWidget> createState() => _CarouselWidgetState();
}

class _CarouselWidgetState extends State<CarouselWidget> {
  int selectedIndex = 0;
  late PageController controller;
  Timer? _timer; 

  @override
  void initState() {
    controller =
        PageController(initialPage: 0, keepPage: true, viewportFraction: 1);

    _timer = Timer.periodic(Duration(seconds: 3), (Timer timer) {
      if (selectedIndex < CarouselList.carouselItemList.length - 1) {
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
    return Container(
      height: 180.h,
      child: Stack(
        children: [
          PageView.builder(
            itemCount: CarouselList.carouselItemList.length,
            controller: controller,
            onPageChanged: (v) {
              setState(() {
                selectedIndex = v;
              });
            },
            itemBuilder: (context, index) {
              return CarouselTemplate(
                  item: CarouselList.carouselItemList[index]);
            },
          ),
          Positioned(
            bottom: 10.r,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                CarouselList.carouselItemList.length,
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
      ),
    );
  }
}
