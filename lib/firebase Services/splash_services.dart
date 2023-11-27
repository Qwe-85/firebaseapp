import 'dart:async';
import 'dart:js';
import 'package:firebaseapp/UI/auth/login_screen.dart';
import 'package:flutter/material.dart';

class splashService {
  void isLogin() {
    Timer(Duration(seconds: 3),() =>
      Navigator.push(
          context as BuildContext, MaterialPageRoute(builder: (context) => LoginScreen()))
    );
  }
}
