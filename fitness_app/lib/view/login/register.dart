import 'dart:math';
// import 'dart:developer';
import 'package:fitness_app/common/color_extension.dart';
import 'package:fitness_app/common_widget/rectangular_button.dart';
import 'package:fitness_app/common_widget/text_Field.dart';
import 'package:fitness_app/view/login/login.dart';
import 'package:fitness_app/view/login/profile.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fitness_app/common_widget/gradient_text.dart';
// import 'package:flutter/widgets.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool isChecked = false;
  bool isHidePwd = true;
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: CustomColors.blackColor2,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 40,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //Noremal text
                Text(
                  "Hey there,",
                  style: TextStyle(
                      color: CustomColors.blackColor1,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  "Create an Account",
                  style: TextStyle(
                      color: CustomColors.blackColor1,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: media.width * 0.05,
                ),
                // First Name
                const TextFieldView(
                  hitText: "First Name",
                  icon: "assets/images/profile.png",
                ),
                SizedBox(
                  height: media.width * 0.04,
                ),
                // Last Name
                const TextFieldView(
                  hitText: "Last Name",
                  icon: "assets/images/profile.png",
                ),
                SizedBox(
                  height: media.width * 0.04,
                ),
                // Email
                const TextFieldView(
                  hitText: "Email",
                  icon: "assets/images/msg.png",
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(
                  height: media.width * 0.04,
                ),
                // Password
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
                // checkbox
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          isChecked = !isChecked;
                        });
                      },
                      icon: Icon(
                        isChecked
                            ? Icons.check_box_outlined
                            : Icons.check_box_outline_blank_outlined,
                        color: CustomColors.greyColor1,
                        size: 16,
                      ),
                    ),
                    //text after checkbox
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Text(
                        "By continuing you accept our Privacy Policy and\nTerm of Use",
                        style: TextStyle(
                          color: CustomColors.greyColor2,
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: media.width * 0.3,
                ),
                // Rectangular Button
                RectangularButton(
                    title: "Register",
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ProfileView()),
                      );
                    }),
                SizedBox(
                  height: media.width * 0.05,
                ),
                // Text below register button
                Row(
                  children: [
                    Expanded(
                        child: Container(
                      height: 1,
                      color: CustomColors.greyColor1.withOpacity(0.5),
                    )),
                    Text(
                      "Or",
                      style: TextStyle(
                        color: CustomColors.blackColor1,
                        fontSize: 12,
                      ),
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
                // google and facebook
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //google
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
                            color: CustomColors.greyColor1.withOpacity(0.5),
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
                    //facebook
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
                            color: CustomColors.greyColor1.withOpacity(0.5),
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
                  height: media.width * 0.05,
                ),

                // last text
                TextButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Already have an account?",
                        style: TextStyle(
                            color: CustomColors.blackColor1,
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                      GradientText(
                        text: "Login",
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
                                builder: (context) => const LoginView()),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: media.width * 0.5,
                ),
                // SizedBox(
                //   height: media.width * 0.4,
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
