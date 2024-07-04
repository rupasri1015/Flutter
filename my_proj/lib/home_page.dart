// ignore: file_names
// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 137, 177, 201),
      // appBar: AppBarTheme(backgroundColor: Colors.amber),
      // appBar: AppBar(
      //   title: "",
      //   actions: <Widget>[],
      // ),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 184, 148, 17),
        title: const Text(
          "appbar",
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Center(
        child: const Text(
          "body",
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
