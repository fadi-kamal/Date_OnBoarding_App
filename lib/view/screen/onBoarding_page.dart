import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:date_onboarding_app/controller/onbarding_controller.dart';
import 'package:date_onboarding_app/view/widget/custom_dot.dart';
import 'package:date_onboarding_app/view/widget/custom_page_view.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp);
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
              flex: 13,
              child: CustomPageView(),
            ),
            Expanded(
              flex: 1,
              child: CustomDot(),
            ),
          ],
        ),
      ),
    );
  }
}
