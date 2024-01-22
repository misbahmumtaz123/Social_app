import 'package:flutter/material.dart';
import '../Config/assets.dart';
import '../Config/strings.dart';
final List<Activity> activitydata =[
  Activity(ImageAssets.img18,AppStrings.bruno,AppStrings.liked,AppStrings.text11,AppStrings.ago,SvgAssets.heart,ImageAssets.img47),
  Activity(ImageAssets.img18,AppStrings.bruno,AppStrings.liked,AppStrings.text11,AppStrings.ago,SvgAssets.heart,ImageAssets.img47),
  Activity(ImageAssets.img18,AppStrings.bruno,AppStrings.liked,AppStrings.text11,AppStrings.ago,SvgAssets.heart,ImageAssets.img47),
];
class  Activity{
  final String avatarImage;
  final String userName;
  final String likedtext;
  final String commentText;
  final String time;
  final String Likeicon;
  final String image47;
  Activity(this.avatarImage, this.userName,this.likedtext,this.commentText,this.time,this.Likeicon,this.image47);
}