  import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sneakers_app/view/navigator.dart';
import 'package:sneakers_app/view/onboarding/onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Quicksand',
      ),
      title: 'Sneakers Shop App',
      home: const OnBoardingScreen(),
    );
  }
}
