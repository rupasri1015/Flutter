import 'package:flutter/material.dart';
import 'package:my_proj/home_page.dart';

void main() => runApp(const MyFirst());

class MyFirst extends StatelessWidget {
  const MyFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: " My first project",
      debugShowCheckedModeBanner: false,
      // ignore: unnecessary_const
      home: const HomePage(),
      // theme:
      // ThemeData(primaryColor: Colors.white, fontFamily: "Times New Roman"),
    );
  }
}
