import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:social_app/screens/HomeScreens/Discovery/AddCollection.dart';
import '../../../config/assets.dart';
import '../../../config/strings.dart';
import '../../../config/style.dart';
import '../../../models/CollectionModel.dart';

class CollectionProfile extends StatefulWidget {
  @override
  _CollectionProfileState createState() => _CollectionProfileState();
}

class _CollectionProfileState extends State<CollectionProfile> {
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
                  padding: EdgeInsets.only(left: 1),
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(
                        context,
                        MaterialPageRoute(
                          builder: (c) => CollectionScreen(),
                        ),
                      );
                    },
                    icon: SvgPicture.asset(SvgAssets.aro),
                  ),
                ),
                SizedBox(width: 10),
                Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width - 72,
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                    child: Text(
                      AppStrings.title,
                      style: fw7hsize20blck,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),

        body: Container(
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: (deviceWidth > 600) ? 4 : 2,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 8.0,
            ),
            itemCount: images3.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {},
                child: Container(
                  width: (deviceWidth > 600) ? 100 : 253,
                  height: (deviceWidth > 600) ? 80 : 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      image: AssetImage(images3[index]),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
