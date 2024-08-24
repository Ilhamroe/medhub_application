import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medhub_application/presentation/utils/color.dart';

class ImageWidgets extends StatelessWidget {
  const ImageWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.r),
            child: Image.asset(
              'assets/images/save_extra_logo.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          left: 0.r,
          top: 20.r,
          child: Padding(
            padding:
                EdgeInsets.only(top: 0.r, left: 24.r, right: 24.r, bottom: 0.r),
            child: SizedBox(
              width: 200.r,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 50.0.r),
                    child: Text(
                      "Save extra on every order",
                      style: TextStyle(
                        fontFamily: 'Overpass-Bold',
                        fontSize: 20.sp,
                        color: green,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(
                    height: 8.0.r,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 50.0.r),
                    child: Text(
                      "Etiam mollis metus non purus faucibus.",
                      style: TextStyle(
                        fontFamily: 'Overpass',
                        fontSize: 12.sp,
                        color: descColor,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}