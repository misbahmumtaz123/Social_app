import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:social_app/screens/HomeScreens/Profile/Profilesetting.dart';

import '../../../Config/Colors.dart';
import '../../../Config/assets.dart';
import '../../../Config/strings.dart';
import '../../../config/style.dart';
class EditScreen extends StatefulWidget {
  const EditScreen({Key? key}) : super(key: key);

  @override
  State<EditScreen> createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
                width: 375,
                height: 150,
                child: Image.asset(
                  ImageAssets.img13,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 45.74,
                left: 10,
                width: 275,
                height: 45,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(
                            context,
                            MaterialPageRoute(
                                builder: (c) => SettingScreen()));
                      },
                      icon: Icon(Icons.arrow_back,color: Colors.white,),
                    ),


                    Padding(
                      padding: const EdgeInsets.only(left: 60.0),
                      child: Text(AppStrings.editprofile, style: fw7hsize24white),
                    ),

                  ],
                ),
              ),
              Positioned(
                top: 110,
                left: 147,
                child: Column(
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      child: Image.asset(
                        ImageAssets.img50,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 140,
                left: 180,
                child: Column(
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      child:  IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(SvgAssets.camera),
                      ),

                    ),
                  ],
                ),
              ),
              //boderr
              //------------------
              Positioned(
                top: 250,
                left:30,
                height: 885,
                width: 315,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(AppStrings.Name,style:fw4hsize16black),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: AppStrings.Name,
                        hintStyle: fw400size16txtintxtfld,
                        fillColor: AppColors.fldclrgry,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: EdgeInsets.symmetric(
                          vertical: screenSize.width * 0.04,
                          horizontal: screenSize.width * 0.05,
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(AppStrings.LastName,style:fw4hsize16black),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: AppStrings.LastName,
                        hintStyle: fw400size16txtintxtfld,
                        fillColor: AppColors.fldclrgry,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: EdgeInsets.symmetric(
                          vertical: screenSize.width * 0.04,
                          horizontal: screenSize.width * 0.05,
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(AppStrings.email,style:fw4hsize16black),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: AppStrings.bruemail,
                        hintStyle: fw400size16txtintxtfld,
                        fillColor: AppColors.fldclrgry,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: EdgeInsets.symmetric(
                          vertical: screenSize.width * 0.04,
                          horizontal: screenSize.width * 0.05,
                        ),
                      ),
                    ),
                    SizedBox(height: 145),
                    ElevatedButton(
                      onPressed: () {
                      },
                      child: Text(
                        AppStrings.SAVECHANGES,
                        style: TextStyle(color: AppColors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF888BF4),
                        // Set the button color here
                        onPrimary: Colors.transparent,
                        shadowColor: Colors.transparent,
                        elevation: 0,
                        minimumSize: Size(screenSize.width * 0.84,
                            screenSize.width * 0.12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        padding: EdgeInsets.symmetric(
                            horizontal: screenSize.width * 0.05),
                        textStyle: TextStyle(
                          fontSize: screenSize.width * 0.042,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ],
          ),

        ),
      ),
    );
  }
}