import 'package:elm2oul/Component/TextFieldViewPassword.dart';
import 'package:elm2oul/Component/bottonView.dart';
import 'package:elm2oul/Component/textFieldView.dart';
import 'package:elm2oul/Component/textView.dart';
import 'package:elm2oul/Uitils/Constant.dart';
import 'package:elm2oul/Uitils/Helper.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:toggle_switch/toggle_switch.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body:Container(
          height: double.infinity,
          width: double.infinity,
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
          child:Column(
            mainAxisSize: MainAxisSize.min,

            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(height: 60),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  textView("مرحبك بك", 3.5),
                ],
              ),
              SizedBox(height: 30),
              Row(

                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    // width: 300,
                    // height: 40,
                    margin: EdgeInsets.only(left: 15,right: 15),
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: ToggleSwitch(
                        labels: [
                          "دخول",
                          "تسجيل",
                        ],
                        minWidth: 250,
                        minHeight: 50,
                        initialLabelIndex: 0,
                        cornerRadius: 10,
                        activeFgColor: Colors.white,
                        inactiveBgColor: Colors.white,
                        inactiveFgColor: Colors.green,
                        activeBgColor: [Colors.green],
                        totalSwitches: 2,
                        iconSize: 2,
                        borderWidth: 1,
                        borderColor: [Colors.blueGrey],
                        activeBgColors: [
                          [HexColor("#4DE099")],
                          [HexColor("#4DE099")],
                        ],
                        onToggle: (index) {
                          if(index ==1)
                          {
                            Helper.gotoScreen(context, Constant.Register);
                          }

                        },
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.only(right
                    : 45),
                child: textView("رقم الهاتف", 1.5),
              ),
              textFieldView(TextInputType.phone,11,TextDirection.ltr),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(right
                    : 45),
                child: textView("كلمة المرور ", 1.5),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30,right: 30),
                child: TextFieldViewPassword(),
              ),
              SizedBox(height: 40,),

              Flexible (child: InkWell(
                  onTap: ()=>Helper.gotoScreen(context, Constant.Home),
                  child: buttonView("دخول")))



            ],
          )
      ) ,

    );
  }
}
