import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:medhub_application/presentation/widgets/onAppilcation/homepage/carousel_widget.dart';
import 'package:medhub_application/presentation/utils/color.dart';
import 'package:medhub_application/presentation/widgets/general/search_widget.dart';
import 'package:medhub_application/presentation/widgets/onAppilcation/homepage/category_widget.dart';
import 'package:medhub_application/presentation/widgets/onAppilcation/homepage/deals.widget.dart';
import 'package:medhub_application/presentation/widgets/onAppilcation/homepage/feature_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final searchController = TextEditingController();
    return Stack(
      children: [
        Positioned(
          top: 0.r,
          left: 0,
          right: 0,
          child: SvgPicture.asset(
            'assets/images/Rectangle.svg',
            fit: BoxFit.cover,
            height: 185.h,
          ),
        ),
        Positioned(
          top: 70.r,
          left: 0.r,
          right: 150.r,
          bottom: 0.r,
          child: SvgPicture.asset(
            'assets/images/Ellipse.svg',
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0.w),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: Image.asset(
                'assets/images/profile2.png',
              ),
              actions: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        context.push('/notif');
                      },
                      child: SvgPicture.asset(
                        'assets/images/notif_icon.svg',
                        width: 24.w,
                        height: 24.h,
                      ),
                    ),
                    SizedBox(width: 20.w),
                    GestureDetector(
                      onTap: () {
                        context.push('/cart');
                      },
                      child: SvgPicture.asset(
                        'assets/images/cart_icon.svg',
                        width: 24.w,
                        height: 24.h,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10.h),
                  Text(
                    'Hi, Lorem',
                    style: TextStyle(
                      fontFamily: 'Overpass-Bold',
                      fontSize: 24.sp,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Welcome to MedHub',
                    style: TextStyle(
                      fontFamily: 'Overpass',
                      fontSize: 16.sp,
                      color: Colors.white,
                    ),
                  ),
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
            ),
          ),
        ),
      ],
    );
  }
}
