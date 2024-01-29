import 'package:flutter/material.dart';
import 'package:social_app/config/assets.dart';

class SplashBody extends StatefulWidget {
  static String routeName = '/splashScreen';

  const SplashBody({Key? key}) : super(key: key);

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            ImageAssets.img51,
            width: screenWidth,
            height: screenHeight,
            fit: BoxFit.cover,
          ),
          Positioned(
            top: screenHeight * 0.16,
            child: Container(
              width: screenWidth,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      ImageAssets.img6,
                      width: screenWidth * 0.265,
                      height: screenHeight * 0.0415,
                    ),
                    SizedBox(
                      height: screenHeight * 0.05,
                    ),
                    Image.asset(
                      ImageAssets.img5,
                      width: screenWidth * 0.92,
                      height: screenHeight * 0.52,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
