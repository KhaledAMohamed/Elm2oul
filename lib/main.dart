import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:splash_screen_view/SplashScreenView.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Elm2oul"),
      // ),
      body: SplashScreenView(
        navigateRoute: MyApp(),
        duration: 3000,
        imageSize: 250,
        imageSrc: "lib/Images/splashImage.png",
        text: "مقاول",
        textType: TextType.NormalText,
        textStyle: TextStyle(
          fontSize: 70,
          foreground: Paint()..shader = linearGradient,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
  final Shader linearGradient = LinearGradient(
    colors: <Color> [
      HexColor("#FA7E75100"),
      HexColor("#EABEC9"),
      HexColor("#F399A2"),
      HexColor("#FF903C"),
      HexColor("#FB767D"),
      HexColor("#FB767D"),
      HexColor("#FFAF35"),
      HexColor("#F88C68"),
    ],
  ).createShader(Rect.fromLTWH(200.0,70.0, 200.0,1.0));
}
