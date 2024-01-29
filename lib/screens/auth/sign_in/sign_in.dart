import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:social_app/config/assets.dart';
import 'package:social_app/config/colors.dart';
import 'package:social_app/config/strings.dart';
import 'package:social_app/config/style.dart';
import 'package:social_app/screens/WellcomScreen/Selectcatagory.dart';
import 'package:social_app/screens/auth/sign_up/sign_up.dart';

import '../../../components/Textfields/emailtextfield.dart';
import '../../../components/Textfields/passwordtextfield.dart';
import '../../../components/buttonstyle.dart';
import '../forgot_password/forgetpassword.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscurePassword = true;

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
                      Center(
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (c) => ForgetPassword(),
                              ),
                            );
                          },
                          child: Text(
                            AppStrings.ForgotPassword,
                            style: fw400size14purple,
                          ),
                        ),
                      ),
                      SizedBox(height: screenSize.width * 0.05),
                      Center(
                        child: MyElevatedButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (c) => FirstScreen()));
                          },
                          label: AppStrings.login,
                        ),
                      ),
                      SizedBox(height: screenSize.width * 0.06),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            AppStrings.lgin,
                            style: fw400size16grey,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(SvgAssets.google),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(SvgAssets.facebook),
                          ),
                        ],
                      ),
                      SizedBox(height: screenSize.width * 0.06),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            AppStrings.blktextlogin,
                            style: fw400size16grey,
                          ),
                          InkWell(
                            child: Text(
                              AppStrings.signupinlogin,
                              style: fw400size16purple,
                            ),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (c) => SignUp()));
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
