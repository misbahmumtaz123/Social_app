import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:social_app/screens/HomeScreens/Profile/MessagesScreen.dart';
import 'package:social_app/screens/HomeScreens/Profile/ShortsClass.dart';

import '../../../Config/Colors.dart';
import '../../../Config/assets.dart';
import '../../../Config/strings.dart';
import '../../../Config/style.dart';
import '../../../models/profileModelShots.dart';

class ProfilepageFollow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(body: ProfilePage()),
    );
  }
}

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool isFilterVisible = true;
  bool ispicVisible = false;
  bool isMessagesButtonPressed = false;
  bool isDonationButtonPressed = false;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              width: screenWidth,
              height: screenHeight * 0.2,
              child: Image.asset(
                ImageAssets.img13,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: screenHeight * 0.10,
              left: screenWidth * 0.28,
              width: 247,
              height: 17,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(AppStrings.brunopham, style: fw7hsize14white),
                  SizedBox(width: screenWidth * 0.05),
                  ElevatedButton(
                    onPressed: () {

                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      onPrimary: AppColors.primary,
                      side: BorderSide(width: 2, color: AppColors.primary),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Text(
                      'Follow',
                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: screenHeight * 0.16,
              left: screenWidth * 0.39,
              child: Column(
                children: [
                  Container(
                    width: screenWidth * 0.21,
                    height: screenWidth * 0.21,
                    child: Image.asset(
                      ImageAssets.img39,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: screenHeight * 0.25,
              child: Container(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: screenWidth * 0.0, top: screenHeight * 0.02),
                      child: Text(AppStrings.bru, style: fw7hsize20blck),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: screenWidth * 0.0),
                      child: Text(AppStrings.Da, style: fw4hsize16blackprpl),
                    ),
                    Padding(
                      padding: EdgeInsets.all(screenWidth * 0.04),
                      child: Container(
                        height: screenHeight * 0.05,
                        width: screenWidth * 0.92,
                        color: AppColors.fldclrgry,
                        child: Padding(
                          padding: EdgeInsets.only(left: screenWidth * 0.04),
                          child: Row(
                            children: [
                              Text(AppStrings.twnty, style: fw7hsize16black),
                              SizedBox(width: screenWidth * 0.01),
                              Text(AppStrings.followers, style: fw4hsize16blackprpl),
                              SizedBox(width: screenWidth * 0.3),
                              Text(AppStrings.twnty, style: fw7hsize16black),
                              SizedBox(width: screenWidth * 0.01),
                              Text(AppStrings.following, style: fw4hsize16blackprpl),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset(SvgAssets.global),
                        ),
                        SizedBox(width: screenWidth * 0.02),
                        Image.asset(
                          ImageAssets.img37,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(width: screenWidth * 0.02),
                        IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset(SvgAssets.insta),
                        ),
                        SizedBox(width: screenWidth * 0.02),
                        Image.asset(
                          ImageAssets.img37,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(width: screenWidth * 0.02),
                        IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset(SvgAssets.fb),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () {
                            setState(() {
                              isFilterVisible = true;
                              ispicVisible = false;
                              // Set to false to show GridView
                            });
                          },
                          child: Text(AppStrings.collection0),
                        ),
                        SizedBox(width: screenWidth * 0.16),
                        TextButton(
                          onPressed: () {
                            setState(() {
                              isFilterVisible = false;
                              ispicVisible = true;
                            });
                          },
                          child: Text(AppStrings.shot10),
                        ),
                      ],
                    ),
                    Center(
                      child: Padding(
                        padding: EdgeInsets.only(top: screenHeight * 0.04, bottom: screenHeight * 0.07),
                        child: Visibility(
                          visible: !ispicVisible,
                          child: Image.asset(
                            ImageAssets.img40,
                            fit: BoxFit.cover,
                            height: screenHeight * 0.22,
                            width: screenHeight * 0.22,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.53,
              child: SingleChildScrollView(
                child: Visibility(
                  visible: !isFilterVisible,
                  child: Padding(
                    padding: EdgeInsets.only(left: screenWidth * 0.026, right: screenWidth * 0.066),
                    child: Container(
                      height: screenHeight * 0.3,
                      width: screenWidth,
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: screenWidth * 0.04,
                          mainAxisSpacing: screenHeight * 0.03,
                        ),
                        itemCount: shotdata.length,
                        itemBuilder: (BuildContext context, int index) {
                          return ShotClass(shots: shotdata[index]);
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.90,
              child: Container(
                height: screenHeight * 0.1,
                width: screenWidth,
                color: AppColors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: screenWidth * 0.04,left: screenWidth * 0.04),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            isDonationButtonPressed = !isDonationButtonPressed;
                            // Add functionality for Donation button
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: isDonationButtonPressed ? AppColors.primary : Colors.white,
                          onPrimary: isDonationButtonPressed ? Colors.white : AppColors.primary,
                          padding: EdgeInsets.symmetric(vertical: screenHeight * 0.02, horizontal: screenWidth * 0.12),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(screenHeight * 0.03),
                            side: BorderSide(
                              width: 1,
                              color: AppColors.primary, // Border color is primary color
                            ),
                          ),
                        ),
                        child: Text(AppStrings.Donation),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: screenWidth * 0.08),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            isMessagesButtonPressed = !isMessagesButtonPressed;
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (c) => MessagesPage()));
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: isMessagesButtonPressed ? AppColors.primary : Colors.white,
                          onPrimary: isMessagesButtonPressed ? Colors.white : AppColors.primary,
                          padding: EdgeInsets.symmetric(vertical: screenHeight * 0.02, horizontal: screenWidth * 0.12),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(screenHeight * 0.03),
                            side: BorderSide(
                              width: 1,
                              color: AppColors.primary,
                            ),
                          ),
                        ),
                        child: Text(AppStrings.messagess),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
