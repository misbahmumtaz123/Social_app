import 'package:flutter/material.dart';
import 'package:social_app/config/assets.dart';
import 'package:social_app/config/colors.dart';
import 'package:social_app/config/strings.dart';
import 'package:social_app/config/style.dart';
import 'package:social_app/screens/auth/sign_in/sign_in.dart';
import 'package:social_app/screens/auth/verification/verification.dart';

import '../../../components/Textfields/emailtextfield.dart';
import '../../../components/Textfields/passwordtextfield.dart';
import '../../../components/buttonstyle.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.black,
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
                  padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.04,
                      vertical: screenSize.width * 0.09),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      MyTextField(
                        hintText: AppStrings.email,
                      ),
                      SizedBox(height: screenSize.width * 0.05),
                      PasswordTextField(
                        hintText: AppStrings.password,
                      ),
                      SizedBox(height: screenSize.width * 0.05),
                      PasswordTextField(
                        hintText: AppStrings.cnfrmpswd,
                      ),
                      SizedBox(height: screenSize.width * 0.09),
                      Center(
                        child: MyElevatedButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (c) => Verification()));
                          },
                          label: AppStrings.signupinlogin,
                        ),
                      ),
                      SizedBox(height: screenSize.width * 0.08),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            AppStrings.sgUp,
                            style: fw400size16grey,
                          ),
                          InkWell(
                            child: Text(
                              AppStrings.signin,
                              style: fw400size16purple,
                            ),
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (c) => LoginPage()));
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
