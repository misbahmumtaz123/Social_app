import 'dart:async';
import 'package:flutter/material.dart';
import 'package:social_app/screens/bording/bording.dart';
import '../../config/assets.dart';
import '../../config/colors.dart';

class SplashScreen extends StatefulWidget {
  static String routeName = '/splashScreen';

  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 5),
          () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Bording()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColors.backgrnd1, AppColors.backgrnd2],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                ImageAssets.img6,
                width: 99.88,
                height: 33.86,
              ),
              SizedBox(
                height: 10,
              ),
              Image.asset(
                ImageAssets.img5,
                width: 345.4,
                height: 422.42,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
