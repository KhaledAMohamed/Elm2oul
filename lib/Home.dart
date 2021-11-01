import 'package:elm2oul/Component/circleAvatar.dart';
import 'package:elm2oul/Component/textFieldView.dart';
import 'package:elm2oul/Component/textView.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'Component/BottomNavigation.dart';
import 'Uitils/menu.dart';

class DemoPageState extends StatelessWidget {
  PageController _myPage = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: BottonNavgation(
          Colors.white,
          HexColor("#FF6E3E"),
          Colors.white),
      body: Container(
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
        height: double.infinity,
        width: double.infinity,
        //  child: SingleChildScrollView(
        child: Column(
          
          //  crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 80),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: circleAvater(
                      "https://www.woolha.com/media/2020/03/eevee.png",Size:
                  25),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: textView("مرحباا ", 2.0,color: Colors.white),
                ),
              ],
            ),
            SizedBox(height: 10),

            Container(

              decoration: BoxDecoration(
                // color: Colors.black,
                borderRadius: BorderRadius.circular(5.0),
              ),
              padding: EdgeInsets.only(left: 20),
              child: textFieldView(textInputType: TextInputType.text,textDirection: TextDirection.rtl),
            ),

            SizedBox(height: 15.0),

            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  textView("الشركات الاكثرا التقيم", 0.2,color: Colors.white,),
                ],
              ),
            ),
            SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.only(left: 5,right: 5),
              child: Container(
                height: 100.0,
                child: ListView.separated (
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => buildStoryItem(),
                  separatorBuilder: (context, index) => SizedBox(
                    width: 20.0,
                  ),
                  itemCount: 10,
                ),
              ),
            ),

            SizedBox(height: 15.0),
            Padding(
              padding: const EdgeInsets.only(top:10,right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  textView("الشركات المفضله", 0.2,color: Colors.white,)
                ],
              ),
            ),
            SizedBox(height: 15.0),
            Padding(
              padding: const EdgeInsets.only(right: 5,left: 5),
              child: Container(
                height: 100.0,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => buildStoryItem(),
                  separatorBuilder: (context, index) => SizedBox(
                    width: 20.0,
                  ),
                  itemCount: 5,
                ),
              ),
            ),
            SizedBox(height: 15.0),
            Padding(
              padding: const EdgeInsets.only(right: 10,top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                 textView("الخدمات", 0.2,color: Colors.white,),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) => menu(),
                  itemCount: 5,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildStoryItem() => Container(
    width: 60.0,
    child: Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.topCenter,
          children: [

            circleAvater(
                'https://avatars.githubusercontent.com/u/34492145?v=4',
                Radius: 30.0),

            SizedBox(
              height: 50,
            ),
          ],
        ),
        SizedBox(
          height: 6.0,
        ),
        Text(
          'planing solutions',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    ),
  );
}
