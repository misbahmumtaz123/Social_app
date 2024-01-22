import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../Config/assets.dart';
import '../../../Config/strings.dart';
import '../../../config/colors.dart';
import '../../../config/style.dart';
import '../../../models/messagesModel.dart';
import 'MessageBruno.dart';
import 'ProfileFollow.dart';
class MessagesPage extends StatefulWidget {
  @override
  _MessagesPageState createState() => _MessagesPageState();
}

class _MessagesPageState extends State<MessagesPage> {
  List<String> messages = [];

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
                Center(child: Text(AppStrings.MessageH1, style: fw7hsize20blck)),
                SizedBox(width: 75),
                Padding(
                  padding: const EdgeInsets.only(left: 1),
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (c) =>ChatScreen()));
                    },
                    icon: SvgPicture.asset(SvgAssets.message),
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
                itemCount:  messagedata.length,
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
                                backgroundImage: AssetImage( messagedata[index].avatarImage),
                              ),
                              SizedBox(width: 5),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      messagedata[index].userName,
                                      style: fw7hsize20blck,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15, bottom: 5.0),
                                      child: Text(
                                        messagedata[index].commentText,
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
                                            messagedata[index].time,
                                            style: fw4hsize12blackgry,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 100.0),
                                          child: Text( messagedata[index].Liketext, style: fw400size14primary),
                                        ),
                                        IconButton(
                                          icon: SvgPicture.asset( messagedata[index].msgicon),
                                          onPressed: () {
                                            setState(() {

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

          ],
        ),
    );
  }

}
