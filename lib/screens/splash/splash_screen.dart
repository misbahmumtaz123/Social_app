import 'dart:async';
import 'package:flutter/material.dart';
import 'package:social_app/screens/splash/SplashBody.dart';

import '../../Config/Colors.dart';
import '../onboarding/onboarding.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds:3),
            () => Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => OnBoarding()),
              (Route<dynamic> route) => false,
        ));

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SplashBody(),
      ),
    );
  }
}
