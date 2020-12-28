import 'package:fitness/ui/splash/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Quicksand"),
      title: 'Flutter Demo',
      home: SplashScreen(),
    );
  }
}
