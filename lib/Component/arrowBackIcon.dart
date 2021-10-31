import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class arrowBack extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Padding(
      padding: const EdgeInsets.only(left: 30.0),
      child: Icon(Icons.arrow_back_ios,
        color: HexColor("#FFF6FF"),
        size: 20,
      ),
    );
  }

}