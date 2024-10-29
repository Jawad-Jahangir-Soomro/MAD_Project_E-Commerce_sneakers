import 'package:flutter/material.dart';
import '../controller/onboarding_controller.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return Positioned(
      right: 16,
      bottom: kBottomNavigationBarHeight,
      child: ElevatedButton(
        onPressed: () => OnBoardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(shape: const CircleBorder(), backgroundColor: Colors.red),
        child: const Icon(Icons.arrow_forward_ios_outlined, color: Colors.white,),
      ),
    );
  }
}
