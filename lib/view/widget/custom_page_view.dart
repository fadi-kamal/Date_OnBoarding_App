import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:date_onboarding_app/controller/onbarding_controller.dart';
import 'package:date_onboarding_app/data/dataResources/static/static.dart';

class CustomPageView extends GetView<OnBoardingControllerImp> {
  const CustomPageView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (val) => controller.onPageChange(val),
      scrollDirection: Axis.vertical,
      itemCount: onBoardingList.length,
      itemBuilder: (context, i) {
        return SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(left: 25),
                height: 500,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50),
                        bottomLeft: Radius.circular(50)),
                    image: DecorationImage(
                        image: AssetImage(onBoardingList[i].image),
                        filterQuality: FilterQuality.medium,
                        colorFilter: ColorFilter.mode(
                            Colors.green.withOpacity(0.35),
                            BlendMode.hardLight),
                        fit: BoxFit.fill),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 20,
                          spreadRadius: 0.5,
                          color: Colors.black.withOpacity(0.5),
                          offset: Offset(-6, 5))
                    ]),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                onBoardingList[i].title,
                style: Theme.of(context).textTheme.headline1,
              ),
              SizedBox(
                  // height: 1,
                  ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Text(
                  onBoardingList[i].body,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                child: MaterialButton(
                  color: Colors.white,
                  onPressed: () {
                    controller.next();
                  },
                  padding: EdgeInsets.all(10),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Skip",
                        style: Theme.of(context).textTheme.button,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        );
      },
    );
  }
}
