import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:sneakers_app/view/authentication_screens/login_screen.dart';
import 'package:sneakers_app/view/navigator.dart';

class OnBoardingController extends GetxController{
  static OnBoardingController get instance => Get.find();

  /// Variables

  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  /// Update Current Index when page Scroll

  void updatePageIndicator(index) => currentPageIndex.value = index;

  /// Jump to specific dot page selected
  void dotNavigationClick(index){
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  /// Update Current index and jump to next page
  void nextPage(){
    if(currentPageIndex.value == 2){
      Get.offAll(() => const LoginScreen());
    }
    else{
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  /// Update Current Index and jump to last page
  void skipPage(){
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}