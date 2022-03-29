import 'package:cofe/menyu.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MeningApp());
}

class MeningApp extends StatelessWidget {
  const MeningApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // App dagi eng katta widget
      debugShowCheckedModeBanner: false,
       // title: bu propartiy
      title: "Example Dasturim",
      home: Menyu(), // UI dagi eng asosiy widget
    );
  }
}
