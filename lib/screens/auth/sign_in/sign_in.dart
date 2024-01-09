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
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Email',
                          hintText: 'Enter your email',
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
                          labelStyle: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: screenSize.width * 0.042,
                            fontWeight: FontWeight.w400,
                            height: 1.5,
                            letterSpacing: -0.2,
                            color: AppColors.emailtxtclr,
                          ),
                        ),
                      ),
                      SizedBox(height: screenSize.width * 0.025),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Password',
                          hintText: 'Enter your password',
                          fillColor: Color(0xFFF3F5F7),
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
                          labelStyle: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: screenSize.width * 0.042,
                            fontWeight: FontWeight.w400,
                            height: 1.5,
                            letterSpacing: -0.2,
                            color: Color(0xFFBDBDBD),
                          ),
                          suffixIcon: Icon(
                            Icons.lock,
                          ), // Password icon
                        ),
                        obscureText: true,
                      ),
                      SizedBox(height: screenSize.width * 0.025),
                      Center(
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (c) => ForgetPassword()));
                          },
                          child: Text(
                            AppStrings.ForgotPassword,
                            style:Frgtpswd,
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
                            'Login',
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
                          Text('OR LOGIN BY'),
                        ],
                      ),
                      SizedBox(height: screenSize.width * 0.025),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Implement Google Login button
                          IconButton(
                            onPressed: () {
                              // Implement Google Login logic
                            },
                            icon: SvgPicture.asset(SvgAssets.google),
                          ),
                          // Implement Facebook Login button
                          IconButton(
                            onPressed: () {
                              // Implement Facebook Login logic
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
                            style: TextStyleblk, // Add your desired style here
                          ),
                          InkWell(
                            child: Text(
                              AppStrings.signupinlogin,
                              style:
                                  SIGNUPTextStyle, // Add your desired style here
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
