import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medhub_application/domain/model/onBoarding_items.dart';
import 'package:medhub_application/presentation/utils/color.dart';
import 'package:medhub_application/presentation/widgets/onBoading/On_Boarding_template.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int selectedIndex = 0;
  late PageController controller;

  @override
  void initState() {
    controller =
        PageController(initialPage: 0, keepPage: true, viewportFraction: 1);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pureWhite,
      body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: PageView.builder(
                itemCount: OnboardData.onBoardItemList.length,
                controller: controller,
                onPageChanged: (v) {
                  setState(() {
                    selectedIndex = v;
                  });
                },
                itemBuilder: (context, index) {
                  return OnBoardingContentTemplate(
                      item: OnboardData.onBoardItemList[index]);
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      context.go('/welcome');
                    },
                    child: Text(
                      "Skip",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontFamily: 'Overpass-Bold',
                            color: textColor, 
                          ),
                    ),
                  ),
                  Row(
                    children: List.generate(
                      OnboardData.onBoardItemList.length,
                      (index) => AnimatedContainer(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.ease,
                        height: 8,
                        width: selectedIndex == index ? 8 : 8,
                        margin: const EdgeInsets.only(right: 8),
                        decoration: BoxDecoration(
                            color: selectedIndex == index
                                ? green
                                : grey,
                            borderRadius: BorderRadius.circular(8)),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      if (selectedIndex <
                          OnboardData.onBoardItemList.length - 1) {
                        controller.animateToPage(selectedIndex + 1,
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.ease);
                      } else {
                        context.go('/welcome');
                      }
                    },
                    child: Text(
                      selectedIndex != OnboardData.onBoardItemList.length - 1
                          ? "Next"
                          : "Start",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontFamily: 'Overpass-Bold',
                            color: green,
                          ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
