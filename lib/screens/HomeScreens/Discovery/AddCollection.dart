import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:social_app/config/colors.dart';
import 'package:social_app/screens/HomeScreens/Discovery/Newcollection.dart';
import 'package:social_app/screens/HomeScreens/Discovery/title.dart';
import '../../../Config/assets.dart';
import '../../../Config/strings.dart';
import '../../../Config/style.dart';
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
              height: screenSize.height,
              width: screenSize.width,
              child: Container(
                color: AppColors.bgblackish,
              ),
            ),
            // Background Card

            Positioned(
              top: screenSize.height * 0.33,
              left: screenSize.width * 0.02,
              width: screenSize.width * 0.95,
              height: screenSize.height * 0.67,
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
              top: screenSize.height * 0.35,
              width: screenSize.width * 0.99999,
              height: screenSize.height * 0.65,
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
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (c) => CollectionProfile(),
                                  ),
                                );
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
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (c) => CollectionProfile(),
                                  ),
                                );
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.asset(ImageAssets.img23,
                                    fit: BoxFit.cover, width: 158, height: 158),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (c) => CollectionProfile(),
                                  ),
                                );
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(23),
                                child: Image.asset(ImageAssets.img25,
                                    fit: BoxFit.cover, width: 158, height: 158),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (c) => CollectionProfile(),
                                  ),
                                );
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.asset(ImageAssets.img25,
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
              top: screenSize.height * 0.325,
              left: screenSize.width * 0.44,
              width: screenSize.width * 0.09,
              height: screenSize.height * 0.045,
              child: Center(
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(45),
                    color: Colors.white,
                  ),
                  child: Center(
                    child: IconButton(
                      icon: SvgPicture.asset(
                        SvgAssets.cross,
                      ),
                      onPressed: () {
                        Navigator.pop(
                          context,
                          MaterialPageRoute(
                            builder: (c) => CollectionScreen(),
                          ),
                        );
                      },
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
