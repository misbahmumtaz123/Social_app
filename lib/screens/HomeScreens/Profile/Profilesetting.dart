import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../Config/assets.dart';
import '../../../Config/strings.dart';
import '../../../Config/style.dart';
import '../../../models/ProfilesettingModel.dart';
import 'ProfileEdit.dart';

class SettingScreen extends StatelessWidget {
  final List<Setting> settings = settingdata;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Positioned(
              width: screenWidth,
              child: Image.asset(
                ImageAssets.img48,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 60,
              left: 10,
              right: 6,
              child: Container(
                height: 88,
                width: screenWidth - 16,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
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
                          Navigator.push(context, MaterialPageRoute(builder: (c) => EditScreen()));
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 172,
              child: Container(
                width: screenWidth * 0.8,
                height: 40,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                    bottomLeft: Radius.circular(0),
                    topLeft: Radius.circular(0),
                  ),
                  color: Colors.white24,
                ),
                child: Row(
                  children: [
                    Text(AppStrings.email, style: fw4hsize16white),
                    Spacer(),
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35),
                        color: Colors.white10,
                      ),
                      child: Center(
                        child: IconButton(
                          icon: SvgPicture.asset(
                            SvgAssets.arows,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 225,
              child: Container(
                width: screenWidth * 0.8,
                height: 40,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                    bottomLeft: Radius.circular(0),
                    topLeft: Radius.circular(0),
                  ),
                  color: Colors.white24,
                ),
                child: Row(
                  children: [
                    Text(AppStrings.Paypal, style: fw4hsize16white),
                    Spacer(),
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35),
                        color: Colors.white10,
                      ),
                      child: Center(
                        child: IconButton(
                          icon: SvgPicture.asset(
                            SvgAssets.arows,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 278,
              child: Container(
                width: screenWidth * 0.8,
                height: 40,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                    bottomLeft: Radius.circular(0),
                    topLeft: Radius.circular(0),
                  ),
                  color: Colors.white24,
                ),
                child: Row(
                  children: [
                    Text(AppStrings.Website, style: fw4hsize16white),
                    Spacer(),
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35),
                        color: Colors.white10,
                      ),
                      child: Center(
                        child: IconButton(
                          icon: SvgPicture.asset(
                            SvgAssets.arows,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 333,
              child: Container(
                width: screenWidth * 0.8,
                height: 40,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                    bottomLeft: Radius.circular(0),
                    topLeft: Radius.circular(0),
                  ),
                  color: Colors.white24,
                ),
                child: Row(
                  children: [
                    Text(AppStrings.Instagram, style: fw4hsize16white),
                    Spacer(),
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35),
                        color: Colors.white10,
                      ),
                      child: Center(
                        child: IconButton(
                          icon: SvgPicture.asset(
                            SvgAssets.arows,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 394,
              child: Container(
                width: screenWidth * 0.8,
                height: 40,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                    bottomLeft: Radius.circular(0),
                    topLeft: Radius.circular(0),
                  ),
                  color: Colors.white24,
                ),
                child: Row(
                  children: [
                    Text(AppStrings.Changepassword, style: fw4hsize16white),
                    Spacer(),
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35),
                        color: Colors.white10,
                      ),
                      child: Center(
                        child: IconButton(
                          icon: SvgPicture.asset(
                            SvgAssets.arows,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 457,
              child: Container(
                width: screenWidth * 0.8,
                height: 40,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                    bottomLeft: Radius.circular(0),
                    topLeft: Radius.circular(0),
                  ),
                  color: Colors.white24,
                ),
                child: Row(
                  children: [
                    Text(AppStrings.Abouticvliv, style: fw4hsize16white),
                    Spacer(),
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35),
                        color: Colors.white10,
                      ),
                      child: Center(
                        child: IconButton(
                          icon: SvgPicture.asset(
                            SvgAssets.arows,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 517,
              child: Container(
                width: screenWidth * 0.8,
                height: 40,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                    bottomLeft: Radius.circular(0),
                    topLeft: Radius.circular(0),
                  ),
                  color: Colors.white24,
                ),
                child: Row(
                  children: [
                    Text(AppStrings.Terms, style: fw4hsize16white),
                    Spacer(),
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35),
                        color: Colors.white10,
                      ),
                      child: Center(
                        child: IconButton(
                          icon: SvgPicture.asset(
                            SvgAssets.arows,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 664,
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
