import 'package:flutter/material.dart';
import 'package:petui/intro/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(color: Colors.white),
        iconTheme: IconThemeData(color: Colors.black),
        primaryTextTheme: Typography.material2018(platform: TargetPlatform.android).black, // change all texts to black
        // textTheme:  Typography.material2018(platform: TargetPlatform.android).black,
      ),
      home: Login(),
    );
  }
}
