import 'dart:math';
import 'package:fitness_app/common/color_extension.dart';
import 'package:fitness_app/common_widget/gradient_text.dart';
import 'package:fitness_app/common_widget/rectangular_button.dart';
import 'package:fitness_app/common_widget/text_Field.dart';
import 'package:fitness_app/view/login/register.dart';
import 'package:fitness_app/view/login/welcome.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  // bool isCheck = false;
  bool isHidePwd = true;
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: CustomColors.blackColor2,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            height: media.height * 0.9,
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 40,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Hey there,",
                  style:
                      TextStyle(color: CustomColors.greyColor1, fontSize: 16),
                ),
                Text(
                  "Welcome Back",
                  style: TextStyle(
                      color: CustomColors.blackColor1,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: media.width * 0.05,
                ),
                SizedBox(
                  height: media.width * 0.04,
                ),
                // email
                const TextFieldView(
                  hitText: "Email",
                  icon: "assets/images/msg.png",
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(
                  height: media.width * 0.04,
                ),
                // password
                TextFieldView(
                  // obscureText
                  hitText: "Password",
                  icon: "assets/images/lock.png",
                  obscureText: true,
                  rightIcon: TextButton(
                    onPressed: () {
                      setState(() {
                        isHidePwd = !isHidePwd;
                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: 20,
                      height: 20,
                      child: Image.asset(
                        // "assets/images/profile.png",
                        "assets/images/hidePwd.png",
                        width: 18,
                        height: 18,
                        fit: BoxFit.contain,
                        color: CustomColors.greyColor1,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: media.width * 0.04,
                ),
                // forgot pwd
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Forgot your password?",
                      style: TextStyle(
                          color: CustomColors.greyColor1,
                          fontSize: 10,
                          decoration: TextDecoration.underline),
                    ),
                  ],
                ),
                // const Spacer({flex = 3}),
                SizedBox(
                  height: media.width * 0.5,
                ),
                RectangularButton(
                    title: "Login",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const WelcomeView()));
                    }),
                SizedBox(
                  height: media.width * 0.06,
                ),
                // or
                Row(
                  // crossAxisAlignment: CrossAxisAlignment.,
                  children: [
                    Expanded(
                        child: Container(
                      height: 1,
                      color: CustomColors.greyColor1.withOpacity(0.5),
                    )),
                    Text(
                      "  Or  ",
                      style: TextStyle(
                          color: CustomColors.blackColor1, fontSize: 12),
                    ),
                    Expanded(
                        child: Container(
                      height: 1,
                      color: CustomColors.greyColor1.withOpacity(0.5),
                    )),
                  ],
                ),
                SizedBox(
                  height: media.width * 0.1,
                ),
                // google
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 50,
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: CustomColors.blackColor2,
                          border: Border.all(
                            width: 1,
                            color: CustomColors.greyColor1.withOpacity(0.4),
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Image.asset(
                          "assets/images/google.png",
                          width: 20,
                          height: 20,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: media.width * 0.04,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 50,
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: CustomColors.blackColor2,
                          border: Border.all(
                            width: 1,
                            color: CustomColors.greyColor1.withOpacity(0.4),
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Image.asset(
                          "assets/images/fb.png",
                          width: 20,
                          height: 20,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: media.width * 0.04,
                ),
                // ////////
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Row(
                    // mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Don’t have an account yet? ",
                        style: TextStyle(
                          color: CustomColors.blackColor1,
                          fontSize: 14,
                        ),
                      ),
                      GradientText(
                        text: "Register",
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            CustomColors.secondaryColor1,
                            CustomColors.secondaryColor2,
                          ],
                          stops: const [0, 1],
                          transform: const GradientRotation(274 * pi / 180),
                        ),
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Signup()),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
