import 'package:flutter/material.dart';
import 'package:flutterapp/calc2.dart';
import 'calc.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: (
          // Calculator()
          Calc2()
        ),
      ),
      
    );
  }
}