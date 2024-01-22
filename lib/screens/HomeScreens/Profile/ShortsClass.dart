// shot_class.dart

import 'package:flutter/material.dart';
import 'package:social_app/models/profileModelShots.dart';
import '../../../config/assets.dart';
import '../../../config/colors.dart';

class ShotClass extends StatelessWidget {
  const ShotClass({Key? key, required this.shots}) : super(key: key);

  final Shots shots;

  @override
  Widget build(BuildContext context) {
    return
     Container(
        color: AppColors.white,
        child: Column(
          children: [
            Image.asset(shots.Images),
            // Add more widgets if needed
          ],
        ),

    );
  }
}
