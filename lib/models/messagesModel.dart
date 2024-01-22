
import 'package:flutter/material.dart';
import '../Config/assets.dart';
import '../Config/strings.dart';

final List<Messages> messagedata = [
  Messages(ImageAssets.img18,AppStrings.bruno, AppStrings.messages1, AppStrings.ago,AppStrings.twnty, SvgAssets.msg),
  Messages(ImageAssets.img18,AppStrings.bruno, AppStrings.messages1, AppStrings.ago,AppStrings.twnty, SvgAssets.msg),
  Messages(ImageAssets.img18,AppStrings.bruno, AppStrings.messages1, AppStrings.ago,AppStrings.twnty, SvgAssets.msg),
  Messages(ImageAssets.img18,AppStrings.bruno, AppStrings.messages1, AppStrings.ago,AppStrings.twnty, SvgAssets.msg),
  Messages(ImageAssets.img18,AppStrings.bruno, AppStrings.messages1, AppStrings.ago,AppStrings.twnty, SvgAssets.msg),
  Messages(ImageAssets.img18,AppStrings.bruno, AppStrings.messages1, AppStrings.ago,AppStrings.twnty, SvgAssets.msg),
];
class  Messages{
  final String avatarImage;
  final String userName;
  final String commentText;
  final String time;
  final String Liketext;
  final String msgicon;
  Messages(this.avatarImage, this.userName, this.commentText,this.time,this.Liketext,this.msgicon);
}