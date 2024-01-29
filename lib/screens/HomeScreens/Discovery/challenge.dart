import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:social_app/config/assets.dart';
import 'package:social_app/config/colors.dart';
import 'package:social_app/config/strings.dart';
import 'package:social_app/config/style.dart';
import 'package:social_app/screens/HomeScreens/Discovery/ViewMoreScreen.dart';

import '../../../components/buttonstyle.dart';
import 'SubmitshortScreen.dart';

class ChallengeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final cardHeight = screenSize.height * 0.065;

    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              width: screenSize.width,
              height: screenSize.height * 0.33,
              child: Image.asset(
                ImageAssets.img20,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: screenSize.height * 0.075,
              left: screenSize.width * 0.0667,
              width: screenSize.width * 0.0853,
              height: screenSize.width * 0.0853,
              child: Container(
                padding: EdgeInsets.all(screenSize.width * 0.01),
                decoration: BoxDecoration(
                  color: AppColors.blk,
                  borderRadius: BorderRadius.circular(6.0),
                ),
                child: Center(
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context,
                          MaterialPageRoute(builder: (c) => SearchPage()));
                    },
                    icon: SvgPicture.asset(SvgAssets.arrow),
                  ),
                ),
              ),
            ),
            Positioned(
              top: screenSize.height * 0.21,
              left: screenSize.width * 0.125,
              width: screenSize.width * 0.76,
              height: cardHeight,
              child: Card(
                color: Colors.white,
                child: Center(
                  child: Text(AppStrings.heading1, style: fw7hsize16black),
                ),
              ),
            ),
            Positioned(
              top: screenSize.height * 0.272,
              width: screenSize.width,
              height: screenSize.height - (screenSize.height * 0.28),
              child: Center(
                child: SingleChildScrollView(
                  child: Container(
                    color: AppColors.white,
                    child: Padding(
                      padding: EdgeInsets.all(screenSize.width * 0.1),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: screenSize.width * 0.9,
                            height: cardHeight,
                            padding: EdgeInsets.all(screenSize.width * 0.04),
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
                                SizedBox(width: screenSize.width * 0.04),
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
                            height: cardHeight,
                            padding: EdgeInsets.all(screenSize.width * 0.04),
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
                                SizedBox(width: screenSize.width * 0.04),
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
                            child: MyElevatedButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (c) => VeiwPage()));
                              },
                              label: AppStrings.buttnshot,
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
                              ),
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
                          SizedBox(height: screenSize.width * 0.025),
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(ImageAssets.img37),
                                  SizedBox(width: 15),
                                  Text(
                                    AppStrings.challenge,
                                    style: fw7hsize20black,
                                  ),
                                  SizedBox(width: 15),
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
                                  SizedBox(width: 15),
                                  Text(
                                    AppStrings.inspiration,
                                    style: fw7hsize20black,
                                  ),
                                  SizedBox(width: 10),
                                  Image.asset(ImageAssets.img37),
                                ],
                              ),
                              SizedBox(height: 15),
                              Row(
                                children: [
                                  Expanded(
                                    child: Image.asset(ImageAssets.img33),
                                  ),
                                  SizedBox(width: 5),
                                  Expanded(
                                    child: Image.asset(ImageAssets.img34),
                                  ),
                                ],
                              ),
                              SizedBox(height: 15),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(ImageAssets.img37),
                                  SizedBox(width: 15),
                                  Text(
                                    AppStrings.trending,
                                    style: fw7hsize20black,
                                  ),
                                  SizedBox(width: 10),
                                  Image.asset(ImageAssets.img37),
                                ],
                              ),
                              SizedBox(height: 15),
                              Row(
                                children: [
                                  Expanded(
                                    child: Image.asset(ImageAssets.img35),
                                  ),
                                  SizedBox(width:5),
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
