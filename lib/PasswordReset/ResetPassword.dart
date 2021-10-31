import 'package:elm2oul/Component/TextFieldViewPassword.dart';
import 'package:elm2oul/Component/arrowBackIcon.dart';
import 'package:elm2oul/Component/bottonView.dart';
import 'package:elm2oul/Component/textView.dart';
import 'package:flutter/material.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

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
          children: [
            SizedBox(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.start, //change here don't //worked
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                arrowBack(),
              ],
            ),
            SizedBox(height:80),
            Container(
              margin: const EdgeInsets.only(top: 15.0,right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  textView("كلمة المرور الجديده", 0.0)
                ],
              ),
            ),
            SizedBox(height:10),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: TextFieldViewPassword(),
            ),
            SizedBox(height:30),
            Container(
              margin: const EdgeInsets.only(top: 15.0,right: 20),
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  textView("تاكيد كلمة المرور", 0.0)
                ],
              ),
            ),
            SizedBox(height:10),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: TextFieldViewPassword(),
            ),
            Expanded(child: buttonView("حفظ")),
          ],
        ),


      ),
    );
  }
}
