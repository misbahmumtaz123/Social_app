import 'package:flutter/material.dart';

import '../../../config/assets.dart';

// Replace 'ImageAssets.img7' with your actual image asset reference
const String img7 = 'assets/images/img7.png';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Stack(
            children: [
              Positioned(
                top: 0,
                width: 375,
                height: 312,
                child: Image.asset(
                  ImageAssets.img7,
                  fit: BoxFit.cover,
                  width: 375,
                  height: 312,
                ),
              ),

                Padding(
                  padding: const EdgeInsets.only(left: 1.0),
                  child: Card(
                    color: Colors.white,
                    child: Column(
                      children: [],
                    ),

                  ),
                ),

            ],
          ),
        ),
      ),
    );
  }
}
