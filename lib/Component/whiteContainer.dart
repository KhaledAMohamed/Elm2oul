import 'package:flutter/cupertino.dart';
import 'package:hexcolor/hexcolor.dart';

class whiteContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 20,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: HexColor("#FFFFFF"),
          borderRadius: BorderRadius.only(
              topLeft: const Radius.circular(40.0),
              topRight: const Radius.circular(40.0))),
    );
  }
}
