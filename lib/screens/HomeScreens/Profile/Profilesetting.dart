import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../Config/assets.dart';
import '../../../Config/strings.dart';
import '../../../Config/style.dart';
import '../../../main.dart';
import '../../../models/settingModel.dart';
import 'ProfileEdit.dart';

class SettingScreen extends StatelessWidget {
  final List<Setting> settings = settingdata;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            // Background Image
            Positioned(
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                ImageAssets.img48,
                fit: BoxFit.cover,
              ),
            ),
            // User Info Container
            Positioned(
              top: 60,
              left: 10,
              right: 6,
              child: Container(
                height: 88,
                width: MediaQuery.of(context).size.width - 16,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      // CircleAvatar
                      CircleAvatar(
                        radius: 35.0,
                        backgroundImage: AssetImage(ImageAssets.img50),
                      ),
                      SizedBox(width: 5),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(AppStrings.bruno, style: TextStyle(color: Colors.white)),
                          Text(AppStrings.bruemail, style: TextStyle(color: Colors.white)),
                        ],
                      ),
                      SizedBox(width: 19),
                      IconButton(
                        icon: SvgPicture.asset(SvgAssets.message, color: Colors.white),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (c) => EditScreen()));
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // Settings List
            Positioned(
              top: 175,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: BoxDecoration(
                  color: Colors.white24,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(24),
                    bottomRight: Radius.circular(24),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: settings.map((setting) {
                      return ListTile(
                        title: Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
                          child: Text(setting.Text, style: fw4hsize14white),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 575,
              child: ElevatedButton.icon(
                onPressed: () {
                  // Handle logout logic
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                    side: BorderSide(
                      color: Colors.black,
                      width: 1,
                    ),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 14),
                ),
                icon: Icon(Icons.logout, size: 20),
                label: Text(
                  AppStrings.Logout,
                  style: fw4hsize14black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
