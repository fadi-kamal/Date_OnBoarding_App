import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:date_onboarding_app/controller/onbarding_controller.dart';
import 'package:date_onboarding_app/data/dataResources/static/static.dart';

class CustomDot extends GetView<OnBoardingControllerImp> {
  const CustomDot({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate(
            onBoardingList.length,
            (i) => GetBuilder<OnBoardingControllerImp>(
                  init: OnBoardingControllerImp(),
                  builder: (controller) => AnimatedContainer(
                    margin: EdgeInsets.all(10),
                    duration: Duration(milliseconds: 500),
                    height: controller.currentPage == i ? 40 : 8,
                    width: 8,
                    decoration: BoxDecoration(
                        color: controller.currentPage == i
                            ? Colors.white
                            : Colors.black,
                        borderRadius: BorderRadius.circular(50)),
                  ),
                )),
      ],
    );
  }
}
