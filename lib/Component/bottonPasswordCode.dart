import 'package:flutter/material.dart';

class bottonPasswordCode extends StatelessWidget {
  const bottonPasswordCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius:  BorderRadius.all(Radius.circular(15)),
      ),
      child: TextField(
        showCursor:false,
        maxLines: 1,
        maxLength: 1 ,
        style: TextStyle(fontSize: 20),
        textAlign: TextAlign.center,
        textInputAction:TextInputAction.next,
        decoration: InputDecoration(
          counterText: "",
          hintText:'x',
          hintStyle: TextStyle(fontSize: 20),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
