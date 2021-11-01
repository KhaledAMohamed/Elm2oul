import 'package:elm2oul/Uitils/Constant.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';


class FirebaseUtili{

 static DatabaseReference _ref = FirebaseDatabase.instance.reference();


  static void saveNewUser(String name){
      String Id =  _ref.child(Constant.Users).push().key;
    _ref.child(Constant.Users).child(Id).child(Constant.UsersName).set(name);
  }

  static void register(String name){

  }

 // static Future<void> sendVerificationCode(String number) async {
 //   FirebaseUser user = (await FirebaseAuth.instance.
 //   signInWithEmailAndPassword(email: email, password: password))
 //       .user;
 //   // await FirebaseAuth.instance.verifyPhoneNumber(
 //   //   phoneNumber: '+201014838337',
 //   //   verificationCompleted: (PhoneAuthCredential credential) {},
 //   //   verificationFailed: (FirebaseAuthException e) {},
 //   //   codeSent: (String verificationId, int? resendToken) {},
 //   //   codeAutoRetrievalTimeout: (String verificationId) {},
 //   // );
 // }

}