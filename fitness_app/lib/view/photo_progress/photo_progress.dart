// import 'package:fitness_app/common/color_extension.dart';
// import 'package:fitness_app/common_widget/rectangular_button.dart';
// import 'package:fitness_app/view/photo_progress/comparision.dart';
// import 'package:flutter/material.dart';

// class PhotoProgressView extends StatefulWidget {
//   const PhotoProgressView({super.key});

//   @override
//   State<PhotoProgressView> createState() => _PhotoProgressViewState();
// }

// class _PhotoProgressViewState extends State<PhotoProgressView> {
//   List photoArr = [
//     {
//       "time": "2 June",
//       "photo": [
//         "assets/img/pp_1.png",
//         "assets/img/pp_2.png",
//         "assets/img/pp_3.png",
//         "assets/img/pp_4.png",
//       ]
//     },
//     {
//       "time": "5 May",
//       "photo": [
//         "assets/img/pp_5.png",
//         "assets/img/pp_6.png",
//         "assets/img/pp_7.png",
//         "assets/img/pp_8.png",
//       ]
//     }
//   ];

//   @override
//   Widget build(BuildContext context) {
//     var media = MediaQuery.of(context).size;
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: CustomColors.blackColor2,
//         centerTitle: true,
//         elevation: 0,
//         leadingWidth: 0,
//         leading: const SizedBox(),
//         title: Text(
//           "Progress Photo",
//           style: TextStyle(
//               color: CustomColors.blackColor1,
//               fontSize: 16,
//               fontWeight: FontWeight.w700),
//         ),
//         actions: [
//           InkWell(
//             onTap: () {},
//             child: Container(
//               margin: const EdgeInsets.all(8),
//               height: 40,
//               width: 40,
//               alignment: Alignment.center,
//               decoration: BoxDecoration(
//                   color: CustomColors.greyColor4,
//                   borderRadius: BorderRadius.circular(10)),
//               child: Image.asset(
//                 "assets/img/more_btn.png",
//                 width: 15,
//                 height: 15,
//                 fit: BoxFit.contain,
//               ),
//             ),
//           )
//         ],
//       ),
//       backgroundColor: CustomColors.blackColor2,
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Padding(
//                   padding:
//                       const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
//                   child: Container(
//                     width: double.maxFinite,
//                     padding: const EdgeInsets.all(15),
//                     decoration: BoxDecoration(
//                         color: const Color(0xffFFE5E5),
//                         borderRadius: BorderRadius.circular(20)),
//                     child: Row(
//                       children: [
//                         Container(
//                           decoration: BoxDecoration(
//                               color: CustomColors.blackColor2,
//                               borderRadius: BorderRadius.circular(30)),
//                           width: 50,
//                           height: 50,
//                           alignment: Alignment.center,
//                           child: Image.asset(
//                             "assets/img/date_notifi.png",
//                             width: 30,
//                             height: 30,
//                           ),
//                         ),
//                         const SizedBox(
//                           width: 8,
//                         ),
//                         Expanded(
//                           child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 const Text(
//                                   "Reminder!",
//                                   style: TextStyle(
//                                       color: Colors.red,
//                                       fontSize: 12,
//                                       fontWeight: FontWeight.w500),
//                                 ),
//                                 Text(
//                                   "Next Photos Fall On July 08",
//                                   style: TextStyle(
//                                       color: CustomColors.blackColor1,
//                                       fontSize: 14,
//                                       fontWeight: FontWeight.w700),
//                                 ),
//                               ]),
//                         ),
//                         Container(
//                             height: 60,
//                             alignment: Alignment.topRight,
//                             child: IconButton(
//                                 onPressed: () {},
//                                 icon: Icon(
//                                   Icons.close,
//                                   color: CustomColors.greyColor1,
//                                   size: 15,
//                                 )))
//                       ],
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding:
//                       const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
//                   child: Container(
//                     width: double.maxFinite,
//                     padding: const EdgeInsets.all(20),
//                     height: media.width * 0.4,
//                     decoration: BoxDecoration(
//                         gradient: LinearGradient(colors: [
//                           CustomColors.brandColor2.withOpacity(0.4),
//                           CustomColors.brandColor1.withOpacity(0.4)
//                         ]),
//                         borderRadius: BorderRadius.circular(20)),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               const SizedBox(
//                                 height: 15,
//                               ),
//                               Text(
//                                 "Track Your Progress Each\nMonth With Photo",
//                                 style: TextStyle(
//                                   color: CustomColors.blackColor1,
//                                   fontSize: 12,
//                                 ),
//                               ),
//                               const Spacer(),
//                               SizedBox(
//                                 width: 110,
//                                 height: 35,
//                                 child: RectangularButton(
//                                     title: "Learn More",
//                                     fontSize: 12,
//                                     onPressed: () {}),
//                               )
//                             ]),
//                         Image.asset(
//                           "assets/img/progress_each_photo.png",
//                           width: media.width * 0.35,
//                         )
//                       ],
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: media.width * 0.05,
//                 ),
//                 Container(
//                   margin: const EdgeInsets.symmetric(horizontal: 20),
//                   padding:
//                       const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
//                   decoration: BoxDecoration(
//                     color: CustomColors.brandColor2.withOpacity(0.3),
//                     borderRadius: BorderRadius.circular(15),
//                   ),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text(
//                         "Compare my Photo",
//                         style: TextStyle(
//                             color: CustomColors.blackColor1,
//                             fontSize: 14,
//                             fontWeight: FontWeight.w500),
//                       ),
//                       SizedBox(
//                         width: 100,
//                         height: 25,
//                         child: RectangularButton(
//                           title: "Compare",
//                           type: RectangularButtonType.bgGradient,
//                           fontSize: 12,
//                           fontWeight: FontWeight.w400,
//                           onPressed: () {
//                             Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                 builder: (context) => const ComparisonView(),
//                               ),
//                             );
//                           },
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//                 Padding(
//                   padding:
//                       const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text(
//                         "Gallery",
//                         style: TextStyle(
//                             color: CustomColors.blackColor1,
//                             fontSize: 16,
//                             fontWeight: FontWeight.w700),
//                       ),
//                       TextButton(
//                           onPressed: () {},
//                           child: Text(
//                             "See more",
//                             style: TextStyle(
//                                 color: CustomColors.greyColor1, fontSize: 12),
//                           ))
//                     ],
//                   ),
//                 ),
//                 ListView.builder(
//                     padding: const EdgeInsets.symmetric(horizontal: 16),
//                     physics: const NeverScrollableScrollPhysics(),
//                     shrinkWrap: true,
//                     itemCount: photoArr.length,
//                     itemBuilder: ((context, index) {
//                       var pObj = photoArr[index] as Map? ?? {};
//                       var imaArr = pObj["photo"] as List? ?? [];

//                       return Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: Text(
//                               pObj["time"].toString(),
//                               style: TextStyle(
//                                   color: CustomColors.greyColor1, fontSize: 12),
//                             ),
//                           ),
//                           SizedBox(
//                             height: 100,
//                             child: ListView.builder(
//                               scrollDirection: Axis.horizontal,
//                               padding: EdgeInsets.zero,
//                               itemCount: imaArr.length,
//                               itemBuilder: ((context, indexRow) {
//                                 return Container(
//                                   margin:
//                                       const EdgeInsets.symmetric(horizontal: 4),
//                                   width: 100,
//                                   decoration: BoxDecoration(
//                                     color: CustomColors.greyColor4,
//                                     borderRadius: BorderRadius.circular(10),
//                                   ),
//                                   child: ClipRRect(
//                                     borderRadius: BorderRadius.circular(10),
//                                     child: Image.asset(
//                                       imaArr[indexRow] as String? ?? "",
//                                       width: 100,
//                                       height: 100,
//                                       fit: BoxFit.cover,
//                                     ),
//                                   ),
//                                 );
//                               }),
//                             ),
//                           ),
//                         ],
//                       );
//                     }))
//               ],
//             ),
//             SizedBox(
//               height: media.width * 0.05,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: InkWell(
//         onTap: () {
//           // Navigator.push(
//           //   context,
//           //   MaterialPageRoute(
//           //     builder: (context) => SleepAddAlarmView(
//           //       date: _selectedDateAppBBar,
//           //     ),
//           //   ),
//           // );
//         },
//         child: Container(
//           width: 55,
//           height: 55,
//           decoration: BoxDecoration(
//               gradient: LinearGradient(colors: CustomColors.secondaryL),
//               borderRadius: BorderRadius.circular(27.5),
//               boxShadow: const [
//                 BoxShadow(
//                     color: Colors.black12, blurRadius: 5, offset: Offset(0, 2))
//               ]),
//           alignment: Alignment.center,
//           child: Icon(
//             Icons.photo_camera,
//             size: 20,
//             color: CustomColors.blackColor2,
//           ),
//         ),
//       ),
//     );
//   }
// }
