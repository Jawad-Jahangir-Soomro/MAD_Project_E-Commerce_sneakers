import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sneakers_app/view/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:sneakers_app/view/onboarding/widgets/onboarding_next_button.dart';
import 'package:sneakers_app/view/onboarding/widgets/onboarding_page.dart';
import 'package:sneakers_app/view/onboarding/widgets/onboarding_skip.dart';

import 'controller/onboarding_controller.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  static const String onBoardingImage1 = "assets/images/shoe1.png";
  static const String onBoardingImage2 = "assets/images/shoe2.png";
  static const String onBoardingImage3 = "assets/images/shoe3.png";


  @override
  Widget build(BuildContext context) {

    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Stack(
          children: [
            /// Horizontal Scrollable Pages
            PageView(
              controller: controller.pageController,
              onPageChanged: controller.updatePageIndicator,
              children: const [
                OnBoardingPage(
                  image: onBoardingImage1,
                  title: "Choose your product",
                  subtitle: "Welcome to a World of Limitless Choices - Your Perfect Product Awaits!",
                ),
                OnBoardingPage(
                  image: onBoardingImage2,
                  title: "Select Payment Method",
                  subtitle: "For Seamless Transactions, Choose Your Payment Path - Your Convenience, Our Priority!",
                ),
                OnBoardingPage(
                  image: onBoardingImage3,
                  title: "Deliver at your door step",
                  subtitle: "From Our Doorstep to Yours - Swift, Secure, and Contactless Delivery!",
                ),
              ],
            ),

            /// Skip button

            const OnBoardingSkip(),

            /// Dot Navigation SmoothPageIndicator

            const OnBoardingDotNavigation(),

            /// Circular Button

            const OnBoardingNextButton()
          ],
        ),
      ),
    );
  }
}