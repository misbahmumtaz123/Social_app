import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../Config/assets.dart';
import '../../../Config/strings.dart';
import '../../../config/colors.dart';
import '../../../config/style.dart';
import '../../../models/ActivityModel.dart';
import 'ActivitySetting.dart';

class NotificationScreen extends StatefulWidget {
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  List<String> activities = [];

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:15,right: 165),
                  child: RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(text: AppStrings.Activity, style:  fw7hsize24black),
                        TextSpan(text: AppStrings.Act, style: fw400size14primary),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right:0.5,),
                  child:
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (c) => ActivityScreen()));

                    },
                    icon: SvgPicture.asset(SvgAssets.sett),
                  ),
                ),
              ],
            ),
          ],
        ),
        body: Column(
          children: [
            SizedBox(height: 15,),
            Expanded(
              child: ListView.builder(
                itemCount: activitydata.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Column(
                      children: [
                        Container(
                          width: 370,
                          height: 120,
                          padding: EdgeInsets.only(left: 1, top: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: AppColors.blckgrd,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                radius: 20.0,
                                backgroundImage: AssetImage(activitydata[index].avatarImage),
                              ),
                              SizedBox(width: 5),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      activitydata[index].userName,
                                      style: fw7hsize20blck,
                                    ),
                                    RichText(
                                      text: TextSpan(
                                        style: DefaultTextStyle.of(context).style,
                                        children: <TextSpan>[
                                          TextSpan(text: activitydata[index].commentText, style: fw4hsize14black),
                                          TextSpan(text: activitydata[index].likedtext, style: fw400size14primary),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            left: 8.0,
                                            top: 8.0,
                                            bottom: 8.0,
                                            right: 25.0,
                                          ),
                                          child: Text(
                                            activitydata[index].time,
                                            style: fw4hsize12blackgry,
                                          ),
                                        ),
                                        SizedBox(width: 75),
                                        Stack(children:[
                                          Positioned(
                                              child: Image.asset(activitydata[index].image47,width: 80,height: 45)),
                                          Positioned(
                                            top: 1,
                                            left: 45,
                                            child: IconButton(
                                              icon: SvgPicture.asset( activitydata[index].Likeicon),
                                              onPressed: () {
                                                setState(() {
                                                  // Handle like button press
                                                });
                                              },
                                            ),
                                          ),
                                        ] ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        //second-----------
                        SizedBox(height: 15),
                        Container(
                          width: 370,
                          height: 120,
                          padding: EdgeInsets.only(left: 1, top: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: AppColors.blckgrd,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                radius: 20.0,
                                backgroundImage: AssetImage(activitydata[index].avatarImage),
                              ),
                              SizedBox(width: 5),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      activitydata[index].userName,
                                      style: fw7hsize20blck,
                                    ),
                                    RichText(
                                      text: TextSpan(
                                        style: DefaultTextStyle.of(context).style,
                                        children: <TextSpan>[
                                          TextSpan(text: activitydata[index].commentText, style: fw4hsize14black),
                                          TextSpan(text: activitydata[index].likedtext, style: fw400size14primary),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            left: 8.0,
                                            top: 8.0,
                                            bottom: 8.0,
                                            right: 25.0,
                                          ),
                                          child: Text(
                                            activitydata[index].time,
                                            style: fw4hsize12blackgry,
                                          ),
                                        ),
                                        SizedBox(width: 100),
                                        ElevatedButton(
                                          onPressed: () {
                                            // Add your follow logic here
                                          },
                                          style: ElevatedButton.styleFrom(
                                            primary: Colors.white,
                                            onPrimary: AppColors.primary, // Set text color to purple
                                            side: BorderSide(width: 1, color: AppColors.primary), // Set border color and width
                                            padding: EdgeInsets.fromLTRB(5, 10, 6, 10),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(30),
                                            ),
                                          ),
                                          child: Text(
                                            'Follow',
                                            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),

                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
