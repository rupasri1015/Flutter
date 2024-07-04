import 'package:fitness_app/common/color_extension.dart';
import 'package:fitness_app/common_widget/rectangular_button.dart';
import 'package:fitness_app/common_widget/text_Field.dart';
import 'package:fitness_app/view/login/goal.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  TextEditingController txtDate = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: CustomColors.blackColor2,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Image.asset(
                  "assets/images/register1.png",
                  width: media.width,
                  fit: BoxFit.fitWidth,
                ),
                SizedBox(
                  height: media.width * 0.05,
                ),
                //Noremal text
                Text(
                  "Let’s complete your profile",
                  style: TextStyle(
                      color: CustomColors.blackColor1,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  "It will help us to know more about you!",
                  style: TextStyle(
                      color: CustomColors.greyColor1,
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: media.width * 0.1,
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Column(
                    children: [
                      //gender
                      Container(
                        decoration: BoxDecoration(
                            color: CustomColors.greyColor4,
                            borderRadius: BorderRadius.circular(15)),
                        child: Row(
                          children: [
                            Container(
                                alignment: Alignment.center,
                                width: 50,
                                height: 50,
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                child: Image.asset(
                                  "assets/images/User2.png",
                                  width: 20,
                                  height: 20,
                                  fit: BoxFit.contain,
                                  color: CustomColors.greyColor1,
                                )),
                            Expanded(
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton(
                                  items: ["Male", "Female"]
                                      .map((name) => DropdownMenuItem(
                                            value: name,
                                            child: Text(
                                              name,
                                              style: TextStyle(
                                                  color:
                                                      CustomColors.greyColor1,
                                                  fontSize: 14),
                                            ),
                                          ))
                                      .toList(),
                                  onChanged: (value) {},
                                  isExpanded: true,
                                  hint: Text(
                                    "Choose Gender",
                                    style: TextStyle(
                                        color: CustomColors.greyColor1,
                                        fontSize: 12),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: media.width * 0.04,
                      ),
                      // date of birth
                      TextFieldView(
                        controller: txtDate,
                        // obscureText
                        hitText: "Date of Birth",
                        icon: "assets/images/date.png",
                      ),
                      SizedBox(
                        height: media.width * 0.04,
                      ),
                      // weight
                      Row(
                        children: [
                          Expanded(
                            child: TextFieldView(
                              controller: txtDate,
                              hitText: "Your Weight",
                              icon: "assets/images/weight.png",
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          //
                          Container(
                            width: 50,
                            height: 50,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: CustomColors.secondaryL,
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Text(
                              "KG",
                              style: TextStyle(
                                color: CustomColors.blackColor2,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: media.width * 0.04,
                      ),
                      //height
                      Row(
                        children: [
                          Expanded(
                            child: TextFieldView(
                              controller: txtDate,
                              hitText: "Your Height",
                              icon: "assets/images/Swap.png",
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          //
                          Container(
                            width: 50,
                            height: 50,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: CustomColors.secondaryL,
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Text(
                              "CM",
                              style: TextStyle(
                                color: CustomColors.blackColor2,
                                fontSize: 12,
                              ),
                            ),
                          )
                        ],
                      ),

                      SizedBox(
                        height: media.width * 0.07,
                      ),
                      RectangularButton(
                          title: "Next >",
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const GoalView()));
                          }),
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
