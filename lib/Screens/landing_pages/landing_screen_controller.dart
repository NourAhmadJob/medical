// ignore_for_file: unrelated_type_equality_checks

import 'package:get/get.dart';
import 'package:flutter/material.dart';

class  LandingScreenController extends GetxController{

  @override
  void onInit() async {
    onChange;
    super.onInit();
  }

  Rx<PageController> pageController =  PageController().obs;

  RxInt currentIndex = 1.obs;

  // updatePage() {
  //   if(pageController.value == 0) {
  //     pageString.value = "1";
  //     update();
  //   }if(pageController.value == 1) {
  //     pageString.value = "2";
  //     update();
  //   }
  // }

  onChange(int index) {
    // setState(() {
      currentIndex.value = index + 1;
      update();
    // });
  }


}