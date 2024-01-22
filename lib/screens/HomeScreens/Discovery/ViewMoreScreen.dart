import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../config/assets.dart';
import '../../../config/colors.dart';
import '../../../config/strings.dart';
import '../../../config/style.dart';
import '../../../models/searchscreenModel.dart';
import 'Discover.dart';
import 'challenge.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 50, left: 15, right: 15),
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: _searchController,
                    decoration: InputDecoration(
                      hintText: AppStrings.Search,
                      hintStyle: fw400size16txtintxtfld,
                      fillColor: AppColors.txtfldclr,
                      filled: true,
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 14,
                      ),
                      constraints: BoxConstraints(
                        maxWidth: 150,
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
                SizedBox(width: 10),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(
                        context,
                        MaterialPageRoute(
                            builder: (c) =>Discover()));
                    _searchController.clear();
                  },
                  child: Container(
                    width: 75,
                    height: 32,
                    padding: EdgeInsets.fromLTRB(10, 5, 10, 6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: AppColors.white,
                    ),
                    child: Center(
                      child: Text(
                       AppStrings.cancel,
                        style:fw4hsize14gery,
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
              scrollDirection: Axis.vertical,
              itemCount: images3.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (c) =>ChallengeScreen()));
                    // Handle item tap
                  },
                  child: Container(
                    margin: EdgeInsets.all(8.0),
                    height: 140,
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
    );
  }
}
