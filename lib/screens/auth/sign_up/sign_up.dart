import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:social_app/config/assets.dart';
import 'package:social_app/config/colors.dart';
import 'package:social_app/config/strings.dart';
import 'package:social_app/config/style.dart';
import 'package:social_app/screens/auth/sign_in/sign_in.dart';
import 'package:social_app/screens/auth/verification/verification.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            width: screenSize.width,
            height: 312,
            child: Image.asset(
              ImageAssets.img7,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 272,
            width: screenSize.width,
            height: screenSize.height - 32,
            child: Center(
              child: Card(
                color: AppColors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(28),
                    topRight: Radius.circular(28),
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(0),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(
                    screenSize.width * 0.05, // left
                    screenSize.width * 0.10, // top
                    screenSize.width * 0.05, // right
                    screenSize.width * 0.05, // bottom
                  ),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          hintText:  AppStrings.email,
                          hintStyle: fw400size16txtintxtfld,
                          fillColor: AppColors.txtfldclr,
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
                      SizedBox(height: screenSize.width * 0.05),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: AppStrings.password,
                          hintStyle: fw400size16txtintxtfld,
                          fillColor: AppColors.txtfldclr,
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
                          suffixIcon: Padding(
                            padding: EdgeInsets.all(12.0),
                            child: SvgPicture.asset(
                              SvgAssets.Frame,
                              width: 24,
                              height: 24,
                            ),
                          ),
                        ),
                        obscureText: true,
                      ),
                      SizedBox(height: screenSize.width * 0.05),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: AppStrings.cnfrmpswd,
                          hintStyle: fw400size16txtintxtfld,
                          fillColor: AppColors.txtfldclr,
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
                          suffixIcon: Padding(
                            padding: EdgeInsets.all(12.0),
                            child: SvgPicture.asset(
                              SvgAssets.Frame,
                              width: 24,
                              height: 24,
                            ),
                          ),
                        ),
                        obscureText: true,
                      ),
                      SizedBox(height: screenSize.width * 0.06),
                      Center(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (c) =>Verification()));
                          },
                          child: Text(
                            AppStrings.signin,
                            style: TextStyle(color: AppColors.white),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFF888BF4),
                            onPrimary: Colors.transparent,
                            shadowColor: Colors.transparent,
                            elevation: 0,
                            minimumSize: Size(screenSize.width * 0.84,
                                screenSize.width * 0.12),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            padding: EdgeInsets.symmetric(
                                vertical: screenSize.width * 0.05,
                                horizontal: screenSize.width * 0.05),
                            textStyle: TextStyle(
                              fontSize: screenSize.width * 0.042,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: screenSize.width * 0.06),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            AppStrings.sgUp,
                            style:fw400size16grey ,
                          ),
                          InkWell(
                            child: Text(
                              AppStrings.signin,
                              style:
                              fw400size16purple,
                            ),
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (c) => LoginPage()));
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
