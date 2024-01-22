import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:social_app/screens/HomeScreens/Profile/MessagesScreen.dart';
import 'package:social_app/screens/HomeScreens/Profile/Profilesetting.dart';
import 'package:social_app/screens/HomeScreens/Profile/ShortsClass.dart';

import '../../../Config/Colors.dart';
import '../../../Config/assets.dart';
import '../../../Config/strings.dart';
import '../../../Config/style.dart';
import '../../../models/profileModelShots.dart';
class ProfilepageFollow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(body: ProfilePage()),
    );
  }
}

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool isFilterVisible = true;
  bool ispicVisible = false;
  bool isMessagesButtonPressed = false;
  bool isDonationButtonPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [

            Positioned(
              top: 0,
              left: 0,
              width: 375,
              height: 150,
              child: Image.asset(
                ImageAssets.img13,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 76.74,
              left: 108,
              width: 247,
              height: 17,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(AppStrings.brunopham, style: fw7hsize14white),
                  SizedBox(width: 10),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (c) => SettingScreen()));
                    },
                    icon: Icon(Icons.settings,color: Colors.white,),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 110,
              left: 147,
              child: Column(
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    child: Image.asset(
                      ImageAssets.img39,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 110,
              left: 147,
              child: Column(
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    child: Image.asset(
                      ImageAssets.img39,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            //boderr
            //------------------
            Positioned(
              top: 180,
              child: Container(

                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 0.0,top: 10),
                      child: Text(AppStrings.bru,style:fw7hsize20blck ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 0),
                      child: Text(AppStrings.Da,style: fw4hsize16blackprpl),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height:40 ,
                        width:345 ,
                        color:AppColors.fldclrgry ,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Row(
                            children: [
                              Text(AppStrings.twnty,style: fw7hsize16black,),
                              SizedBox(width: 5),
                              Text(AppStrings.followers,style: fw4hsize16blackprpl),
                              SizedBox(width:115),
                              Text(AppStrings.twnty,style: fw7hsize16black,),
                              SizedBox(width: 5),
                              Text(AppStrings.following,style: fw4hsize16blackprpl),
                              ///////////////

                            ],

                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset(SvgAssets.global),
                        ),
                        SizedBox(width: 10),
                        Image.asset(
                          ImageAssets.img37,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(width: 10),
                        IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset(SvgAssets.insta),
                        ),
                        SizedBox(width: 10),
                        Image.asset(
                          ImageAssets.img37,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(width: 10),
                        IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset(SvgAssets.fb),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () {
                            setState(() {
                              isFilterVisible = true;
                              ispicVisible=false;
                              // Set to false to show GridView
                            });
                          },
                          child: Text(AppStrings.collection0),
                        ),

                        SizedBox(width: 75),
                        TextButton(
                          onPressed: () {
                            setState(() {
                              isFilterVisible = false;
                              ispicVisible=true;
                            });
                          },
                          child: Text(AppStrings.shot10),
                        ),
                      ],
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 35.0,bottom: 75),
                        child: Visibility(
                          visible:!ispicVisible ,
                          child: Image.asset(
                            ImageAssets.img40,
                            fit: BoxFit.cover,
                            height:250 ,
                            width:250 ,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

              ),
            ),
            Positioned(
              top: 395,
              child: SingleChildScrollView(
                child: Visibility(
                  visible: !isFilterVisible,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 25),
                    child: Container(
                      height: MediaQuery.of(context).size.height,
                      width: 375,
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 15.0,
                          mainAxisSpacing: 15.0,
                        ),
                        itemCount: shotdata.length,
                        itemBuilder: (BuildContext context, int index) {
                          return ShotClass(shots: shotdata[index]);
                        },
                      ),
                    ),
                  ),
                ),
              ),

            ),
            Positioned(
              top: 695,
              child: Container(
                height: 75,
                width: 385,
                color: AppColors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 30.0),
                      child:  ElevatedButton(
                        onPressed: () {
                          setState(() {
                            isDonationButtonPressed = !isDonationButtonPressed;
                            // Add functionality for Donation button
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: isDonationButtonPressed ? AppColors.primary : Colors.white,
                          onPrimary: isDonationButtonPressed ? Colors.white : AppColors.primary,
                          padding: EdgeInsets.symmetric(vertical: 9, horizontal: 45),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                            side: BorderSide(
                              width: 1,
                              color: AppColors.primary, // Border color is primary color
                            ),
                          ),
                        ),
                        child: Text(AppStrings.Donation),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 30.0),
                      child:  ElevatedButton(
                        onPressed: () {
                          setState(() {
                            isMessagesButtonPressed = !isMessagesButtonPressed;
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (c) => MessagesPage()));
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: isMessagesButtonPressed ? AppColors.primary : Colors.white,
                          onPrimary: isMessagesButtonPressed ? Colors.white : AppColors.primary,
                          padding: EdgeInsets.symmetric(vertical: 9, horizontal: 45),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                            side: BorderSide(
                              width: 1,
                              color: AppColors.primary,
                            ),
                          ),
                        ),
                        child: Text(AppStrings.messagess),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
