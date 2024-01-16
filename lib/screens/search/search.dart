import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../config/assets.dart';
import '../../config/colors.dart';
import '../../config/strings.dart';
import '../../config/style.dart';
import '../../models/searchscreenModel.dart';
class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 50, left: 15, right: 15),
              child: Row(
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
                ],
              ),
            ),
            SizedBox(height: 0.5),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical, // Change to vertical
                itemCount: images3.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                    },
                    child: Container(
                      margin: EdgeInsets.all(8.0),
                      height: 140, // Set the height as needed
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
          ],
        ),
      ),
    );
  }
}
