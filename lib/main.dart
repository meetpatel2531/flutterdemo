import 'package:flutter/material.dart';
import 'package:project/screens/Call.dart';
import 'package:project/screens/DashBoard.dart';
import 'package:project/screens/Home.dart';
import 'package:project/widget/Countno.dart';

// import 'screens/Home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
    );
  }
}
