import 'package:flutter/widgets.dart';
import 'package:social_app/screens/onboarding/onboarding.dart';
import '../screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  OnBoarding.routeName: (context) => const OnBoarding(),
};
