import 'package:flutter/material.dart';
import 'calculator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final calc = Calculator();
    int result = calc.add(5, 10);

    print("Debug: Result = $result");

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Experiment 10 — Unit Test & Debug")),
        body: Center(
          child: Text("Addition result = $result"),
        ),
      ),
    );
  }
}
