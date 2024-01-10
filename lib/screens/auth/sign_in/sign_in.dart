import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:social_app/config/assets.dart';
import 'package:social_app/config/colors.dart';
import 'package:social_app/config/strings.dart';
import 'package:social_app/config/style.dart';
import 'package:social_app/screens/auth/forgot_password/forgetpassword.dart';
import 'package:social_app/screens/auth/sign_up/sign_up.dart';
import 'package:social_app/screens/home/Homepage.dart';

class LoginPage extends StatelessWidget {
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
          // Card Widget
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
                  padding: EdgeInsets.all(screenSize.width * 0.05),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          hintText:  AppStrings.email,
                          hintStyle:fw400size16txtintxtfld,
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
                      SizedBox(height: screenSize.width * 0.025),
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
                      SizedBox(height: screenSize.width * 0.025),
                      Center(
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (c) => ForgetPassword()));
                          },
                          child: Text(
                            AppStrings.ForgotPassword,
                            style: fw400size14purple,
                          ),
                        ),
                      ),
                      SizedBox(height: screenSize.width * 0.025),
                      Center(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (c) => HomePage()));
                          },
                          child: Text(
                           AppStrings.login,
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
                      ),
                      SizedBox(height: screenSize.width * 0.025),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(AppStrings. lgin,style: fw400size16grey,),
                        ],
                      ),
                      SizedBox(height: screenSize.width * 0.025),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {
                            },
                            icon: SvgPicture.asset(SvgAssets.google),
                          ),
                          IconButton(
                            onPressed: () {
                            },
                            icon: SvgPicture.asset(SvgAssets.facebook),
                          ),
                        ],
                      ),
                      SizedBox(height: screenSize.width * 0.025),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            AppStrings.blktextlogin,
                            style:fw400size16grey ,
                          ),
                          InkWell(
                            child: Text(
                              AppStrings.signupinlogin,
                              style:
                              fw400size16purple,
                            ),
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (c) => SignUp()));
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
