
import 'package:flutter/material.dart';
import 'package:social_app/models/messagesModel.dart';
import '../Config/assets.dart';
import '../Config/strings.dart';

final List< Messages> Messagedata = [
  Messages(ImageAssets.img18, AppStrings.text1, AppStrings.ago),
  Messages(ImageAssets.img19, AppStrings.text2, AppStrings.ago),
  Messages(ImageAssets.img19,AppStrings.text3, AppStrings.ago),
];
class  Messages{
  final String avatarImage;
  final String commentText;
  final String time;

  Messages(this.avatarImage, this.commentText,this.time);
}

