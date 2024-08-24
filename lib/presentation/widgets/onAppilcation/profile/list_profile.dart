import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:medhub_application/domain/model/profile/list_profile_model.dart';
import 'package:medhub_application/presentation/utils/color.dart';

class ListProfileWidgets extends StatelessWidget {
  const ListProfileWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listProfileModel.length,
      itemBuilder: (context, index) {
        final listProfile = listProfileModel[index];
        return Column(
          children: [
            ListTile(
              leading: SvgPicture.asset(listProfile.image),
              title: Text(
                listProfile.title,
                style: TextStyle(
                  fontFamily: 'Overpass',
                  fontSize: 16.sp,
                  color: titlePrflColor,
                ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 12.r,
              ),
              onTap: () => context.push(listProfile.route),
            ),
            if (index < listProfileModel.length - 1)
              const Divider(
                color: prflColor,
                thickness: 1,
                height: 1,
              ),
          ],
        );
      },
    );
  }
}
