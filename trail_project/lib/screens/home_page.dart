import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "",
      home: HomePage(
        title: '',
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 239, 227),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 147, 191, 227),
        title: const Text("Appbar"),
      ),
      body: const Center(
        child: Text("hello first page"),
      ),
    );
  }
}
