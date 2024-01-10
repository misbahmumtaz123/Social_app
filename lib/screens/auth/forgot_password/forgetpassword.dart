import 'package:flutter/material.dart';
import 'package:social_app/config/assets.dart';
import 'package:social_app/config/colors.dart';
import 'package:social_app/config/strings.dart';
import 'package:social_app/config/style.dart';
import 'package:social_app/screens/auth/sign_in/sign_in.dart';
import 'package:social_app/screens/auth/verification/verification.dart';

import '../setnewpassword/setnewpassword.dart';

class ForgetPassword extends StatelessWidget {
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
            height: 590,
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
                        AppStrings.forgtH,
                        style: fw700size16prpl,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 0.5),
                      Container(
                        color: AppColors.txtfldclr,
                        height: screenSize.width * 0.35,
                        width: screenSize.width * 0.9,
                        padding: EdgeInsets.symmetric(
                          vertical: 16,
                          horizontal: 24,
                        ),
                        margin: EdgeInsets.only(top: 24),
                        child: Text(
                          AppStrings.msg2,
                          style: fw400size18cntnrtext,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: screenSize.width * 0.05),
                      Container(
                        decoration: BoxDecoration(
                          color: AppColors.txtfldclr,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        width: screenSize.width * 0.9,
                        child: TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            hintText: AppStrings.email,
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
                          ),
                        ),
                      ),
                      SizedBox(height: screenSize.width * 0.3),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (c) => SetNewPassword()),
                          );
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
                          minimumSize: Size(screenSize.width * 0.84, screenSize.width * 0.12),
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
                      SizedBox(height: screenSize.width * 0.05),
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
