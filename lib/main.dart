import 'package:flutter/material.dart';
//import 'screen/home.dart';
import 'package:mobilelab2cet223/screen/item.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text("CET App my223"),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      //body: const Home(),
      body: const Item(),
    ),
  );
  }
}