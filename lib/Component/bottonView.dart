import 'package:elm2oul/Component/textView.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class buttonView extends StatelessWidget{
  String _text;
  Color? color;
  buttonView (this._text,{this.color});
  @override
  Widget build(BuildContext context) {
    return  Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: const EdgeInsets.only(bottom: 20.0),
        width: 200,
        height: 45,
        decoration: BoxDecoration(
            color: HexColor("#4DE099"),
            border: Border.all(color: Colors.white),
            borderRadius:
            BorderRadius.all(Radius.circular(30.0))),
        child: TextButton(
            onPressed: null,
            child: textView(_text,0.2,color: color)
        ),
      ),
    );
  }

}