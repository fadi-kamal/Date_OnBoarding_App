import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:date_onboarding_app/view/screen/onBoarding_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
          fontFamily: "Dancing_Script",
          scaffoldBackgroundColor: Colors.amber,
          textTheme: TextTheme(
              headline1: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
              bodyText1: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              button: TextStyle(fontSize: 30))),
      debugShowCheckedModeBanner: false,
      home: OnBoarding(),
    );
  }
}
