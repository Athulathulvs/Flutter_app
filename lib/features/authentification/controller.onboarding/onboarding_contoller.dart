
import 'package:ecommerce_app/features/authentification/screens/login/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController{
  static OnBoardingController get instance => Get.find();

  // variables
  final pageController =PageController();
  Rx<int> currentpageIndex =0.obs;

  // Update  Current index when page scroll
  void updatePageIndicator(index) => currentpageIndex.value = index;

  // jump to the specific dot selected page
  void dotNavigationClick(index) {
    currentpageIndex.value = index;
    pageController.jumpTo(index);
  }

  // update Current index and jump to next page
  void nextPage(){
    if(currentpageIndex.value == 2){
      Get.off(const LoginScreen());
    } else{
      int page = currentpageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  // update current index and jump to the last page
  void skipPage(){
    currentpageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}