import 'package:fitness_app/common/color_extension.dart';
import 'package:fitness_app/common_widget/rectangular_button.dart';
import 'package:fitness_app/view/Profile/profile_view.dart';
import 'package:flutter/material.dart';
// import '../main_tab/main_tab_view.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: CustomColors.blackColor2,
      body: SafeArea(
        child: Container(
          width: media.width,
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(
                height: media.width * 0.1,
              ),
              Image.asset(
                "assets/images/login1.png",
                width: media.width * 0.75,
                fit: BoxFit.fitWidth,
              ),
              SizedBox(
                height: media.width * 0.1,
              ),
              Text(
                "Welcome, Stefani",
                style: TextStyle(
                    color: CustomColors.blackColor1,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
              Text(
                "You are all set now, let’s reach your\ngoals together with us",
                textAlign: TextAlign.center,
                style: TextStyle(color: CustomColors.greyColor1, fontSize: 12),
              ),
              const Spacer(),
              RectangularButton(
                  title: "Go To Home",
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ProfileView()));
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
