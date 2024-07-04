import 'package:fitness_app/common/color_extension.dart';
// import 'package:fitness_app/view/login/profile.dart';
// import 'package:fitness_app/view/login/signup_main.dart';
// import 'package:fitness_app/view/on_boarding/on_boarding_Main.dart';
import 'package:fitness_app/view/on_boarding/on_boarding_entry.dart';
import 'package:flutter/material.dart';
// import 'package:fitness_app/view/on_boarding/on_boarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FinestX',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: CustomColors.brandColor1, fontFamily: "Poppins"),
      // home: const OnBoardingMain(),
      home: const OnBoardingEntry(),
      // home: const Signup(),
      // home: cont ProfileView(),
    );
  }
}
