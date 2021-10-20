import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
class ChangeCompanyPassword extends StatefulWidget {
  const ChangeCompanyPassword({Key? key}) : super(key: key);

  @override
  _ChangeCompanyPasswordState createState() => _ChangeCompanyPasswordState();
}

class _ChangeCompanyPasswordState extends State<ChangeCompanyPassword> {
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
                    height: 150,
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
                        SizedBox(width: 30,),
                        Icon(
                            Icons.arrow_back_ios
                        ),
                        SizedBox(width: 50,),
                        Text(
                          "تعديل كلمة المرور",
                          style: TextStyle(
                            color: HexColor("#FFFFFF"),
                            fontSize: 30,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  child: Container(
                    width: double.infinity,
                    height: 20,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: HexColor("#FFFFFF"),
                        borderRadius: BorderRadius.only(
                            topLeft: const Radius.circular(40.0),
                            topRight: const Radius.circular(40.0))),
                  ),
                ),
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

                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text("كلمة المرور ",
                                        textDirection:TextDirection.rtl,
                                        style: TextStyle(
                                          color: Colors.white,

                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left: 10),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(Radius
                                            .circular(20))
                                    ),
                                    child: TextField(
                                      obscureText: true,
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "new  password",
                                        icon: Icon(Icons.remove_red_eye_outlined,
                                            color:Colors.black),
                                      ),
                                    ),
                                  ),

                                  Container(
                                    margin: const EdgeInsets.only(top: 15.0),
                                    child:  Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text("تاكيد كلمة المرور",
                                          textDirection:TextDirection.rtl,
                                          style: TextStyle(
                                            color: Colors.white,

                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                  Container(
                                    padding: EdgeInsets.only(left: 10),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(Radius
                                            .circular(20))
                                    ),
                                    child: TextField(
                                      obscureText: true,
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Confirm password",
                                        icon: Icon(Icons.remove_red_eye_outlined,
                                            color:Colors.black),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Expanded(
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                margin: const EdgeInsets.only(bottom: 20.0),
                                width: 200,
                                height: 45,
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(30.0))),
                                child: TextButton(
                                  onPressed: null,
                                  child: Text("حفظ"),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    )),
              ],
            ),
            Positioned(
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://www.woolha.com/media/2020/03/eevee.png'),
                maxRadius: 60,
                minRadius: 60,
              ),
              top: 110,
            ),
          ])),
    );
  }
}
