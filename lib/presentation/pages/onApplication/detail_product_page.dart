import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:medhub_application/presentation/utils/color.dart';
import 'package:medhub_application/presentation/widgets/general/add_product_card_widget.dart';
import 'package:medhub_application/presentation/widgets/general/button_widget.dart';
import 'package:medhub_application/presentation/widgets/general/detail_product_widget.dart';
import 'package:medhub_application/presentation/widgets/general/product_details_widget.dart';
import 'package:medhub_application/presentation/widgets/general/rating_review_widget.dart';
import 'package:medhub_application/presentation/widgets/onAppilcation/category/carousel_category_widget.dart';

class DetailProductPage extends StatefulWidget {
  const DetailProductPage({super.key});

  @override
  State<DetailProductPage> createState() => _DetailProductPageState();
}

class _DetailProductPageState extends State<DetailProductPage> {
  int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pureWhite,
      appBar: AppBar(
        surfaceTintColor: pureWhite,
        automaticallyImplyLeading: false,
        title: GestureDetector(
          onTap: () {
            context.push('/category');
          },
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10.0.w,
            ),
            child: Icon(
              Icons.arrow_back,
              size: 24.r,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 25.0.w,
            ),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    context.push('/notif');
                  },
                  child: SvgPicture.asset(
                    'assets/images/notip.svg',
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
                    color: primary,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 25.0.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sugar Free Gold Low Calories',
                style: TextStyle(
                  fontFamily: 'Overpass-ExtraBold',
                  fontSize: 22.sp,
                  color: primary,
                ),
              ),
              Text(
                'Etiam mollis metus non purus',
                style: TextStyle(
                  fontFamily: 'Overpass',
                  fontSize: 18.sp,
                  color: textColor,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.0.w),
                child: SizedBox(height: 150.h, child: const CarouselCategoryWidget()),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 20.0.w,
                ),
                child: const AddProductCardWidgets(),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 9.0.w),
                child: const Divider(
                  color: prflColor,
                  thickness: 1,
                  height: 1,
                ),
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = 0;
                      });
                    },
                    child: DetailProductWidgets(
                      price: 'Rp 56.000',
                      title: '500 pellets',
                      isSelected: selectedIndex ==
                          0,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0.r),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = 1;
                        });
                      },
                      child: DetailProductWidgets(
                        price: 'Rp 100.000',
                        title: '110 pellets',
                        isSelected: selectedIndex == 1,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = 2;
                      });
                    },
                    child: DetailProductWidgets(
                      price: 'Rp 160.000',
                      title: '500 pellets',
                      isSelected: selectedIndex ==
                          2,
                    ),
                  ),
                ],
              ),
              const ProductDetailsWidgets(),
              const RatingReviewWidget(),
              Padding(
                padding: EdgeInsets.only(top: 50.0.r, bottom: 20.r),
                child: ButtonWidgets(
                    text: 'GO TO CART',
                    image: '',
                    borderColor: primary,
                    buttonColor: primary,
                    colorText: pureWhite,
                    onPressed: () => context.push('/cart')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
