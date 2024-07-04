import 'package:fitness_app/common/color_extension.dart';
import 'package:fitness_app/common_widget/rectangular_button.dart';
import 'package:fitness_app/view/login/welcome.dart';
import 'package:flutter/material.dart';
import '../../common_widget/setting_row.dart';
import '../../common_widget/title_subtitle_cell.dart';
import 'package:animated_toggle_switch/animated_toggle_switch.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  bool positive = false;

  List accountArr = [
    {
      "image": "assets/images/Account1.png",
      "name": "Personal Data",
      "tag": "1",
    },
    {
      "image": "assets/images/Account2.png",
      "name": "Achievement",
      "tag": "2",
    },
    {
      "image": "assets/images/Account3.png",
      "name": "Activity History",
      "tag": "3",
    },
    {
      "image": "assets/images/Account4.png",
      "name": "Workout Progress",
      "tag": "4"
    }
  ];

  List otherArr = [
    {
      "image": "assets/images/contact.png",
      "name": "Contact Us",
      "tag": "5",
    },
    {
      "image": "assets/images/Privacy.png",
      "name": "Privacy Policy",
      "tag": "6",
    },
    {
      "image": "assets/images/Setting.png",
      "name": "Setting",
      "tag": "7",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: CustomColors.blackColor2,
      //   centerTitle: true,
      //   elevation: 0,
      //   leadingWidth: 0,
      //   title: Text(
      //     "Profile",
      //     style: TextStyle(
      //         color: CustomColors.blackColor1,
      //         fontSize: 16,
      //         fontWeight: FontWeight.w700),
      //   ),
      //   actions: [
      //     InkWell(
      //       onTap: () {},
      //       child: Container(
      //         margin: const EdgeInsets.all(8),
      //         height: 40,
      //         width: 40,
      //         alignment: Alignment.center,
      //         decoration: BoxDecoration(
      //             color: CustomColors.greyColor4,
      //             borderRadius: BorderRadius.circular(10)),
      //         child: Image.asset(
      //           "assets/images/more.png",
      //           width: 20,
      //           height: 20,
      //           fit: BoxFit.contain,
      //         ),
      //       ),
      //     )
      //   ],
      // ),
      appBar: AppBar(
        backgroundColor: CustomColors.blackColor2,
        centerTitle: true,
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const WelcomeView(),
                ));
          },
          child: Container(
            margin: const EdgeInsets.all(8),
            height: 40,
            width: 40,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: CustomColors.greyColor4,
                borderRadius: BorderRadius.circular(10)),
            child: Image.asset(
              "assets/images/Back-Navs.png",
              width: 25,
              height: 25,
              fit: BoxFit.contain,
            ),
          ),
        ),
        title: Text(
          "Profile",
          style: TextStyle(
              color: CustomColors.blackColor1,
              fontSize: 16,
              fontWeight: FontWeight.w700),
        ),
        actions: [
          InkWell(
            onTap: () {},
            child: Container(
              margin: const EdgeInsets.all(8),
              height: 40,
              width: 40,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: CustomColors.greyColor4,
                  borderRadius: BorderRadius.circular(10)),
              child: Image.asset(
                "assets/images/more.png",
                width: 15,
                height: 15,
                fit: BoxFit.contain,
              ),
            ),
          )
        ],
      ),

      backgroundColor: CustomColors.blackColor2,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      "assets/images/Latest-Pic.png",
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  // page 4 dashboard
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Stefani Wong",
                          style: TextStyle(
                            color: CustomColors.blackColor1,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "Lose a Fat Program",
                          style: TextStyle(
                            color: CustomColors.greyColor1,
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 70,
                    height: 25,
                    child: RectangularButton(
                      title: "Edit",
                      type: RectangularButtonType.bgGradient,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => const ActivityTrackerView(),
                        //   ),
                        // );
                      },
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              const Row(
                children: [
                  Expanded(
                    child: TitleSubtitleCell(
                      title: "180cm",
                      subtitle: "Height",
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: TitleSubtitleCell(
                      title: "65kg",
                      subtitle: "Weight",
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: TitleSubtitleCell(
                      title: "22yo",
                      subtitle: "Age",
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              // account
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                decoration: BoxDecoration(
                    color: CustomColors.blackColor2,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: const [
                      BoxShadow(color: Colors.black12, blurRadius: 2)
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Account",
                      style: TextStyle(
                        color: CustomColors.blackColor1,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: accountArr.length,
                      itemBuilder: (context, index) {
                        var iObj = accountArr[index] as Map? ?? {};
                        return SettingRow(
                          icon: iObj["image"].toString(),
                          title: iObj["name"].toString(),
                          onPressed: () {},
                        );
                      },
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              //  notification
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                decoration: BoxDecoration(
                    color: CustomColors.blackColor2,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: const [
                      BoxShadow(color: Colors.black12, blurRadius: 3)
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Notification",
                      style: TextStyle(
                        color: CustomColors.blackColor1,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    SizedBox(
                      height: 30,
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset("assets/images/Notif.png",
                                height: 15, width: 15, fit: BoxFit.contain),
                            const SizedBox(
                              width: 15,
                            ),
                            Expanded(
                              child: Text(
                                "Pop-up Notification",
                                style: TextStyle(
                                  color: CustomColors.blackColor1,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            CustomAnimatedToggleSwitch<bool>(
                              current: positive,
                              values: const [false, true],
                              spacing: 0.0,
                              // defaultCursor: 0.0,
                              indicatorSize: const Size.square(30.0),
                              animationDuration:
                                  const Duration(milliseconds: 200),
                              animationCurve: Curves.linear,
                              onChanged: (b) => setState(() => positive = b),
                              iconBuilder: (context, local, global) {
                                return const SizedBox();
                              },
                              // defaultCursor: SystemMouseCursors.click,
                              onTap: (_) =>
                                  setState(() => positive = !positive),
                              // iconsTappable: false,
                              wrapperBuilder: (context, global, child) {
                                return Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Positioned(
                                        left: 4.0,
                                        right: 4.0,
                                        height: 30.0,
                                        child: DecoratedBox(
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                                colors:
                                                    CustomColors.secondaryL),
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(40.0)),
                                          ),
                                        )),
                                    child,
                                  ],
                                );
                              },
                              foregroundIndicatorBuilder: (context, global) {
                                return SizedBox.fromSize(
                                  size: const Size(10, 10),
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                      color: CustomColors.blackColor2,
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(50.0)),
                                      boxShadow: const [
                                        BoxShadow(
                                            color: Colors.black38,
                                            spreadRadius: 0.05,
                                            blurRadius: 1.1,
                                            offset: Offset(0.0, 0.8))
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                          ]),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                decoration: BoxDecoration(
                    color: CustomColors.blackColor2,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: const [
                      BoxShadow(color: Colors.black12, blurRadius: 2)
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Other",
                      style: TextStyle(
                        color: CustomColors.blackColor1,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      itemCount: otherArr.length,
                      itemBuilder: (context, index) {
                        var iObj = otherArr[index] as Map? ?? {};
                        return SettingRow(
                          icon: iObj["image"].toString(),
                          title: iObj["name"].toString(),
                          onPressed: () {},
                        );
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
