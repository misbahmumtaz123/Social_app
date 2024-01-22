import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../Config/assets.dart';
import '../../../Config/strings.dart';
import '../../../config/colors.dart';
import '../../../config/style.dart';
import '../../../models/commrntModel.dart';
import 'AddCollection.dart';

class CommentPage extends StatefulWidget {
  @override
  _CommentPageState createState() => _CommentPageState();
}

class _CommentPageState extends State<CommentPage> {
  List<String> comments = [];
  bool favorite = false;

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
            //  Padding(
             //   padding: const EdgeInsets.only(right: 70),
                // child: IconButton(
                //   onPressed: () {
                //     Navigator.push(
                //         context,
                //         MaterialPageRoute(
                //             builder: (c) => VeiwPage()));
                //
                //   },
                //   icon: SvgPicture.asset(SvgAssets.aro),
                // ),
            //  ),
              Center(child: Text(AppStrings.Comment, style: fw7hsize20blck)),
              SizedBox(width: 75),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(SvgAssets.message),
              ),
            ],
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: data.length,
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
                              backgroundImage: AssetImage(data[index].avatarImage),
                            ),
                            SizedBox(width: 5),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    data[index].userName,
                                    style: fw7hsize20blck,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15, bottom: 5.0),
                                    child: Text(
                                      data[index].commentText,
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
                                          right: 25.0,
                                        ),
                                        child: Text(
                                          data[index].time,
                                          style: fw4hsize12blackgry,
                                        ),
                                      ),
                                      Text(data[index].Liketext, style: fw4hsize14black),
                                      SizedBox(width: 95),
                                      IconButton(
                                        icon: SvgPicture.asset(data[index].likeicon),
                                        onPressed: () {
                                          setState(() {
                                            // Handle like button press
                                          });
                                        },
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
                              hintText: AppStrings.comment,
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
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (c) => CollectionScreen()));
                  },
                  child: Text(
                    AppStrings.post,
                    style: TextStyle(color: AppColors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF888BF4),
                    onPrimary: Colors.transparent,
                    shadowColor: Colors.transparent,
                    elevation: 0,
                    minimumSize: Size(40, 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void addComment(String comment) {
    setState(() {
      comments.add(comment);
    });
  }
}
