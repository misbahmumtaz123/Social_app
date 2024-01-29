import 'package:flutter/material.dart';
import 'package:social_app/config/assets.dart';
import 'package:social_app/config/colors.dart';
import 'package:social_app/config/strings.dart';
import 'package:social_app/config/style.dart';
import '../../../components/Textfields/emailtextfield.dart';
import '../../../components/buttonstyle.dart';
import '../setnewpassword/setnewpassword.dart';

class ForgetPassword extends StatelessWidget {
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
                  padding: EdgeInsets.all(
                    screenSize.width * 0.05,
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
                        decoration: BoxDecoration(
                          color: AppColors.txtfldclr,
                          borderRadius: BorderRadius.circular(24),
                        ),
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
                          borderRadius: BorderRadius.circular(24),
                        ),
                        width: screenSize.width * 0.9,
                        child:
                        MyTextField(
                          hintText: AppStrings.email,
                        ),

                      ),
                      SizedBox(height: screenSize.width * 0.25),
                      Center(
                        child: MyElevatedButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (c) => SetNewPassword()));
                          },
                          label: AppStrings.send,
                        ),
                      ),
                      SizedBox(height: screenSize.width * 0.08),
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
