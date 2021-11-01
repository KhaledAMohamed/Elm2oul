import 'package:flutter/cupertino.dart';
import 'package:hexcolor/hexcolor.dart';

class textView extends StatelessWidget{
  String _text;
  double _lineHeight;
  Color? color = HexColor("#FFFFFF");

  textView(this._text,this._lineHeight,{this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      _text,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontStyle: FontStyle.normal,
        height:_lineHeight,
        color: color,
        fontSize: 18.0,
        fontWeight: FontWeight.w400,
        fontFamily: "Cairo",
    ),);
  }}