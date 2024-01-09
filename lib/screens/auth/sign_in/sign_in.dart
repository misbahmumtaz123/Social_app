import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// Import your custom asset and color files
import 'package:social_app/config/assets.dart';
import 'package:social_app/config/colors.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            width: 375,
            height: 312,
            child: Image.asset(
              ImageAssets.img7,
              fit: BoxFit.cover,
            ),
          ),
          // Card Widget
          Positioned(
            top: 272,
            width: 375,
            height: 540,
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
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
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
                          vertical: 13.0,
                          horizontal: 20.0,
                        ),
                        labelStyle: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          height: 1.5,
                          letterSpacing: -0.2,
                          color: AppColors.emailtxtclr,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
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
                          vertical: 13.0,
                          horizontal: 20.0,
                        ),
                        labelStyle: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
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
                    SizedBox(height: 10),
                    Center(
                      child: TextButton(
                        onPressed: () {
                          // Implement Forgot Password logic
                          // e.g., Navigator.pushNamed(context, '/forgot_password');
                        },
                        child: Text(
                          'Forgot Password',
                          style: TextStyle(color: AppColors.color3),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          // Implement Login logic
                          // e.g., validate credentials and navigate to next screen
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(color: AppColors.white),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFF888BF4), // Set the button color here
                          onPrimary: Colors.transparent,
                          shadowColor: Colors.transparent,
                          elevation: 0,
                          minimumSize: Size(315, 48),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          textStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('OR LOGIN BY'),
                      ],
                    ),
                    SizedBox(height: 10),
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
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: 'Don\'t have an account? ',
                            style: TextStyle(color: Colors.black),
                            children: [
                              TextSpan(
                                text: 'SIGN UP',
                                style: TextStyle(color: AppColors.color3),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
