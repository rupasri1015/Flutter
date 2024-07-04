import 'package:fitness_app/common/color_extension.dart';
import 'package:fitness_app/common_widget/on_boarding.dart';
import 'package:fitness_app/view/login/register.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';

class OnBoardingMain extends StatefulWidget {
  const OnBoardingMain({super.key});

  @override
  State<OnBoardingMain> createState() => _OnBoardingMain();
}

class _OnBoardingMain extends State<OnBoardingMain> {
  // int selectedPage = 1;
  int selectedPage = 0;
  PageController controller = PageController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.addListener(
      () {
        selectedPage = controller.page?.round() ?? 0;
      },
    );
  }

  //passing data to list
  List pageData = [
    {
      "image": "assets/images/onBoard1.png",
      "title": "Track Your Goal",
      "subject":
          "Don't worry if you have trouble determining your goals, We can help you determine your goals and track your goals",
    },
    {
      "image": "assets/images/onBoard2.png",
      "title": "Get Burn",
      "subject":
          "Let’s keep burning, to achive yours goals, it hurts only temporarily, if you give up now you will be in pain forever",
    },
    {
      "image": "assets/images/onBoard3.png",
      "title": "Eat Well",
      "subject":
          "Let's start a healthy lifestyle with us, we can determine your diet every day. healthy eating is fun",
    },
    {
      "image": "assets/images/onBoard4.png",
      "title": "Improve Sleep Quality",
      "subject":
          "Improve the quality of your sleep with us, good quality sleep can bring a good mood in the morning",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.blackColor2,
      body: Stack(
        alignment: Alignment.bottomRight,
        //children
        children: [
          //pageviewbuilder
          PageView.builder(
              onPageChanged: (value) {
                setState(() {
                  selectedPage = value;
                });
              },
              controller: controller,
              itemCount: pageData.length,
              itemBuilder: (context, index) {
                var passingDataObject = pageData[index] as Map? ?? {};
                return OnBoarding(passingDataObject: passingDataObject);
              } //itemBuilder
              ),

          SizedBox(
            width: 120,
            height: 120,
            child: Stack(
              //align center
              alignment: Alignment.center,
              children: [
                SizedBox(
                  width: 75,
                  height: 75,
                  child: CircularProgressIndicator(
                      // value: selectedPage / 3,
                      value: (selectedPage + 1) / 4,
                      color: CustomColors.brandColor1,
                      strokeWidth: 2),
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
                  width: 60,
                  height: 60,
                  // circle for next button >
                  decoration: BoxDecoration(
                    color: CustomColors.brandColor1,
                    borderRadius: BorderRadius.circular(35),
                  ),
                  // navigation icon >
                  child: IconButton(
                    icon: Icon(
                      Icons.navigate_next,
                      color: CustomColors.blackColor2,
                    ),
                    // adding round increase property to button
                    onPressed: () {
                      if (selectedPage < 3) {
                        selectedPage = selectedPage + 1;
                        controller.animateToPage(selectedPage,
                            duration: const Duration(microseconds: 300),
                            curve: Curves.bounceInOut);
                        controller.jumpToPage(selectedPage);
                        setState(() {});
                      } else {
                        print("Open Welcome Screen");
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Signup()
                                //navigates to signup page
                                ));
                      }
                    },
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
