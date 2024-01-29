// import 'package:flutter/material.dart';
// class LikeButton extends StatelessWidget {
//   final bool isLiked;
//   void Function()? onTap;
//  LikeButton({super.key,required this.isLiked, required this.onTap});
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Icon(
//         isLiked? Icons.favorite:Icons.favorite_border,
//         color: isLiked?Colors.red:Colors.grey,
//       ),
//     );
//   }
// }
//
import 'package:flutter/material.dart';
import 'package:social_app/config/colors.dart';

class MyElevatedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String label;
  final double width;
  final double height;

  const MyElevatedButton({
    required this.onPressed,
    required this.label,
    this.width = 315,
    this.height = 42,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        label,
        style: TextStyle(color: Colors.white),
      ),
      style: ElevatedButton.styleFrom(
        primary: Color(0xFF888BF4),
        onPrimary: Colors.transparent,
        shadowColor: Colors.transparent,
        elevation: 0,
        minimumSize: Size(width, height),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        padding: EdgeInsets.fromLTRB(14, 18, 14, 18),
        textStyle: TextStyle(
          fontSize: MediaQuery.of(context).size.width * 0.042,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
