import 'package:elm2oul/Component/arrowBackIcon.dart';
import 'package:elm2oul/Component/textView.dart';
import 'package:elm2oul/Uitils/Constant.dart';
import 'package:elm2oul/Uitils/Helper.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Eld3m extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/Images/Background.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(height: 40),
            Row(
              children: [
                InkWell(
                  onTap: ()=>Helper.gotoScreen(context, Constant.Profile),
                  child: arrowBack(),
                ),
                SizedBox(width: 110),
                textView("للتواصل معنا", 4,color: Colors.white),
              ],
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: textView( 'للتواصل لحل المشكلات التي تواجهك', 1.5,color: Colors.white),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(right: 17),
              child: textView(" : العنوان", 1),
            ),
            // SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(10),
              child: textView('السعودية,مكة المكرمة بجوار فندق كورال', 1,color: Colors.white),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(right: 17),
              child: textView(" : رقم الهاتف", 1),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: textView('0100********', 1,color: Colors.white),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(right: 17),
              child: textView(" : الايميل ", 1),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: textView('khaledalaa58@yahoo.com', 1,color: Colors.white),
            ),
            SizedBox(height: 60),
            Row(
              children: [
                Padding(
                    padding: EdgeInsets.only(
                      left: 60,
                    )),
                CircleAvatar(
                  radius: 35,
                  backgroundColor: Colors.white,
                  child: Container(
                    padding: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(44)),
                      color: Colors.white,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('lib/Images/WhatsApp.png'),
                      ),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(left: 120)),
                CircleAvatar(
                  radius: 35,
                  backgroundColor: HexColor("#FC7C51"),
                  child: IconButton(
                      icon: Icon(
                        Icons.phone,
                        color: Colors.black,
                        size: 30,
                      ),
                      onPressed: () {}),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
