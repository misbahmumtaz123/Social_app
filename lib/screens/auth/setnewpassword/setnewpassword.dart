import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:social_app/config/assets.dart';
import 'package:social_app/config/colors.dart';
import 'package:social_app/config/strings.dart';
import 'package:social_app/config/style.dart';

import '../../../components/Textfields/passwordtextfield.dart';
import '../../../components/buttonstyle.dart';
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
                        child:    PasswordTextField(
                          hintText: AppStrings.password,
                        ),
                      ),
                      SizedBox(height: screenSize.width * 0.05),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          color: AppColors.txtfldclr,
                        ),
                        width: screenSize.width * 0.9,
                        child:  PasswordTextField(
                          hintText: AppStrings.cnfrmpswd,
                        ),
                      ),
                      SizedBox(height: screenSize.width * 0.13),
                      Center(
                        child: MyElevatedButton(
                          onPressed: () {

                          },
                          label: AppStrings.signupinlogin,
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
