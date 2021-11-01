import 'package:elm2oul/Uitils/Constant.dart';
import 'package:elm2oul/Uitils/Helper.dart';
import 'package:flutter/material.dart';

class BottonNavgation extends StatelessWidget {
  Color ColorHome;
  Color ColorLocation;
  Color ColorProfile;

  // Route route;
  BottonNavgation(this.ColorLocation, this.ColorHome, this.ColorProfile);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      child: Container(
        height: 60,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 28.0),
              padding: EdgeInsets.only( bottom: 5),
              decoration: BoxDecoration(
                color: ColorLocation,
                borderRadius: BorderRadius.all(Radius.circular(120.0)),
              ),
              child: IconButton(
                iconSize: 30.0,
                // padding: EdgeInsets.only(left: 28.0),
                icon: Icon(Icons.location_on, color: Colors.black, size: 35),
                onPressed: () {
                  if (ModalRoute.of(context)!.settings.name !=
                      Constant.Location) {
                    Helper.gotoScreen(context, Constant.Location);
                  }
                },
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 5, bottom: 5),
              decoration: BoxDecoration(
                color: ColorHome,
                borderRadius: BorderRadius.all(Radius.circular(120.0)),
              ),
              child: IconButton(
                iconSize: 30.0,
                icon: Icon(Icons.home, color: Colors.black, size: 35),
                onPressed: () {
                  if (ModalRoute.of(context)!.settings.name != Constant.Home) {
                    Helper.gotoScreen(context, Constant.Home);
                  }
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 25.0),
              padding: EdgeInsets.only(right: 5, bottom: 5),
              decoration: BoxDecoration(
                color: ColorProfile,
                borderRadius: BorderRadius.all(Radius.circular(120.0)),
              ),
              child: IconButton(
                iconSize: 30.0,
                icon: Icon(Icons.person, color: Colors.black, size: 35),
                onPressed: () {
                  if (ModalRoute.of(context)!.settings.name !=
                      Constant.Profile) {
                    Helper.gotoScreen(context, Constant.Profile);
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
