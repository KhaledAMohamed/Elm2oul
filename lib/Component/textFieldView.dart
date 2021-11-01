import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class textFieldView extends StatelessWidget{
  TextInputType textInputType;
  TextDirection textDirection;
  // int _maxLength ;
  // String? textCounter;


  textFieldView({required this.textInputType,required this.textDirection});

  @override
  Widget build(BuildContext context) {
   return Row(
     crossAxisAlignment: CrossAxisAlignment.end,
     children: [
       Expanded(
         child: Padding(
           padding: const EdgeInsets.only(
             left: 30,
             right: 30,
           ),
           child: Container(
             decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.all(Radius
                     .circular(20))
             ),

             child: Expanded(
               child: TextField(
                 textDirection:textDirection,
                 showCursor:true,
                 maxLines: 1,
                 keyboardType: textInputType,
                 textInputAction: TextInputAction.done,
                 textAlignVertical: TextAlignVertical.center,
                 decoration: InputDecoration(
                     contentPadding: EdgeInsets.only(
                         right: 10,
                         bottom: 15,
                         left: 10),
                     border: InputBorder.none,
                 ),

               ),
             ),
           ),
         ),
       ),
     ],
   );
  }

}