import 'package:flutter/material.dart';
import 'package:social_app/config/assets.dart';
import 'package:social_app/config/colors.dart';
import 'package:social_app/config/strings.dart';
import 'package:social_app/config/style.dart';

import '../auth/sign_in/sign_in.dart';

class OnBoarding extends StatelessWidget {
  static String routeName = "/onBoard";

  const OnBoarding({Key? key}) : super(key: key);

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
          Container(
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
                  SizedBox(
                    height: screenHeight * 0.02,
                  ),
                  Column(
                    children: [
                      Text(AppStrings.onboardtext, style: fw4hsize14white),
                      SizedBox(
                        height: screenHeight * 0.05,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (c) => LoginPage()),
                          );
                        },
                        style: ButtonStyle(
                          fixedSize: MaterialStateProperty.all(
                            Size(screenWidth * 0.50, screenHeight * 0.08),
                          ),
                          backgroundColor:
                          MaterialStateProperty.all(AppColors.onbrd_btn),
                          padding: MaterialStateProperty.all(
                            EdgeInsets.fromLTRB(
                              screenWidth * 0.0373,
                              screenHeight * 0.0148,
                              screenWidth * 0.0373,
                              screenHeight * 0.0148,
                            ),
                          ),
                        ),
                        child: Text(
                          AppStrings.onboardbtn,
                          style: fw7hsize16white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
