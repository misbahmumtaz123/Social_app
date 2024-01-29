import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:social_app/screens/HomeScreens/Discovery/CreateCollectionScreen.dart';
import '../../../config/assets.dart';
import '../../../config/colors.dart';
import '../../../config/strings.dart';
import '../../../config/style.dart';
import 'challenge.dart';

class VeiwPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final appBarHeight = AppBar().preferredSize.height;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(
                          context,
                          MaterialPageRoute(
                              builder: (c) => ChallengeScreen()));
                    },
                    icon: SvgPicture.asset(SvgAssets.aro),
                  ),
                  Spacer(), // Use Spacer to distribute available space
                  IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(SvgAssets.plus),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(SvgAssets.dowload),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(SvgAssets.like1),
                  ),
                ],
              ),
            ),
          ],
        ),

        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: screenSize.width * 0.05,
                  vertical: screenSize.height * 0.02,
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: screenSize.width * 0.04,
                      backgroundImage: AssetImage(ImageAssets.img18),
                    ),
                    SizedBox(width: screenSize.width * 0.02),
                    Expanded(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            AppStrings.thanhpham,
                            style: fw4hsize16black,
                          ),
                          Spacer(),
                          Text(
                            AppStrings.ago,
                            style: fw4hsize14gery,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenSize.height * 0.01),
              Image.asset(
                ImageAssets.img20,
                fit: BoxFit.cover,
                height: screenSize.height * 0.3,
              ),
              SizedBox(height: screenSize.height * 0.002),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5, right: 0.5),
                    child: Text(
                      AppStrings.threehudrd,
                      style: fw4hsize14gery,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 1.0),
                    child: IconButton(
                      icon: SvgPicture.asset(
                        SvgAssets.eyes,
                        color: AppColors.primary,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Spacer(),
                  Text(
                    AppStrings.twnty,
                    style: fw4hsize14gery,
                  ),
                  IconButton(
                    icon: SvgPicture.asset(SvgAssets.msg),
                    onPressed: () {},
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 1.0),
                    child: Text(
                      AppStrings.onetwntyfine,
                      style: fw4hsize14gery,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 1.0),
                    child: IconButton(
                      icon: SvgPicture.asset(SvgAssets.like),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(left: 12, right: 12, top: 8),
                child: Text(
                  AppStrings.Streetpotrait,
                  style: fw7hsize20blck,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 12, right: 12),
                child: Text(
                  AppStrings.loerum1,
                  style: fw4hsize14lightblck,
                ),
              ),
              //////--------------
              Container(
                width: screenSize.width,
                height: screenSize.height * 0.15,
                padding: EdgeInsets.only(left: 1, top: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppColors.blckgrd,
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: screenSize.width * 0.08,
                        backgroundImage: AssetImage(ImageAssets.img18),
                      ),
                      SizedBox(width: screenSize.width * 0.02),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            AppStrings.bruno,
                            style: fw7hsize20blck,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text(
                              AppStrings.greatshot,
                              style: fw4hsize14black,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              AppStrings.seen,
                              style: fw4hsize12blackgry,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              /////------
              Container(
                width: screenSize.width,
                height: screenSize.height * 0.08,
                padding: EdgeInsets.fromLTRB(
                  screenSize.width * 0.04,
                  screenSize.height * 0.010,
                  screenSize.width * 0.04,
                  screenSize.height * 0.012,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: screenSize.width * 0.05,
                      backgroundImage: AssetImage(ImageAssets.img18),
                    ),
                    SizedBox(width: screenSize.width * 0.02),
                    Container(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (c) => CommentPage()));
                        },
                        child: Text(
                          AppStrings.comment,
                          style: fw4hsize12blackgry,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
