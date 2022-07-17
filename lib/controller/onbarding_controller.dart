import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:date_onboarding_app/data/dataResources/static/static.dart';

abstract class OnBoardingController extends GetxController {
  next();
  onPageChange(int val);
}

class OnBoardingControllerImp extends OnBoardingController {
  PageController? pageController;

  int currentPage = 0;
  @override
  next() {
    currentPage++;
    if (currentPage >= onBoardingList.length) {
      Get.snackbar(
        titleText: Container(
            margin: EdgeInsets.only(top: 35),
            child: Text(
              "The End",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 50),
            )),
        forwardAnimationCurve: Curves.easeInOutBack,
        reverseAnimationCurve: Curves.easeInOutBack,
        duration: Duration(seconds: 2),
        margin: EdgeInsets.symmetric(horizontal: 100),
        "",
        "",
      );
    } else {
      pageController!.animateToPage(currentPage,
          duration: Duration(milliseconds: 500), curve: Curves.easeInOutBack);
    }
  }

  @override
  onPageChange(int val) {
    currentPage = val;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
