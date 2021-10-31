import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class circleAvater extends StatelessWidget{
  String _imageUri;
  circleAvater(this._imageUri);
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: NetworkImage(_imageUri),
      maxRadius: 30,
      minRadius: 30,
    );
  }

}