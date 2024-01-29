import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Config/assets.dart';
import '../../Config/strings.dart';
import '../../Config/style.dart';
import '../../components/buttonstyle.dart';
import '../HomeScreens/Home/HomePageBar.dart';
class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}
class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
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
            left: screenWidth * 0.4,
            width: screenWidth * 0.25,
            height: screenHeight * 0.04,
            child: Image.asset(
              ImageAssets.img12,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: screenHeight * 0.28,
            left: screenWidth * 0.07,
            child: Container(
              width: screenWidth * 0.87,
              height: screenHeight * 0.64,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      AppStrings.headingCatagory,
                      style: fw700size20cntnrtext,
                    ),
                  ),
                  Expanded(
                    child: GridView(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: screenWidth * 0.05,
                        crossAxisSpacing: screenWidth * 0.05,
                      ),
                      shrinkWrap: true,
                      physics: PageScrollPhysics(),
                      children: [
                        GestureDetector(
                          onTap: () {
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset(
                              ImageAssets.img14,
                              fit: BoxFit.cover,
                              width: 180,
                              height: 153,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset(ImageAssets.img15,
                                fit: BoxFit.cover, width: 180, height: 153),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset(ImageAssets.img17,
                                fit: BoxFit.cover, width: 180, height: 153),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset(ImageAssets.img16,
                                fit: BoxFit.cover, width: 180, height: 153),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.01),
                  Center(
                    child: Text(
                      AppStrings.onboardtext,
                      style: fw400size14primary,
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.025),
                  Center(
                    child: MyElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (c) => BottomBar()));
                      },
                      label: AppStrings.Explorenow,
                    ),
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
