import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:social_app/config/assets.dart';
import 'package:social_app/config/colors.dart';
import 'package:social_app/config/strings.dart';
import 'package:social_app/config/style.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:social_app/screens/HomeScreens/Discovery/ViewMoreScreen.dart';

import 'SubmitshortScreen.dart';

class ChallengeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              width: 375,
              height: 250,
              child: Image.asset(
                ImageAssets.img20,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 54,
              left: 25,
              width: 32,
              height: 32,
              child: Container(
                padding: EdgeInsets.all(0.04),
                decoration: BoxDecoration(
                  color: AppColors.blk,
                  borderRadius: BorderRadius.circular(6.0),
                ),
                child: Center(
                  child: IconButton(
                    onPressed: () {
    Navigator.pop(context,
    MaterialPageRoute(builder: (c) => Search()));
                    },
                    icon: SvgPicture.asset(SvgAssets.arrow),
                  ),
                ),
              ),


            ),
            //-----------------
            Positioned(
              top: 230,
              left: 35,
              width: 285,
              height: 45,
              child: Card(
                color: Colors.white,
                child: Center(
                  child: Text(AppStrings.heading1, style: fw7hsize14black),
                ),
              ),
            ),
            Positioned(
              top: 272,
              width: screenSize.width,
              height: screenSize.height - 280,
              child: Center(
                child: SingleChildScrollView(
                  child: Container(
                    color: AppColors.white,
                    child: Padding(
                      padding: EdgeInsets.all(screenSize.width * 0.10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: screenSize.width * 0.9,
                            height: 49,
                            padding: EdgeInsets.all(14),
                            decoration: BoxDecoration(
                              color: AppColors.txtfldclr,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  AppStrings.Deadline,
                                  style: fw7hsize16black,
                                ),
                                SizedBox(width: 16),
                                Text(
                                  AppStrings.left30,
                                  style: fw4hsize14lightblck,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: screenSize.width * 0.025),
                          Container(
                            width: screenSize.width * 0.9,
                            height: 49,
                            padding: EdgeInsets.all(14),
                            decoration: BoxDecoration(
                              color: AppColors.txtfldclr,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  AppStrings.Price,
                                  style: fw7hsize16black,
                                ),
                                SizedBox(width: 16),
                                Text(
                                  AppStrings.price$,
                                  style: fw4hsize14lightblck,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: screenSize.width * 0.025),
                          Text(
                            AppStrings.beforebtn,
                            style: fw4hsize14lightblck,
                          ),
                          SizedBox(height: screenSize.width * 0.025),
                          Center(
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (c) => VeiwPage()));
                              },
                              child: Text(
                                AppStrings.buttnshot,
                                style: TextStyle(color: AppColors.white),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xFF888BF4),
                                onPrimary: Colors.transparent,
                                shadowColor: Colors.transparent,
                                elevation: 0,
                                minimumSize: Size(
                                    screenSize.width * 0.84,
                                    screenSize.width * 0.12),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                                padding: EdgeInsets.symmetric(
                                    horizontal: screenSize.width * 0.05),
                                textStyle: TextStyle(
                                  fontSize: screenSize.width * 0.042,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: screenSize.width * 0.025),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              RichText(
                                text: TextSpan(
                                  style: fw4hsize14lightblck,
                                  children: [
                                    TextSpan(text: ' '),
                                    TextSpan(
                                      text: AppStrings.threefity,
                                      style: fw400size14primary,
                                    ),
                                    TextSpan(text: ' '),
                                    TextSpan(text: AppStrings.joinpeople),
                                  ],
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: screenSize.width * 0.05),
                          Container(
                            width: double.infinity,
                            child: Divider(
                              height: 5,
                              color: AppColors.onbrd_btn,
                              thickness: 2,
                            ),
                          ),
                          SizedBox(height: screenSize.width * 0.025),
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(ImageAssets.img37),
                                  SizedBox(width: 5),
                                  Text(
                                    AppStrings.challenge,
                                    style: fw7hsize20black,
                                  ),
                                  SizedBox(width: 5),
                                  Image.asset(ImageAssets.img37),
                                ],
                              ),
                              SizedBox(height: 5),
                              Center(
                                child: Text(
                                  AppStrings.loerum1,
                                  style: fw4hsize14lightblck,
                                ),
                              ),
                              SizedBox(height: 5),
                              Center(
                                child: Text(
                                  AppStrings.loerum1,
                                  style: fw4hsize14lightblck,
                                ),
                              ),
                              SizedBox(height: 5),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(ImageAssets.img37),
                                  SizedBox(width: 5),
                                  Text(
                                    AppStrings.inspiration,
                                    style: fw7hsize20black,
                                  ),
                                  SizedBox(width: 5),
                                  Image.asset(ImageAssets.img37),
                                ],
                              ),
                              SizedBox(height: 5),
                              Row(
                                children: [
                                  Expanded(
                                    child: Image.asset(ImageAssets.img33),
                                  ),
                                  SizedBox(width: 2),
                                  Expanded(
                                    child: Image.asset(ImageAssets.img34),
                                  ),
                                ],
                              ),
                              SizedBox(height: 5),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Image.asset(ImageAssets.img37),
                                  ),

                                  Text(
                                    AppStrings.trend,
                                    style: fw7hsize20black,
                                  ),

                                  Expanded(
                                    child: Image.asset(ImageAssets.img37),
                                  ),
                                ],
                              ),
                              SizedBox(height: 5),
                              Row(
                                children: [
                                  Expanded(
                                    child: Image.asset(ImageAssets.img35),
                                  ),
                                  SizedBox(width: 2),
                                  Expanded(
                                    child: Image.asset(ImageAssets.img35),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}