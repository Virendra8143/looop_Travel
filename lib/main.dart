
import 'package:flutter/material.dart';
import 'package:looop_travel/MapMultiMarker.dart';
import 'package:looop_travel/screens/Splashscreen.dart';
import 'package:looop_travel/screens/home_screen.dart';
import 'package:looop_travel/screens/loginscreen.dart';
import 'package:looop_travel/widgets/Myimageslider.dart';

 void main() {

  runApp(MyApp());}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Travel App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF3EBACE),
        hintColor: Color(0xFFD8ECF1),
        scaffoldBackgroundColor: Color(0xFFF3F5F7),
      ),
      home: MyStatefulWidget()
    );
  }
}