import 'package:firebaseapp/firebase%20Services/splash_services.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  splashService splashScreen = splashService();
  void initstate() {
    super.initState();
    splashScreen.isLogin();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'firebase tutorial',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
