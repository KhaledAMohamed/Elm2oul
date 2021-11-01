import 'package:elm2oul/Component/arrowBackIcon.dart';
import 'package:elm2oul/Component/bottonPasswordCode.dart';
import 'package:elm2oul/Component/bottonView.dart';
import 'package:elm2oul/Component/textView.dart';
import 'package:elm2oul/Uitils/Constant.dart';
import 'package:elm2oul/Uitils/Helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResetCode extends StatelessWidget {
  const ResetCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/Images/Background.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(height: 50),
          Row(
            children: [
              InkWell(
                  onTap:()=>Helper.gotoScreen(context, Constant.ResetPhone),
                  child: arrowBack()),
              SizedBox(width: 75),
              textView('هل نسيت كلمة المرور ؟', 3,color: Colors.white),
            ],
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.only(right: 25),
            child: textView("ادخل الكود", 3,color: Colors.white),
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: bottonPasswordCode(),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: bottonPasswordCode(),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: bottonPasswordCode(),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: bottonPasswordCode(),
                ),
              ],
            ),
          Spacer(),
          InkWell(
            onTap: ()=>Helper.gotoScreen(context, Constant.ResetPassword),
              child: buttonView("ارسال الكود",color: Colors.white))
          ],
      ),
    ),
    );
  }
}
