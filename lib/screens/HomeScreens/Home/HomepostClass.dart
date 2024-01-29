import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../config/colors.dart';
import '../../../config/assets.dart';
import '../../../config/style.dart';
import '../../../models/homeModel.dart';

Widget buildPostContainer(BuildContext context, PostModel post) {
  double containerWidth = 335;
  return Container(
    width: containerWidth,
    decoration: BoxDecoration(
      color: AppColors.white,
      borderRadius: BorderRadius.circular(4.0),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: CircleAvatar(
                radius: 25.0,
                backgroundImage: AssetImage(post.avatarImage),
              ),
            ),
            SizedBox(width: 5.0),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    post.userName,
                    style: fw4hsize16black,
                  ),
                  SizedBox(width: 86),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(post.timeAgo, style: fw4hsize14gery),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 10.0),
        AspectRatio(
          aspectRatio: 16 / 9,
          child: Image.asset(
            post.postImage,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: 10.0),
        Padding(
          padding: const EdgeInsets.all(1.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: IconButton(
                  icon: SvgPicture.asset(
                    SvgAssets.add,
                    color: AppColors.primary,
                  ),
                  onPressed: () {},
                ),
              ),
              SizedBox(width: 165),
              Text(post.likesCount, style: fw4hsize14gery),
              Expanded(
                child: IconButton(
                  icon: SvgPicture.asset(SvgAssets.msg),
                  onPressed: () {},
                ),
              ),
              SizedBox(width: 3),
              Text(post.commentsCount, style: fw4hsize14gery),
              Expanded(
                child: IconButton(
                  icon: SvgPicture.asset(SvgAssets.like),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
