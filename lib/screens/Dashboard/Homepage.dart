import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:social_app/screens/Dashboard/Discover.dart';
import 'package:social_app/screens/Dashboard/Notification.dart';
import 'package:social_app/screens/Dashboard/Profile.dart';
import '../../config/assets.dart';
import '../../config/colors.dart';
import '../../config/strings.dart';
import '../../config/style.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selectedCategory = AppStrings.popular;
  int currentTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: ClipOval(
        child: FloatingActionButton(
          child: Image.asset(ImageAssets.img22, height: 20, width: 20),
          backgroundColor: AppColors.primary,
          onPressed: () {},
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (c) => HomePage()));
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(SvgAssets.home,
                            color: currentTab == 0 ? AppColors.primary: Colors.grey),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (c) => Discover()));
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(SvgAssets.discover,
                            color: currentTab == 1 ? AppColors.primary: Colors.grey),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (c) => NotificationScreen()));
                        currentTab = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(SvgAssets.notify,
                            color: currentTab == 3 ? AppColors.primary: Colors.grey),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (c) => Profile()));
                        currentTab = 4;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(SvgAssets.profile,
                            color: currentTab == 4 ? AppColors.primary: Colors.grey),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      //AppBar-----------------------
      appBar: AppBar(
        backgroundColor: AppColors.white,
        title: Row(
          children: [
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: AppStrings.Search,
                  hintStyle: fw400size16txtintxtfld,
                  fillColor: AppColors.txtfldclr,
                  filled: true,
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 8, horizontal: 14),
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
            Container(
              margin: EdgeInsets.only(left: 15, right: 15),
              child: ElevatedButton(
                onPressed: () {},
                child: SvgPicture.asset(
                  SvgAssets.share,
                  width: 24,
                  height: 24,
                ),
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(CircleBorder()),
                  padding: MaterialStateProperty.all(
                    EdgeInsets.all(10),
                  ),
                  backgroundColor: MaterialStateProperty.all(
                    AppColors.gry,
                  ),
                ),
              ),
            ),
          ],
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(70),
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildCategoryText(AppStrings.popular),
                buildCategoryText(AppStrings.trending),
                buildCategoryText(AppStrings.following),
              ],
            ),
          ),
        ),
      ),
      //body------------posts------
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          // First Container
          Container(
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color:AppColors.white,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Row(
                  children: [
                    CircleAvatar(
                      radius: 20.0,
                      backgroundImage: AssetImage(
                        ImageAssets.img18,
                      ),
                    ),
                    SizedBox(width: 8.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                         AppStrings.thanhpham,
                          style: fw4hsize16black,
                        ),
                        SizedBox(width: 85),
                        Text(AppStrings.ago,style: fw4hsize14gery),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 8.0),
                Image.asset(
                  ImageAssets.img20,
                  fit: BoxFit.cover,
                  height: 224.0,
                  width: 335,
                ),
                SizedBox(height: 8.0),
                Row(
                  children: [
                    IconButton(
                      icon: SvgPicture.asset(SvgAssets.add,color: AppColors.primary,),
                      onPressed: () {
                      },
                    ),
                    SizedBox(width: 125),
                    Text(AppStrings.twnty,style:fw4hsize14gery),
                    SizedBox(width: 0.05),
                    IconButton(
                      icon: SvgPicture.asset(SvgAssets.msg),
                      onPressed: () {
                      },
                    ),
                    SizedBox(width: 3),
                    Text(AppStrings.onetwntyfine,style:fw4hsize14gery),
                    IconButton(
                      icon: SvgPicture.asset(SvgAssets.like),
                      onPressed: () {

                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 20.0,
                      backgroundImage: AssetImage(
                        ImageAssets.img19,
                      ),
                    ),
                    SizedBox(width: 8.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppStrings.bruno,
                         style: fw4hsize16black,
                        ),
                        SizedBox(width: 100),
                        Text(AppStrings.ago,style:fw4hsize14gery),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 8.0),
                Image.asset(
                  ImageAssets.img21,
                  fit: BoxFit.cover,
                  height: 224.0,
                  width: 335,
                ),
                SizedBox(height: 8.0),
                Row(
                  children: [
                    IconButton(
                      icon: SvgPicture.asset(SvgAssets.add,color: AppColors.primary,),
                      onPressed: () {

                      },
                    ),
                    SizedBox(width: 100),
                    Text(AppStrings.threehudrd,style: fw4hsize14gery),
                    IconButton(
                      icon: SvgPicture.asset(SvgAssets.msg),
                      onPressed: () {
                      },
                    ),
                    SizedBox(width: 5),
                    Text(AppStrings.twnty,style:fw4hsize14gery),
                    IconButton(
                      icon: SvgPicture.asset(SvgAssets.like),
                      onPressed: () {
                        // Add message functionality
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],

      ),
    );
  }

  Widget buildCategoryText(String category) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedCategory = category;
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          category,
          style: TextStyle(
            fontSize: 18,
            fontWeight: selectedCategory == category
                ? FontWeight.bold
                : FontWeight.normal,
            color:
                selectedCategory == category ? AppColors.primary : Colors.grey,
          ),
        ),
      ),
    );
  }
}
