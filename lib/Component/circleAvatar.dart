import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class circleAvater extends StatelessWidget{
  String _imageUri;
  double? Size;
  double? Radius;

  circleAvater(this._imageUri,{this.Size,this.Radius});
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: Radius,
      backgroundImage: NetworkImage(_imageUri),
      maxRadius: Size,
      minRadius: Size,
    );
  }

}