import 'package:elm2oul/Component/BottomNavigation.dart';
import 'package:elm2oul/Component/arrowBackIcon.dart';
import 'package:elm2oul/Component/bottonView.dart';
import 'package:elm2oul/Component/circleAvatar.dart';
import 'package:elm2oul/Component/textView.dart';
import 'package:elm2oul/Uitils/Constant.dart';
import 'package:elm2oul/Uitils/Helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Location extends StatelessWidget {

  const Location({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.topLeft,
            colors: [
              HexColor("#fdad9c"),
              HexColor("#FC7C51"),
              HexColor("#fdad9c"),
            ],
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 60,),
            Row(
              children: [
                InkWell(
                  onTap: ()=>Helper.gotoScreen(context, Constant.Home),
                  child: arrowBack(),
                ),
                Spacer(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                circleAvater("https://www.woolha.com/media/2020/03/eevee.png"),
              ],
            ),
            SizedBox(height: 40,),
            Expanded(
              child: Container(
                child: GoogleMap(
                  myLocationEnabled:true,
                  myLocationButtonEnabled:true,
                  mapType: MapType.satellite,
                  zoomControlsEnabled: false,
                  trafficEnabled: true,
                  initialCameraPosition: CameraPosition(
                    target:  LatLng(29.967590, 30.968330),
                    zoom: 15.0,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 30,right: 30),
              child: Container(
                child: textView("الجيزه 6 اكتوبر الحي المتميز 74 شارع الزهور شقه 6 "
                    "الحصري عند الككنيسه ", 1.5),
              ),
            ),
            SizedBox(height: 100,),
            buttonView("تحديد الموقع"),



          ],
        ),
      ),
      bottomNavigationBar:
      BottonNavgation(
          HexColor("#FF6E3E"),
          Colors.white,
          Colors.white),
    );


  }
}
