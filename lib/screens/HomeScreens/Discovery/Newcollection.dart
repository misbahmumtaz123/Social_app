import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:social_app/screens/HomeScreens/Discovery/AddCollection.dart';

import '../../../config/assets.dart';
import '../../../config/colors.dart';
import '../../../config/strings.dart';
import '../../../config/style.dart';


class NewCollectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return MaterialApp(
        home:Scaffold(
          body: Stack(
            children: [
              Positioned(
                top: 0,
                height: 812,
                width: 375,
                child: Container(
                  color: AppColors.bgblackish,
                ),
              ),
              // Background Card
              Positioned(
                top: 270,
                left: 15,
                width: 333,
                height: 545,
                child: Card(
                  color: AppColors.gggg,
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(0),
                      bottomRight: Radius.circular(0),
                    ),
                  ),
                ),
              ),

              // Foreground Card
              Positioned(
                top: 285,
                width: 360,
                height: 545,
                child: Container(
                  margin: EdgeInsets.all(1.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  ////-------------------work here
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20,top: 20,right:20,bottom: 10),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: AppStrings.textfield,
                            hintStyle: fw400size16txtintxtfld,
                            fillColor: AppColors.txtfldclr,
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              borderSide: BorderSide.none,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              borderSide: BorderSide.none,
                            ),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 13,
                              horizontal: 20,
                            ),
                          ),
                          obscureText: true,
                        ),

                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 14,top: 15,right:14,bottom: 15,
                        ),
                        child: ElevatedButton(
                          onPressed: () {

                          },
                          child: Text(
                            AppStrings.btn,
                            style: TextStyle(color: AppColors.white),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFF888BF4),
                            onPrimary: Colors.transparent,
                            shadowColor: Colors.transparent,
                            elevation: 0,
                            minimumSize: Size(315, 52),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 14),
                            textStyle: TextStyle(
                              fontSize: 16, // Change this to your desired font size
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),

                      ),
                    ],
                  ),
                ),
              ),

              //Icon
              Positioned(
                top: 262,
                left: 165,
                width: 36,
                height: 36,
                child: Center(
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(36),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.pop(
                              context,
                              MaterialPageRoute(
                                  builder: (c) =>CollectionScreen()));
                        },
                        icon: SvgPicture.asset(SvgAssets.cross),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
    );
  }
}
