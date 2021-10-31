import 'package:elm2oul/ChangeUserProfile/ChangeName.dart';
import 'package:elm2oul/ChangeUserProfile/ChangePassword.dart';
import 'package:elm2oul/ChangeUserProfile/ChangePhone.dart';
import 'package:elm2oul/Component/BottomNavigation.dart';
import 'package:elm2oul/Component/arrowBackIcon.dart';
import 'package:elm2oul/Component/circleAvatar.dart';
import 'package:elm2oul/Component/textView.dart';
import 'package:elm2oul/Component/whiteContainer.dart';
import 'package:elm2oul/Component/whiteDvider.dart';
import 'package:elm2oul/Uitils/Constant.dart';
import 'package:elm2oul/Uitils/Helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  void gotoScreen(BuildContext context, String widget) {
    // Navigator.of(context).push(MaterialPageRoute(builder: (_) {
    //   return widget;
    // }));
    Navigator.of(context).pushNamed(widget);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.topLeft,
            colors: [
              HexColor("#F3F3FF"),
              HexColor("#FC7C51"),
              HexColor("#F3F3FF"),
            ],
          ),
        ),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Column(
              children: [
                Positioned(
                  child: Container(
                    width: double.infinity,
                    height: 150,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: const Radius.circular(40.0),
                        topRight: const Radius.circular(40.0),
                      ),
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.topLeft,
                        colors: [
                          HexColor("#fdad9c"),
                          HexColor("#FC7C51"),
                          HexColor("#fdad9c"),
                        ],
                      ),

                      // color: HexColor("#FFFFFF"),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      //change here don't //worked
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: ()=>Helper.gotoScreen(context, Constant.Home),
                          child: arrowBack(),
                        ),
                      ],
                    ),
                  ),
                ),
                whiteContainer(),
                Positioned(
                    child: Expanded(
                  child: Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: HexColor("#FC7C51"),
                        borderRadius: BorderRadius.only(
                            topLeft: const Radius.circular(40.0),
                            topRight: const Radius.circular(40.0))),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 25),
                          child: textView("اححمد مجدي", 3,color: Colors.white),
                        ),
                        SizedBox(height: 25),
                        InkWell(
                          onTap: ()=>Helper.gotoScreen(context, Constant.Favorite),
                          child: Container(
                            margin: const EdgeInsets.only(top: 5.0),
                            child: Row(
                              children: [
                                arrowBack(),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(right: 30.0),
                                  child: textView("الشركات المفضله", 3,color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        whiteDivider(),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, Constant.ChangeName);
                          },
                          child: Container(
                            margin: const EdgeInsets.only(top: 5.0),
                            child: Row(
                              children: [
                                arrowBack(),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(right: 30.0),
                                  child: textView("تعديل الاسم", 3,color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        whiteDivider(),
                        InkWell(
                          onTap: () => gotoScreen(context, Constant.ChangePassword),
                          child: Container(
                            margin: const EdgeInsets.only(top: 5.0),
                            child: Row(
                              children: [
                                arrowBack(),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(right: 30.0),
                                  child: textView("تعديل كلمه المرور", 3,color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        whiteDivider(),
                        InkWell(
                          onTap: () => gotoScreen(context, Constant.ChangePhone),
                          child: Container(
                            margin: const EdgeInsets.only(top: 5.0),
                            child: Row(
                              children: [
                                arrowBack(),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(right: 30.0),
                                  child: textView("تعديل رقم الهاتف", 3,color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        whiteDivider(),
                        InkWell(
                          onTap: () => gotoScreen(context, Constant.Eld3m),
                          child: Container(
                            margin: const EdgeInsets.only(top: 5.0),
                            child: Row(
                              children: [
                                arrowBack(),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(right: 30.0),
                                  child: textView("الدعم", 3,color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        whiteDivider(),
                        InkWell(
                          onTap: ()=>Helper.gotoScreen(context, Constant.Login),
                          child: Container(
                              margin: const EdgeInsets.only(top: 5.0),
                              child: Expanded(
                                child: Row(
                                  children: [
                                    arrowBack(),
                                    Spacer(),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 30.0),
                                      child: textView("تسجيل الخروج", 3,color: Colors.white),
                                    )
                                  ],
                                ),
                              )),
                        ),
                        SizedBox(height: 5),
                        whiteDivider(),
                      ],
                    ),
                  ),
                )),
              ],
            ),
            Positioned(
              top: 110,
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  circleAvater(
                      "https://www.woolha.com/media/2020/03/eevee.png"),
                  Padding(
                    padding: const EdgeInsets.only(right: 15, bottom: 10),
                    child: Icon(Icons.camera_alt_outlined, color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottonNavgation(
          Colors.white,
          Colors.white,
          HexColor("#FF6E3E")),
    );
  }
}
