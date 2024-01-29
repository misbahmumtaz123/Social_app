import 'package:flutter/material.dart';
import '../../../components/Textfields/searchtextfield.dart';
import '../../../config/colors.dart';
import '../../../config/strings.dart';
import '../../../config/style.dart';
import '../../../models/searchscreenModel.dart';
import 'Discover.dart';
import 'challenge.dart';
class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
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
                  child: SearchTextField(
                    onChanged: (value) {},
                  ),
                ),
                SizedBox(width: 10),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(
                        context,
                        MaterialPageRoute(
                            builder: (c) => Discover()));
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
                        style: fw4hsize14gery,
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
              itemCount: itemdata.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (c) => ChallengeScreen()));
                    // Handle item tap
                  },
                  child: Container(
                    margin: EdgeInsets.all(8.0),
                    height: 140,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                        image: AssetImage(itemdata[index].images),
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
