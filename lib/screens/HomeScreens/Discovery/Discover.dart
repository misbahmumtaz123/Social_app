import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:social_app/screens/HomeScreens/Discovery/ViewMoreScreen.dart';
import '../../../components/Textfields/searchtextfield.dart';
import '../../../config/assets.dart';
import '../../../config/colors.dart';
import '../../../config/strings.dart';
import '../../../config/style.dart';
import '../../../models/DiscoverModel.dart';

class Discover extends StatefulWidget {
  const Discover({Key? key}) : super(key: key);

  @override
  State<Discover> createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          double screenWidth = constraints.maxWidth;

          return Column(
            children: [
              SizedBox(height: 45),
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
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(CircleBorder()),
                        padding: MaterialStateProperty.all(
                          EdgeInsets.all(screenWidth * 0.027),
                        ),
                        backgroundColor: MaterialStateProperty.all(
                          AppColors.gry,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.05,
                      vertical: screenWidth * 0.05,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        buildCategoryRow(AppStrings.topics),
                        buildImageListView(images1, screenWidth, 100),
                        buildCategoryRow(AppStrings.collection),
                        buildImageListView(images, screenWidth, 200),
                        buildCategoryRow(AppStrings.collection),
                        buildImageListView(images, screenWidth, 200),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget buildCategoryRow(String category) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          Text(category, style: fw7hsize20blck),
          Spacer(),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (c) => SearchPage()),
              );
            },
            child: Text(
              AppStrings.viewmore,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: AppColors.primary,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildImageListView(List<String> imageList, double screenWidth, double height) {
    return Container(
      height: height,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: imageList.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
            },
            child: Container(
              margin: EdgeInsets.all(8.0),
              width: screenWidth * 0.4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                  image: AssetImage(imageList[index]),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

