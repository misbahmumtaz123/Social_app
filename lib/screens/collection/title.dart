import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../config/assets.dart';
import '../../config/strings.dart';
import '../../config/style.dart';
import '../../models/CollectionModel.dart';
class CollectionProfile extends StatefulWidget {
  @override
  _CollectionProfileState createState() => _CollectionProfileState();
}

class _CollectionProfileState extends State<CollectionProfile> {
  @override
  Widget build(BuildContext context) {
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
                  padding: const EdgeInsets.only(right:100.0),
                  child: IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(SvgAssets.aro),
                  ),
                ),
                Center(child: Padding(
                  padding: const EdgeInsets.only(left: 5.0,right: 160),
                  child: Text(AppStrings.title, style: fw7hsize20blck),
                )),

              ],
            ),
          ],
        ),
        body: Container(
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 8.0,
            ),
            itemCount: images3.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                },
                child: Container(
                  width: 253,
                  height: 200,
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

