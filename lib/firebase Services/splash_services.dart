import 'dart:async';
import 'package:firebaseapp/UI/auth/login_screen.dart';
import 'package:flutter/material.dart';

class splashService {
  void isLogin(BuildContext context) {
    Timer(
        Duration(seconds: 3),
        () => Navigator.push(context,
            MaterialPageRoute(builder: (context) => LoginScreen())));
  }
}
