import 'package:flutter/material.dart';

class textFieldView extends StatelessWidget{
  TextInputType _textInputType;
  TextDirection _textDirection;
  int _maxLength ;


  textFieldView(this._textInputType,this._maxLength,this._textDirection);

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
                 textDirection:_textDirection,
                 showCursor:true,
                 maxLines: 1,
              //   maxLength: _maxLength ,
                 keyboardType: _textInputType,
                 textInputAction: TextInputAction.done,
                 textAlignVertical: TextAlignVertical.center,
                 decoration: InputDecoration(
                     contentPadding: EdgeInsets.only(right: 10,bottom: 15,left: 10,
                         top: 10),
                     border: InputBorder.none,
                     // hintText: _hintText,
                     // hintTextDirection: TextDirection.rtl,
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