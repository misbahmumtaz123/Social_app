import 'package:flutter/material.dart';
const String IMAGEPATH = "assets/images";
const String SVGPATH = "assets/icons";

class ImageAssets {
  static const String img1 = "$IMAGEPATH/splsh_1.png";
  static const String img2 = "$IMAGEPATH/splsh_2.png";
  static const String img3 = "$IMAGEPATH/splsh_3.png";
  static const String img4 = "$IMAGEPATH/splsh_4.png";
  static const String img5 = "$IMAGEPATH/bg.png";
  static const String img6 = "$IMAGEPATH/top.png";
  static const String img7 = "$IMAGEPATH/signin_bg.png";
  static const String img8 = "$IMAGEPATH/login.png";
  static const String img9 = "$IMAGEPATH/sng.png";
}
class SvgAssets {
 // google and facebook icons
  static const String google = "$SVGPATH/google.svg";
  static const String facebook = "$SVGPATH/facebook.svg";
  static const String password = "$SVGPATH/pswrd.svg";
  static const String Frame= "$SVGPATH/Frame.svg";
}



class PrimaryColorGradient {
  static const Color color1 = Color(0xFF888BF4);
  static const Color color2 = Color(0xFF5151C6);
  static const LinearGradient primary = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      color1,
      color2,
    ],
    stops: [0.0, 1.0],
    tileMode: TileMode.clamp,
  );
}
