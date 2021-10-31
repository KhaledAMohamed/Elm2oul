import 'package:elm2oul/Component/arrowBackIcon.dart';
import 'package:elm2oul/Component/bottonView.dart';
import 'package:elm2oul/Component/circleAvatar.dart';
import 'package:elm2oul/Component/textFieldView.dart';
import 'package:elm2oul/Component/textView.dart';
import 'package:elm2oul/Component/whiteContainer.dart';
import 'package:elm2oul/Component/whiteDvider.dart';
import 'package:elm2oul/Uitils/Constant.dart';
import 'package:elm2oul/Uitils/Helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ChangePhone extends StatelessWidget {
  const ChangePhone({Key? key}) : super(key: key);

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
          child: Stack(alignment: Alignment.topCenter, children: [
            Column(
              children: [
                Positioned(
                  child: Container(
                    width: double.infinity,
                    height: 200,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: const Radius.circular(40.0),
                          topRight: const Radius.circular(40.0)),
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
                      mainAxisAlignment: MainAxisAlignment.start, //change here don't //worked
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: ()=>Helper.gotoScreen(context, Constant.Home),
                          child: arrowBack(),
                        ),
                        SizedBox(width: 80,),
                        textView("تعديل رقم الهاتف",0.3),
                      ],
                    ),
                  ),
                ),
                whiteContainer(),

                Positioned(
                    child: Expanded(child: Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: HexColor("#FC7C51"),
                        borderRadius: BorderRadius.only(
                            topLeft: const Radius.circular(40.0),
                            topRight: const Radius.circular(40.0))),
                    child: Column(
                      children: [
                        SizedBox(height: 100,),
                        Padding(
                          padding: const EdgeInsets.only(right: 50),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              textView("رقم الهاتف", 0.0),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        textFieldView(TextInputType.phone, 11, TextDirection.ltr),
                        SizedBox(height: 20),
                        whiteDivider(),
                        Expanded(child:buttonView("حفظ"),),
                      ],
                    ),
                  ),
                )),
              ],
            ),
            Positioned(
              child: circleAvater(
                  "https://www.woolha.com/media/2020/03/eevee.png"),
              top: 150,
            ),
          ])),
    );
  }
}
