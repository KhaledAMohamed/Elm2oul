import 'package:elm2oul/Component/arrowBackIcon.dart';
import 'package:elm2oul/Component/bottonPasswordCode.dart';
import 'package:elm2oul/Component/bottonView.dart';
import 'package:elm2oul/Component/textView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResetCode extends StatelessWidget {
  const ResetCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              arrowBack(),
              SizedBox(width: 75),
              textView('هل نسيت كلمة المرور ؟', 3),
            ],
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: textView("ادخل الكود", 3),
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
          Expanded(child: buttonView("ارسال الكود"))
          ],
      ),
    ),
    );
  }
}
