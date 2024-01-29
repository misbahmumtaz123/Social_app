import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../Config/Colors.dart';
import '../../../Config/assets.dart';
import '../../../Config/strings.dart';
import '../../../components/Textfields/searchtextfield.dart';
import '../../../models/homeModel.dart';
import 'HomepostClass.dart';

class HomePageBody extends StatefulWidget {
  const HomePageBody({Key? key}) : super(key: key);

  @override
  State<HomePageBody> createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  String selectedCategory = AppStrings.popular;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: screenHeight * 0.02),
            child: Container(
              width: screenWidth,
              color: AppColors.white,
              child: Column(
                children: [
                  SizedBox(height: 30),
                  Row(
                    children: [
                      Expanded(
                        child: SearchTextField(
                          onChanged: (value) {},
                        ),
                      ),
                      Container(
                        child: ElevatedButton(
                          onPressed: () {},
                          child: SvgPicture.asset(
                            SvgAssets.share,
                            width: screenWidth * 0.064,
                            height: screenWidth * 0.064,
                          ),
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(screenWidth * 0.027),
                            primary: AppColors.gry,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      buildCategoryText(AppStrings.popular, screenWidth),
                      buildCategoryText(AppStrings.trending, screenWidth),
                      buildCategoryText(AppStrings.following, screenWidth),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemCount: posts.length,
              itemBuilder: (context, index) {
                PostModel post = posts[index];
                return buildPostContainer(context, post);
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(height: screenHeight * 0.03);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCategoryText(String category, double screenWidth) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedCategory = category;
        });
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.0427,
            vertical: screenWidth * 0.0213,
          ),
          decoration: BoxDecoration(
            color: selectedCategory == category
                ? AppColors.gryshdbtn
                : Colors.transparent,
            borderRadius: BorderRadius.circular(screenWidth * 0.0213),
          ),
          child: Text(
            category,
            style: TextStyle(
              fontSize: screenWidth * 0.048,
              fontWeight: selectedCategory == category
                  ? FontWeight.bold
                  : FontWeight.normal,
              color: selectedCategory == category
                  ? AppColors.primary
                  : Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}
