import 'package:flutter/material.dart';
import 'package:flutter_application_1/mymaincode.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ADD TWO',
      theme: ThemeData(
        // colorSchemeSeed: Colors.green,
        primarySwatch: Colors.purple,
      ),
      home: newNumbers(),
    );
  }
}
