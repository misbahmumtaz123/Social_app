import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:social_app/config/colors.dart';
import 'package:social_app/screens/HomeScreens/Discovery/Newcollection.dart';

import '../../../Config/assets.dart';
import '../../../Config/strings.dart';
import '../../../Config/style.dart';
import 'CreateCollectionScreen.dart';


class CollectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return MaterialApp(
      home: Scaffold(
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5,top:25,right: 5,bottom: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                              child: Text(AppStrings.btn1collection,
                                  style: fw7hsize16black)),
                          //////////////-------------
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (c) =>NewCollectionScreen(),
                                ),
                              );
                            },
                            child: Text(
                              AppStrings.btn2collection,
                              style: fw4hsize14white,
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xFF888BF4),
                              minimumSize: Size(165.0, 25.0), // Set the width and height
                              padding: EdgeInsets.fromLTRB(8.0, 10.0, 8.0, 10.0), // Set the padding
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24.0),
                              ),
                            ),
                          ),
                        ],
                      ),

                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10.0,),
                      child:  Text(AppStrings.h1collection,style:fw4hsize16black ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(left: 25.0,bottom:25.0,right: 25.0),
                        child: GridView(
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 5,
                            crossAxisSpacing: 5,
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
                                  ImageAssets.img23,
                                  fit: BoxFit.cover,
                                  width: 158,
                                  height: 158,
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                print('Image 15 clicked');
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.asset(ImageAssets.img23,
                                    fit: BoxFit.cover, width: 158, height: 158),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                print('Image 17 clicked');
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(23),
                                child: Image.asset(ImageAssets.img23,
                                    fit: BoxFit.cover, width: 158, height: 158),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                print('Image 16 clicked');
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.asset(ImageAssets.img23,
                                    fit: BoxFit.cover, width: 158, height: 158),
                              ),
                            ),
                          ],
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
                                builder: (c) => CommentPage()));

                      },
                      icon: SvgPicture.asset(SvgAssets.cross),
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
