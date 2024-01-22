import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:social_app/config/strings.dart';

import '../../../config/assets.dart';
import '../../../config/colors.dart';
import '../../../config/style.dart';
import 'Notification.dart';

class ActivityScreen extends StatefulWidget {

  @override
  State<ActivityScreen> createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen> {
  bool showCollections = true;
  bool showFollows = true;
  bool showLikes = true;
  bool showDonate = true;
  bool showCommentLikes = true;
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return MaterialApp(
        home:Scaffold(
          body: Stack(
            children: [
              //first conatainer
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

              // Foreground container
              Positioned(
                top: 285,
                width: 360,
                height: 545,
                child: Container(
                  margin: EdgeInsets.all(1.0),
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  ////-------------------
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(AppStrings.headingactivity,style:  fw7hsize20black),
                        )),
                        SizedBox(height: 15),
                        Container(
                          width: 335,
                          height: 52,
                          padding: EdgeInsets.fromLTRB(14, 14, 14, 20),
                          decoration: BoxDecoration(
                            color: AppColors.fldclrgry,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                AppStrings.Collection,
                                style: fw4hsize16black,
                              ),
                              Container(
                                width: 42,
                                height: 2,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: showCollections ? AppColors.primary : AppColors.gggg,
                                ),
                                child: CupertinoSwitch(
                                  activeColor:AppColors.primary,
                                  trackColor: AppColors.gggg,
                                  value: showCollections,
                                  onChanged: (value) {
                                    setState(() {
                                      showCollections = value;
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 15),
                        Container(
                          width: 335,
                          height: 52,
                          padding: EdgeInsets.fromLTRB(14, 14, 14, 20),
                          decoration: BoxDecoration(
                            color: AppColors.fldclrgry,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                AppStrings.Like,
                                style: fw4hsize16black,
                              ),
                              Container(
                                width: 42,
                                height: 2,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: showLikes ? AppColors.primary : AppColors.gggg,
                                ),
                                child: CupertinoSwitch(
                                  activeColor:AppColors.primary,
                                  trackColor: AppColors.gggg,
                                  value: showLikes,
                                  onChanged: (value) {
                                    setState(() {
                                      showLikes = value;
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 15),
                        Container(
                          width: 335,
                          height: 52,
                          padding: EdgeInsets.fromLTRB(14, 14, 14, 20),
                          decoration: BoxDecoration(
                            color: AppColors.fldclrgry,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                AppStrings.Follwers,
                                style: fw4hsize16black,
                              ),
                              Container(
                                width: 42,
                                height: 2,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: showFollows ? AppColors.primary : AppColors.gggg,
                                ),
                                child: CupertinoSwitch(
                                  activeColor:AppColors.primary,
                                  trackColor: AppColors.gggg,
                                  value: showFollows,
                                  onChanged: (value) {
                                    setState(() {
                                      showFollows = value;
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 15),
                        Container(
                          width: 335,
                          height: 52,
                          padding: EdgeInsets.fromLTRB(14, 14, 14, 20),
                          decoration: BoxDecoration(
                            color: AppColors.fldclrgry,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                AppStrings.CommentLike,
                                style: fw4hsize16black,
                              ),
                              Container(
                                width: 42,
                                height: 2,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: showCommentLikes ? AppColors.primary : AppColors.gggg,
                                ),
                                child: CupertinoSwitch(
                                  activeColor:AppColors.primary,
                                  trackColor: AppColors.gggg,
                                  value: showCommentLikes,
                                  onChanged: (value) {
                                    setState(() {
                                      showCommentLikes = value;
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 15),
                        Container(
                          width: 335,
                          height: 52,
                          padding: EdgeInsets.fromLTRB(14, 14, 14, 20),
                          decoration: BoxDecoration(
                            color: AppColors.fldclrgry,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                AppStrings.Donate,
                                style: fw4hsize16black,
                              ),
                              Container(
                                width: 42,
                                height: 2,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: showDonate ? AppColors.primary : AppColors.gggg,
                                ),
                                child: CupertinoSwitch(
                                  activeColor:AppColors.primary,
                                  trackColor: AppColors.gggg,
                                  value: showDonate,
                                  onChanged: (value) {
                                    setState(() {
                                      showDonate = value;
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
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
                                  builder: (c) => NotificationScreen()));
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
