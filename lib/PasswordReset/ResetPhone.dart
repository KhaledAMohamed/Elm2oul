import 'package:elm2oul/Component/arrowBackIcon.dart';
import 'package:elm2oul/Component/bottonView.dart';
import 'package:elm2oul/Component/textFieldView.dart';
import 'package:elm2oul/Component/textView.dart';
import 'package:elm2oul/Component/whiteDvider.dart';
import 'package:elm2oul/Uitils/Constant.dart';
import 'package:elm2oul/Uitils/Helper.dart';
import 'package:flutter/material.dart';

class ResetPhone extends StatelessWidget {
  const ResetPhone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/Images/Background.jpeg'),
            fit: BoxFit.cover
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
              child: textView("رقم الهاتف", 3),
            ),
            Padding(
              padding: const EdgeInsets.only(right:15 ),
              child: textFieldView(TextInputType.phone, 11, TextDirection.ltr),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(10),
              child: textView(
                  "سوف نقوم بارسال كود مكون من أربع أرقام على رقم الهاتف",
                  1.5),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10),
              child: whiteDivider(),
            ),
            InkWell(
                child: Expanded(child: buttonView("ارسال")),
            onTap: ()=> Helper.gotoScreen(context, Constant.ResetCode)),
          ],
        ),
      ),
    );
  }
}
