import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:social_app/screens/HomeScreens/Discovery/AddCollection.dart';

import '../../../components/Textfields/emailtextfield.dart';
import '../../../components/buttonstyle.dart';
import '../../../config/assets.dart';
import '../../../config/colors.dart';
import '../../../config/strings.dart';

class NewCollectionScreen extends StatelessWidget {
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
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: screenSize.width * 0.05,
                          vertical: screenSize.height * 0.02,
                        ),
                        child: MyTextField(
                          hintText: AppStrings.textfield,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: screenSize.width * 0.07,
                          vertical: screenSize.height * 0.015,
                        ),
                        child: MyElevatedButton(
                          onPressed: () {},
                          label: AppStrings.btn,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
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
