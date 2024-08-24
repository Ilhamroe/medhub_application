import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medhub_application/presentation/pages/onApplication/add_page.dart';
import 'package:medhub_application/presentation/pages/onApplication/cart_page.dart';
import 'package:medhub_application/presentation/pages/onApplication/home_page.dart';
import 'package:medhub_application/presentation/pages/onApplication/notif_page.dart';
import 'package:medhub_application/presentation/pages/onApplication/profile_page.dart';
import 'package:medhub_application/presentation/utils/color.dart';
import 'package:medhub_application/presentation/widgets/general/double_tap_close_widget.dart';

class NavbarBottom extends StatefulWidget {
  const NavbarBottom({super.key});

  @override
  State<NavbarBottom> createState() => _NavbarBottomState();
}

class _NavbarBottomState extends State<NavbarBottom> {
  int currentTab = 0;

  final List<Widget> screens = [
    const HomePage(),
    const NotifPage(),
    const AddPage(),
    const CartPage(),
    const ProfilePage(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const HomePage();

  @override
  Widget build(BuildContext context) {
    return DoubleBackToCloseApp(
      snackBarMessage: 'Tekan sekali lagi untuk keluar',
      child: Scaffold(
        body: PageStorage(
          bucket: bucket,
          child: currentScreen,
        ),
        bottomNavigationBar: Container(
          height: 64.h,
          child: BottomAppBar(
            elevation: 3.0.r,
            color: pureWhite,
            surfaceTintColor: Colors.transparent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MaterialButton(
                    minWidth: 10.r,
                    highlightColor: pureWhite,
                    focusColor: pureWhite,
                    disabledColor: pureWhite,
                    splashColor: pureWhite,
                    hoverColor: pureWhite,
                    onPressed: () {
                      setState(() {
                        currentScreen = const HomePage();
                        currentTab = 0;
                      });
                    },
                    child: SvgPicture.asset(
                      'assets/images/home_icon.svg',
                      color: currentTab == 0 ? green : textColor,
                    )),
                MaterialButton(
                    minWidth: 10.r,
                    highlightColor: pureWhite,
                    focusColor: pureWhite,
                    disabledColor: pureWhite,
                    splashColor: pureWhite,
                    hoverColor: pureWhite,
                    onPressed: () {
                      setState(() {
                        currentScreen = const NotifPage();
                        currentTab = 1;
                      });
                    },
                    child: SvgPicture.asset(
                      'assets/images/notip.svg',
                      color: currentTab == 1 ? green : textColor,
                    ),
                  ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5.r)),
                  color: primary,
                  ),
                  child: MaterialButton(
                      minWidth: 10.r,
                      highlightColor: primary,
                      focusColor: primary,
                      disabledColor: primary,
                      splashColor: primary,
                      hoverColor: primary,
                      onPressed: () {
                        setState(() {
                          currentScreen = const AddPage();
                          currentTab = 2;
                        });
                      },
                      child: SvgPicture.asset(
                        'assets/images/plus_icon.svg',
                        color: currentTab == 2 ? green : pureWhite,
                      )),
                ),
                MaterialButton(
                    minWidth: 10.r,
                    highlightColor: pureWhite,
                    focusColor: pureWhite,

                    disabledColor: pureWhite,
                    splashColor: pureWhite,
                    hoverColor: pureWhite,
                    onPressed: () {
                      setState(() {
                        currentScreen = const CartPage();
                        currentTab = 3;
                      });
                    },
                    child: SvgPicture.asset(
                      'assets/images/cart_icon.svg',
                      color: currentTab == 3 ? green : textColor,
                    )),
                MaterialButton(
                    minWidth: 10.r,
                    highlightColor: pureWhite,
                    focusColor: pureWhite,
                    disabledColor: pureWhite,
                    splashColor: pureWhite,
                    hoverColor: pureWhite,
                    onPressed: () {
                      setState(() {
                        currentScreen = const ProfilePage();
                        currentTab = 4;
                      });
                    },
                    child: SvgPicture.asset(
                      'assets/images/profile_icon.svg',
                      color: currentTab == 4 ? green : primary,
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
