import 'dart:async';
import 'package:flutter/material.dart';
import 'package:social_app/screens/onboarding/onboarding.dart';
import 'package:social_app/screens/splash/SplashBody.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = "/splashScreen";

  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
          () => Navigator.pushReplacementNamed(context, OnBoarding.routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SplashBody(),
    );
  }
}
