import 'package:flutter/material.dart';

class TextFieldViewPassword  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return  Container(
     padding: EdgeInsets.only(left: 10),
     decoration: BoxDecoration(
         color: Colors.white,
         borderRadius: BorderRadius.all(Radius
             .circular(20))
     ),
     child: TextField(
       obscureText: true,
       textInputAction: TextInputAction.done,
       decoration: InputDecoration(
         border: InputBorder.none,
         icon: Icon(Icons.remove_red_eye_outlined,
             color:Colors.black),
       ),
     ),
   );
  }

}