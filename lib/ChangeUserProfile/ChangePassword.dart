import 'package:elm2oul/Component/TextFieldViewPassword.dart';
import 'package:elm2oul/Component/arrowBackIcon.dart';
import 'package:elm2oul/Component/bottonView.dart';
import 'package:elm2oul/Component/circleAvatar.dart';
import 'package:elm2oul/Component/textView.dart';
import 'package:elm2oul/Component/whiteContainer.dart';
import 'package:elm2oul/Component/whiteDvider.dart';
import 'package:elm2oul/Uitils/Constant.dart';
import 'package:elm2oul/Uitils/Helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                          topRight: const Radius.circular(40.0),
                          bottomLeft: const Radius.circular(-40.0),
                          bottomRight: const Radius.circular(-40.0)),
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
                          onTap: ()=>Helper.gotoScreen(context, Constant.Profile),
                          child: arrowBack(),
                        ),
                        SizedBox(width: 80,),
                        textView("?????????? ???????? ????????????", 0.3,color: Colors.white)
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

                          Container(
                            width: 350,
                            margin: const EdgeInsets.only(top: 100.0),
                            padding: const EdgeInsets.only(bottom: 5),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    textView("???????? ???????????? ??????????????", 0.0,color: Colors.white)
                                  ],
                                ),
                                SizedBox(height:10),
                                TextFieldViewPassword(),
                                SizedBox(height:30),
                                Container(
                                  margin: const EdgeInsets.only(top: 15.0),
                                  padding: const EdgeInsets.only(bottom: 5),
                                  child:  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      textView("?????????? ???????? ????????????", 0.0,
                                        color: Colors.white)
                                    ],
                                  ),
                                ),
                                SizedBox(height:10),
                                TextFieldViewPassword(),
                              ],
                            )
                          ),



                          SizedBox(height: 40),
                          whiteDivider(),
                          Spacer(),
                          buttonView("??????",color: Colors.white,)
                        ],
                      ),
                    ),
                    )),
              ],
            ),
            Positioned(
              child:circleAvater(
                  'https://www.woolha.com/media/2020/03/eevee.png',Size: 50),
              top: 150,
            ),
          ])),
    );
  }
}
