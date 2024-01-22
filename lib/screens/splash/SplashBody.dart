import 'dart:async';
import 'package:flutter/material.dart';
import 'package:social_app/config/assets.dart';
import 'package:social_app/screens/onboarding/onboarding.dart';
import '../../config/colors.dart';

class SplashBody extends StatefulWidget {
  static String routeName = '/splashScreen';

  const SplashBody({Key? key}) : super(key: key);

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(

       children:[
         Image.asset(
           ImageAssets.img48,
           width: 395,
           height: 812,
         ),
         Positioned(
           top: 129,
           child: Container(
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
                    height: 15,
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
         ),],
      ),
    );
  }
}
