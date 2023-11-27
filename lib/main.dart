import 'package:firebaseapp/Homepage.dart';
import 'package:firebaseapp/UI/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Firebase app',
        theme: ThemeData(primarySwatch: Colors.deepPurple),
        home: SplashScreen());
  }
}
