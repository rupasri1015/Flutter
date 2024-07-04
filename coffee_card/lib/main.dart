import 'package:coffee_card/home_Page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const MyHomePage(title: ""),
      home: const HomePage(title: ""),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   final String title;

//   const MyHomePage({super.key, required this.title});
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Hello'),
//       ),
//       // body: Text('Hello World'),
//       body: Center(
//         child: Container(
//             width: 200,
//             height: 100,
//             color: const Color.fromARGB(255, 160, 228, 178),
//             child: const Center(
//               child: Text('this is center of cointainer',
//                   style: TextStyle(color: Colors.white)),
//             )),
//       ),
//     );
//   }
// }
