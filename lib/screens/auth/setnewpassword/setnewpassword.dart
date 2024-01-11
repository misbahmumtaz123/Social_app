import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:social_app/config/assets.dart';
import 'package:social_app/config/colors.dart';
import 'package:social_app/config/strings.dart';
import 'package:social_app/config/style.dart';
class SetNewPassword extends StatelessWidget {
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
            height: 292,
            child: Image.asset(
              ImageAssets.img10,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 222,
            width: screenSize.width,
            height: 750,
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
                    screenSize.width * 0.05, // top
                    screenSize.width * 0.05, // right
                    screenSize.width * 0.05, // bottom
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        AppStrings.hsetpassword,
                        style: fw700size16prpl,
                        textAlign: TextAlign.center,
                      ),

                      SizedBox(height: 0.5),
                      Container(
                        decoration: BoxDecoration(
                          color: AppColors.txtfldclr,
                          borderRadius: BorderRadius.circular(24),
                        ),
                        height: 92,
                        width: screenSize.width * 0.9,
                        padding: EdgeInsets.symmetric(
                          vertical: 16,
                          horizontal: 24,
                        ),
                        margin: EdgeInsets.only(top: 24),
                        child: Center(
                          child: Text(
                            AppStrings.msg3,
                            style: fw400size18cntnrtext,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      SizedBox(height: screenSize.width * 0.05),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          color: AppColors.txtfldclr,
                        ),
                        width: screenSize.width * 0.9,
                        child: TextField(
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
                              vertical: 13,
                              horizontal: 20,
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
                        ),
                      ),
                      SizedBox(height: screenSize.width * 0.05),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          color: AppColors.txtfldclr,
                        ),
                        width: screenSize.width * 0.9,
                        child: TextField(
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
                              vertical: 13,
                              horizontal: 20,
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
                        ),
                      ),
                      SizedBox(height: screenSize.width * 0.13),
                      ElevatedButton(
                        onPressed: () {
                        },
                        child: Text(
                          AppStrings.send,
                          style: TextStyle(color: AppColors.white),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFF888BF4),
                          onPrimary: Colors.transparent,
                          shadowColor: Colors.transparent,
                          elevation: 0,
                          minimumSize:
                          Size(screenSize.width * 0.84, screenSize.width * 0.12),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          padding: EdgeInsets.symmetric(
                            vertical: screenSize.width * 0.05,
                            horizontal: screenSize.width * 0.05,
                          ),
                          textStyle: TextStyle(
                            fontSize: screenSize.width * 0.042,
                            fontWeight: FontWeight.bold,
                            height: 1.4,
                            letterSpacing: 0.6,
                          ),
                        ),
                      ),
                      SizedBox(height: screenSize.width * 0.13),
                      Image.asset(
                        ImageAssets.img11,
                        height: 60,
                        width: 180,
                        fit: BoxFit.cover,
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
