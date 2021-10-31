import 'package:flutter/cupertino.dart';

class Helper{
  static void gotoScreen(BuildContext context, String widget) {
    // Navigator.of(context).push(MaterialPageRoute(builder: (_) {
    //   return widget;
    // }));
    FocusScope.of(context).unfocus();

    Navigator.of(context).pushNamed(widget);
  }
}