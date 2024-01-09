import 'package:flutter/material.dart';
import 'package:social_app/config/assets.dart';
import 'package:social_app/config/colors.dart';
import 'package:social_app/config/strings.dart';
import 'package:social_app/config/style.dart';

import '../auth/sign_in/sign_in.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

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
                height: 15,
              ),
              Image.asset(
                ImageAssets.img5,
                width: 345.4,
                height: 422.42,
              ),
              SizedBox(
                height: 15,
              ),
              Column(
                children: [
                  Text(AppStrings.onboardtext, style: t1TextStyle),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {  Navigator.push(context, MaterialPageRoute(builder: (c)=>LoginPage()));},
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(AppColors.onbrd_btn),
                      padding: MaterialStateProperty.all(
                        EdgeInsets.fromLTRB(14, 24, 14, 24), // Use EdgeInsets.all() or EdgeInsets.fromLTRB()
                      ),
                    ),
                    child: Text(
                      AppStrings.onboardbtn,
                      style: btnt1TextStyle,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
