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
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            actions: [
              Row(
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
                  SizedBox(width:165),
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
            ],
          ),
          body:Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 20.0,
                    backgroundImage: AssetImage(
                      ImageAssets.img18,
                    ),
                  ),
                  SizedBox(width: 8.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppStrings.thanhpham,
                        style: fw4hsize16black,
                      ),
                      SizedBox(width: 115),
                      Text(AppStrings.ago,style: fw4hsize14gery),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 5),
              Image.asset(
                ImageAssets.img20,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 2.0),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:5,right:0.5),
                    child: Text(AppStrings.threehudrd,style:fw4hsize14gery),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 140),
                    child: IconButton(
                      icon: SvgPicture.asset(SvgAssets.eyes,color: AppColors.primary),
                      onPressed: () {
                      },
                    ),
                  ),
                  Text(AppStrings.twnty,style:fw4hsize14gery),
                  IconButton(
                    icon: SvgPicture.asset(SvgAssets.msg),
                    onPressed: () {
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 1.0),
                    child: Text(AppStrings.onetwntyfine,style:fw4hsize14gery),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 1.0),
                    child: IconButton(
                      icon: SvgPicture.asset(SvgAssets.like),
                      onPressed: () {

                      },
                    ),
                  ),
                ],
              ),
              const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children:[
                    Padding(
                      padding: EdgeInsets.only(left: 12,right: 12),
                      child: Text(AppStrings.Streetpotrait,style: fw7hsize20blck),
                    )]),
              Padding(
                padding: const EdgeInsets.only(left: 12,right: 12),
                child: Text(  AppStrings.loerum1,
                    style: fw4hsize14lightblck),
              ),
              //////
              Container(
                width: 347,
                height: 104,
                padding: EdgeInsets.only(left:1,top: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppColors.blckgrd, // You can set the desired background color
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 20.0,
                      backgroundImage: AssetImage(ImageAssets.img18),
                    ),
                    SizedBox(width: 5),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppStrings.bruno,
                          style: fw7hsize20blck,
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left:15,bottom: 5.0),
                          child: Text(
                            AppStrings.greatshot,
                            style: fw4hsize14black,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            AppStrings.seen,
                            style:fw4hsize12blackgry,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              /////
              Container(
                width: 375,
                height: 54,
                padding: EdgeInsets.fromLTRB(16, 12, 16, 12),
                decoration: BoxDecoration(
                  color: Colors.white, // Set background color as needed
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 15,
                      backgroundImage: AssetImage(ImageAssets.img18),
                    ),
                    SizedBox(width: 8),
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
                          style:fw4hsize12blackgry,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),


            ],
          )
      ),
    );
  }
}
