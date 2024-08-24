import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medhub_application/presentation/utils/color.dart';
import 'package:medhub_application/presentation/widgets/onAppilcation/profile/list_profile.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pureWhite,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0.r),
          child: Text(
            'My Profile',
            style: TextStyle(
              fontFamily: 'Overpass',
              fontSize: 16.sp,
              color: primary,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 23.0.r),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset('assets/images/profile1.png'),
                Padding(
                  padding: EdgeInsets.only(left: 16.0.r),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hi, Lorem Ipsum',
                        style: TextStyle(
                          fontFamily: 'Overpass',
                          fontSize: 20.sp,
                          color: primary,
                        ),
                      ),
                      Text(
                        'Welcome to MedHub',
                        style: TextStyle(
                          fontFamily: 'Overpass',
                          fontSize: 14.sp,
                          color: textColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h), // Tambahkan sedikit jarak sebelum list
            Expanded(
              child:
                  ListProfileWidgets(), // Perluas untuk mengisi ruang yang tersedia
            ),
          ],
        ),
      ),
    );
  }
}
