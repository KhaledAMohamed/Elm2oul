import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class whiteDivider extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return    Container(
      child: Padding(
        padding: const EdgeInsets.only(
            left: 15,right: 15),
        child: Expanded(child: Divider(color: Colors.white)),
      ),
    );
  }

}