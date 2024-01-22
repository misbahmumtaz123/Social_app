import 'package:flutter/material.dart';
import 'package:social_app/config/strings.dart';
import 'package:social_app/config/style.dart';
import '../../config/assets.dart';
import '../HomeScreens/Home/HomePageBar.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            width: 375,
            height: 139,
            child: Image.asset(
              ImageAssets.img13,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 76.74,
            left: 148,
            width: 80,
            height: 27.12,
            child: Image.asset(
              ImageAssets.img12,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 165,
            left: 25,
            child: Container(
              width: 325,
              height: 550,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                      child: Text(
                    AppStrings.headingCatagory,
                    style: fw700size20cntnrtext,
                  )),
                  Expanded(
                    child: GridView(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 20,
                        crossAxisSpacing: 20,
                      ),
                      shrinkWrap: true,
                      physics: PageScrollPhysics(),
                      children: [
                        GestureDetector(
                          onTap: () {
                            print('Image 14 clicked');
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
                            print('Image 15 clicked');
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset(ImageAssets.img15,
                                fit: BoxFit.cover, width: 180, height: 153),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            print('Image 17 clicked');
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset(ImageAssets.img17,
                                fit: BoxFit.cover, width: 180, height: 153),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            print('Image 16 clicked');
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
                  SizedBox(height: 10),
                  Center(
                      child: Text(
                    AppStrings.onboardtext,
                    style: fw400size14primary,
                  )),
                  SizedBox(height: 50),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (c) => BottomBar()),
                      );
                    },
                    child: Text(
                      AppStrings.Explorenow,
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF888BF4),
                      onPrimary: Colors.transparent,
                      shadowColor: Colors.transparent,
                      elevation: 0,
                      minimumSize: Size(325, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 10,
                      ),
                      textStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        height: 1.4,
                        letterSpacing: 0.6,
                      ),
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
