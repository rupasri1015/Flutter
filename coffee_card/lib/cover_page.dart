import 'package:flutter/material.dart';

class CoverPage extends StatelessWidget {
  const CoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      // appBar: AppBar(
      //   automaticallyImplyLeading: false,
      //   leading: IconButton(
      //     onPressed: () {
      //       Navigator.pop(context);
      //     },
      //     icon: Icon(
      //       Icons.arrow_back_ios,
      //       size: 24,
      //     ),
      //   ),
      //   // title: Text('data'),
      // ),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: size.height / 3,
                width: size.width,
                color: Colors.black,
              ),
              Image.asset("assets/Banner1.png"),
            ],
          ),
          Container(
            height: size.height / 2,
            width: size.width,
          )
        ],
      ),
    );
  }
}
