// import 'package:flutter/material.dart';
// import 'package:social_app/routes/routes.dart';
// import 'screens/splash/splash_screen.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatefulWidget {
//   const MyApp({super.key});
//
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       initialRoute: SplashScreen.routeName,
//       routes: routes,
//     );
//   }
// }
///////////////////////////////
import 'package:flutter/material.dart';
import 'package:social_app/screens/auth/sign_up/sign_up.dart';

import 'screens/auth/sign_in/sign_in.dart';
void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: LoginPage(),
      ),
    );
  }
}

