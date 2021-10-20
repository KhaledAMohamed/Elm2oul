import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class FirstReset extends StatelessWidget {
  const FirstReset({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              HexColor("#FF6E3E"),
              HexColor("#FC7C51"),
            ],
          ),
        ),
        child: Column(
          children: [
            Row(),
          ],
        ),
        width: double.infinity,
        height: double.infinity,

      ),
    );
  }
}
