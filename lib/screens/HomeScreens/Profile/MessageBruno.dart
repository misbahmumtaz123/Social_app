import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../Config/assets.dart';
import '../../../Config/strings.dart';
import '../../../config/colors.dart';
import '../../../config/style.dart';
import '../../../models/MessageBrunoModel.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<String> message = [];

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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 70),
                  child: IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(SvgAssets.aro),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25, right: 145),
                    child: Text(AppStrings.bruno, style: fw7hsize20blck),
                  ),
                ),
              ],
            ),
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: Messagedata.length,
                itemBuilder: (context, index) {
                  return SizedBox(
                    child: ListTile(
                      title: Column(
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 20.0,
                                backgroundImage:
                                AssetImage(Messagedata[index].avatarImage),
                              ),
                              SizedBox(width: 5),
                              Container(
                                width: 275,
                                height: 145,
                                padding: EdgeInsets.only(left: 1, top: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: AppColors.blckgrd,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 15, bottom: 5.0),
                                            child: Text(
                                              Messagedata[index].commentText,
                                              style: fw4hsize14black,
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                  left: 8.0,
                                                  top: 8.0,
                                                  bottom: 8.0,
                                                ),
                                                child: Text(
                                                  Messagedata[index].time,
                                                  style: fw4hsize12blackgry,
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
                              SizedBox(height: 15),
                            ],
                          ),
                          SizedBox(width: 15),
                          ///////////////////////
                          Column(
                            children: [
                              SizedBox(height: 15),
                              Row(
                                children: [
                                  Container(
                                    width: 275,
                                    height: 120,
                                    padding: EdgeInsets.only(left: 1, top: 10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: AppColors.blckgrd,
                                    ),
                                    /////------------
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: Column(
                                            mainAxisAlignment:
                                            MainAxisAlignment.start,
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 15, bottom: 5.0),
                                                child: Text(
                                                  Messagedata[index].commentText,
                                                  style: fw4hsize14black,
                                                ),
                                              ),
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(
                                                      left: 8.0,
                                                      top: 8.0,
                                                      bottom: 8.0,
                                                    ),
                                                    child: Text(
                                                      Messagedata[index].time,
                                                      style: fw4hsize12blackgry,
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
                                  SizedBox(width: 5),
                                  CircleAvatar(
                                    radius: 20.0,
                                    backgroundImage:
                                    AssetImage(Messagedata[index].avatarImage),
                                  ),
                                ],
                              ),

                            ],
                          ),
                          ////////////////
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
              padding: EdgeInsets.all(8.0),
              color: Colors.white,
              child: Row(
                children: [
                  Container(
                    width: deviceWidth - 80,
                    height: 54,
                    padding: EdgeInsets.fromLTRB(16, 12, 16, 12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 15,
                          backgroundImage: AssetImage(ImageAssets.img18),
                        ),
                        SizedBox(width: 8),
                        Expanded(
                          child: Container(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: AppStrings.Type,
                                hintStyle: fw4hsize12blackgry,
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                              ),
                              onSubmitted: (comment) {
                                addComment(comment);
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 1),
                  IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(SvgAssets.gallary),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void addComment(String messages) {
    setState(() {
      message.add(messages);
    });
  }
}
