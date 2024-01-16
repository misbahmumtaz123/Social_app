import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:social_app/screens/Dashboard/Homepage.dart';
import 'package:social_app/screens/Dashboard/Notification.dart';
import 'package:social_app/screens/Dashboard/Profile.dart';

import '../../config/assets.dart';
import '../../config/colors.dart';
import '../../config/strings.dart';
import '../../config/style.dart';
import '../../models/DiscoverModel.dart';

class Discover extends StatefulWidget {
  const Discover({Key? key}) : super(key: key);

  @override
  State<Discover> createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {
  int currentTab = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: ClipOval(
          child: FloatingActionButton(
            child: Image.asset(ImageAssets.img22, height: 20, width: 20),
            backgroundColor: AppColors.primary,
            onPressed: () {},
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 10,
          child: Container(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (c) => HomePage()));
                          currentTab = 0;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(SvgAssets.home,
                              color: currentTab == 0
                                  ? AppColors.primary
                                  : Colors.grey),
                        ],
                      ),
                    ),
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (c) => Discover()));
                          currentTab = 1;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(SvgAssets.discover,
                              color: currentTab == 1
                                  ? AppColors.primary
                                  : Colors.grey),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (c) => NotificationScreen()));
                          currentTab = 3;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(SvgAssets.notify,
                              color: currentTab == 3
                                  ? AppColors.primary
                                  : Colors.grey),
                        ],
                      ),
                    ),
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (c) => Profile()));
                          currentTab = 4;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(SvgAssets.profile,
                              color: currentTab == 4
                                  ? AppColors.primary
                                  : Colors.grey),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 60, left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: AppStrings.Search,
                            hintStyle: fw400size16txtintxtfld,
                            fillColor: AppColors.txtfldclr,
                            filled: true,
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 8, horizontal: 14),
                            constraints: BoxConstraints(
                              maxWidth: 285,
                              maxHeight: 45,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              borderSide: BorderSide.none,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              borderSide: BorderSide.none,
                            ),
                            prefixIcon: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: SvgPicture.asset(
                                SvgAssets.search,
                                width: 24,
                                height: 24,
                              ),
                            ),
                          ),
                        ),
                      ),
                      /////////////////////////////////////
                      Container(
                        margin: EdgeInsets.only(left: 15, right: 15),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: SvgPicture.asset(
                            SvgAssets.share,
                            width: 24,
                            height: 24,
                          ),
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(CircleBorder()),
                            padding: MaterialStateProperty.all(
                              EdgeInsets.all(10),
                            ),
                            backgroundColor: MaterialStateProperty.all(
                              AppColors.gry,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  Row(children:[Text('Topics'),
                  SizedBox(width: 200),
                  InkWell(child: Text('view more',style:fw400size14primary))] ),
                  SizedBox(height: 10),
                  Container(
                    height: 200,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: images1.length,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {
                            // Add functionality for when an item is tapped
                          },
                          child: Container(
                            margin: EdgeInsets.all(8.0),
                            width: 150, // Adjust the width as needed
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              image: DecorationImage(
                                image: AssetImage(images1[index]),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 5),
                  Row(children:[Text('Topics'),
                    SizedBox(width: 200),
                    InkWell(child: Text('view more',style:fw400size14primary))] ),
                  SizedBox(height: 10),
                  Container(
                    height: 200,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: images.length,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {
                            // Add functionality for when an item is tapped
                          },
                          child: Container(
                            margin: EdgeInsets.all(8.0),
                            width: 150, // Adjust the width as needed
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              image: DecorationImage(
                                image: AssetImage(images[index]),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 5),
                  Row(children:[Text('Topics'),
                    SizedBox(width: 200),
                    InkWell(child: Text('view more',style:fw400size14primary))] ),
                  SizedBox(height: 10),
                  Container(
                    height: 200,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: images.length,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {
                            // Add functionality for when an item is tapped
                          },
                          child: Container(
                            margin: EdgeInsets.all(8.0),
                            width: 150, // Adjust the width as needed
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              image: DecorationImage(
                                image: AssetImage(images[index]),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
