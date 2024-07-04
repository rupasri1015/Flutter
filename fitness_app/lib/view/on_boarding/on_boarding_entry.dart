import 'package:fitness_app/common/color_extension.dart';
// import 'package:fitness_app/common_widget/gradient_text.dart';
import 'package:fitness_app/common_widget/rectangular_button.dart';
import 'package:fitness_app/view/on_boarding/on_boarding_main.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnBoardingEntry extends StatefulWidget {
  const OnBoardingEntry({super.key});

  @override
  State<OnBoardingEntry> createState() => _OnBoardingEntryState();
}

class _OnBoardingEntryState extends State<OnBoardingEntry> {
  bool isChangeColor = false;

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: CustomColors.blackColor2,
      body: Container(
          width: media.width,
          decoration: BoxDecoration(
            gradient: isChangeColor
                ? LinearGradient(
                    colors: CustomColors.brandL,
                    begin: Alignment.bottomRight,
                    end: Alignment.bottomLeft)
                : null,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.baseline,
                children: [
                  //text 1
                  Text(
                    "Fitnest",
                    style: TextStyle(
                      color: CustomColors.blackColor1,
                      fontSize: 36,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  // x text
                  Text(
                    "X",
                    style: TextStyle(
                      color: isChangeColor
                          ? CustomColors.blackColor2
                          : CustomColors.LogoLinear,
                      fontSize: 36 + 15,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  // //
                  // GradientText(
                  //   text: "X",
                  //   gradient: LinearGradient(colors: [
                  //     CustomColors.secondaryColor3,
                  //     CustomColors.secondaryColor4,
                  //   ]),
                  //   style: const TextStyle(
                  //       fontSize: 36 + 15, fontWeight: FontWeight.w700),
                  // ),
                ],
              ),
              // text 3
              Text(
                "Everybody Can Train",
                style: TextStyle(
                    color: CustomColors.greyColor1,
                    fontSize: 18,
                    fontWeight: FontWeight.w400),
              ),
              const Spacer(),
              //rectangular box
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: RectangularButton(
                    title: "Get Started",
                    type: isChangeColor
                        ? RectangularButtonType.textGradient
                        : RectangularButtonType.bgGradient,
                    onPressed: () {
                      if (isChangeColor) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const OnBoardingMain()));
                      } else {
                        //change color
                        setState(() {
                          isChangeColor = true;
                        });
                      }
                    },
                  ),
                ),
              ),
              // const Spacer(),
            ],
          )),
    );
  }
}
