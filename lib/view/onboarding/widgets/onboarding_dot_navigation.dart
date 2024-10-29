import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../controller/onboarding_controller.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final controller = OnBoardingController.instance;

    return Positioned(
      bottom: kBottomNavigationBarHeight + 25,
      left: 16,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        count: 3,
        effect: const ExpandingDotsEffect(activeDotColor: Colors.red, dotHeight: 6),
      ),
    );
  }
}