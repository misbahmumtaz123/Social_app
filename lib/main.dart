import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:social_app/screens/splash/splash_screen.dart';
void main(){
  ResponsiveSizingConfig.instance.setCustomBreakpoints(
    ScreenBreakpoints(desktop: 300, tablet: 200,watch: 50),
  );
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:SplashScreen() ,
      ),
    );
  }
}