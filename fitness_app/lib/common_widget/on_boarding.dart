import 'package:fitness_app/common/color_extension.dart';
import 'package:flutter/material.dart';

class OnBoarding extends StatelessWidget {
  final Map passingDataObject;
  const OnBoarding({super.key, required this.passingDataObject});

  @override
  Widget build(BuildContext context) {
    //media queries
    var media = MediaQuery.of(context).size;
    //sized box
    return SizedBox(
      width: media.width,
      height: media.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //code for adding image
          Image.asset(
            // "assets/images/onBoard1.png",
            passingDataObject["image"].toString(),
            width: media.width,
            fit: BoxFit.fitWidth,
          ),
          //gap
          SizedBox(
            height: media.width * 0.15,
          ),
          //code for adding heading
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              // "Track Your Goal",
              passingDataObject["title"].toString(),
              style: TextStyle(
                  color: CustomColors.blackColor1,
                  fontSize: 24,
                  fontWeight: FontWeight.w700),
            ),
          ),

          //code for adding text
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            child: Text(
              // "Don't worry if you have trouble determining your goals, We can help you determine your goals and track your goals",
              passingDataObject["subject"].toString(),

              style: TextStyle(color: CustomColors.greyColor1, fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}
