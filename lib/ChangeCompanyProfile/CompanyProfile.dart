import 'package:flutter/cupertino.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';

class CompanyProfile extends StatelessWidget {
  const CompanyProfile({Key? key}) : super(key: key);

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
                        Image.asset("lib/Images/ArrowBack.png",
                          width: 30,
                          height: 30,),
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
                            margin: EdgeInsets.only(top: 100),
                            child: Text(
                                "احمد مجدي"
                            ),
                          ),
                          SizedBox(height: 100,),
                          Container(
                            margin: const EdgeInsets.only(
                                top:10.0),
                            child:  Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 30.0),
                                  child: Icon(Icons.arrow_back_ios),
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 30.0),
                                  child: Text("تسجيل الخروج"),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            width: 320,
                            child: Divider(color: Colors.white),
                          ),




                          Container(
                            margin: const EdgeInsets.only(
                                top:10.0),
                            child:  Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 30.0),
                                  child: Icon(Icons.arrow_back_ios),
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 30.0),
                                  child: Text("تسجيل الخروج"),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            width: 320,
                            child: Divider(color: Colors.white),
                          ),



                          Container(
                            margin: const EdgeInsets.only(
                                top:10.0),
                            child:  Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 30.0),
                                  child: Icon(Icons.arrow_back_ios),
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 30.0),
                                  child: Text("تسجيل الخروج"),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            width: 320,
                            child: Divider(color: Colors.white),
                          ),




                          Container(
                            margin: const EdgeInsets.only(
                                top:10.0),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 30.0),
                                  child: Icon(Icons.arrow_back_ios),
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 30.0),
                                  child: Text("تسجيل الخروج"),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            width: 320,
                            child: Divider(color: Colors.white),
                          ),


                          Container(
                            margin: const EdgeInsets.only(
                                top:10.0),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 30.0),
                                  child: Icon(Icons.arrow_back_ios),
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 30.0),
                                  child: Text("تسجيل الخروج"),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            width: 320,
                            child: Divider(color: Colors.white),
                          ),




                          Container(
                              margin: const EdgeInsets.only(
                                  top:10.0),
                              child: Expanded(
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 30.0),
                                      child: Icon(Icons.arrow_back_ios),
                                    ),
                                    Spacer(),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          right: 30.0),
                                      child: Text("تسجيل الخروج"),
                                    )
                                  ],
                                ),
                              )
                          ),
                          SizedBox(height: 5,),

                          Container(
                            width: 320,
                            child: Divider(color: Colors.white),
                          ),



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
                maxRadius: 75,
                minRadius: 75,
              ),
              top: 110,
            ),
          ])),
    );
  }
}
