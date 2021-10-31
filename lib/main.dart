import 'package:elm2oul/ChangeUserProfile/Profile.dart';
import 'package:elm2oul/Login/Register.dart';
import 'package:elm2oul/PasswordReset/ResetPassword.dart';
import 'package:elm2oul/PasswordReset/ResetPhone.dart';
import 'package:elm2oul/Uitils/Constant.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:splash_screen_view/SplashScreenView.dart';
import 'ChangeCompanyProfile/ChangeCompanyPassword.dart';
import 'ChangeCompanyProfile/CompanyProfile.dart';
import 'ChangeUserProfile/ChangeName.dart';
import 'ChangeUserProfile/ChangePassword.dart';
import 'ChangeUserProfile/ChangePhone.dart';
import 'ChangeUserProfile/Eld3m.dart';
import 'ChangeUserProfile/Location.dart';
import 'Home.dart';
import 'Login/Login.dart';
import 'PasswordReset/ResetCode.dart';
import 'Status/ChangeStatus.dart';
import 'Status/Status.dart';
import 'faveorite.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          bodyText1: TextStyle(
            color: Colors.white
          ),
        ),
      ),
      home: Login(),
      routes: {
        Constant.ChangeName:(context) =>ChangeName(),
        Constant.ChangePhone:(context) =>ChangePhone(),
        Constant.ChangePassword:(context) =>ChangePassword(),
        Constant.Eld3m:(context) =>Eld3m(),
        Constant.Register:(context) =>Register(),
        Constant.Login:(context) =>Login(),
        Constant.Profile:(context) => Profile(),
        Constant.Location:(context) => Location(),
        Constant.Home:(context)=>DemoPageState(),
        Constant.Favorite:(context)=>compDetail(),
        Constant.ResetCode:(context) =>ResetCode(),
        Constant.ResetPhone:(context) =>ResetPhone(),
        Constant.ResetPassword:(context) =>ResetPassword(),

      },
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
        navigateRoute: Profile(),
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

