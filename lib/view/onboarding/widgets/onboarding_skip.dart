import 'package:flutter/material.dart';
import '../controller/onboarding_controller.dart';


class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: kToolbarHeight,
      right: 24,
      child: TextButton(
        onPressed: () => OnBoardingController.instance.skipPage(),
        child: const Text("Skip", style: TextStyle(color: Colors.red),),
      ),
    );
  }
}