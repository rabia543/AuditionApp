import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../theme/app_colors.dart';
class AuthService{

  final FirebaseAuth _auth=FirebaseAuth.instance;
  Future<void>signIn({
    required String email,
    required String password,
})async{
    try{
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    }on FirebaseAuthException catch(e){
      String errorMessage="";
      if(e.code=='user-not-found'){
        errorMessage="no user found of that email";
      }
      else if( e.code=='wrong password'){
        errorMessage="The password is incorrect";
      }
      Fluttertoast.showToast(
        msg: errorMessage,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: AppColors.color10,
        textColor: Colors.white,
        fontSize: 16.0,
      );
    }
  }

  Future<void>signUp({
    required String email,
    required String password,
  })async{
    try{
      await _auth.createUserWithEmailAndPassword(email: email, password: password);
    }on FirebaseAuthException catch(e){
      String errorMessage="";
      if(e.code=='weak-password'){
        errorMessage="your password is weak, enter 6 digits";
      }
      else if( e.code=='email-already-in-use'){
        errorMessage="This emailed already in use,try another account";
      }
      Fluttertoast.showToast(
        msg: errorMessage,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: AppColors.color10,
        textColor: Colors.white,
        fontSize: 16.0,
      );
    }
  }
  Future<void>signOut()async{
    await _auth.signOut();
  }
}
