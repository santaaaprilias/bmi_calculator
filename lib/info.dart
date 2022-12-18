import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("BMI calculator"),
      ),
      body: Image.asset('assets/images/bmi1.png'),
    ));
  }
}
