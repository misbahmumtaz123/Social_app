
import 'package:flutter/material.dart';
import '../Config/assets.dart';
import '../Config/strings.dart';

final List< Comments> data = [
  Comments(ImageAssets.img18,AppStrings.bruno, AppStrings.greatshot, AppStrings.ago,AppStrings.Likee, SvgAssets.like),
  Comments(ImageAssets.img18,AppStrings.bruno, AppStrings.greatshot, AppStrings.ago,AppStrings.Likee, SvgAssets.like),
  Comments(ImageAssets.img18,AppStrings.bruno, AppStrings.greatshot, AppStrings.ago,AppStrings.Likee, SvgAssets.like),
];
class  Comments{
  final String avatarImage;
  final String userName;
 final String commentText;
  final String time;
  final String Liketext;
  final String likeicon;

  Comments(this.avatarImage, this.userName, this.commentText,this.time,this.Liketext,this.likeicon);
}

