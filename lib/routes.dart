import 'package:get/get.dart';
import 'package:ui_practice/screens/auth/login_screen.dart';
import 'package:ui_practice/screens/auth/splash_screen.dart';
import 'package:ui_practice/screens/auth/wellcome_screen.dart';



final AppRoutes = [
    GetPage(
      name: '/',
      page: () => const SplashScreen(), // Use a function for lazy loading of the screen
      transition: Transition.cupertino
    ),
  GetPage(
      name: '/welcome',
      page: () => const WelcomeScreen(), // Use a function for lazy loading of the screen
      transition: Transition.cupertino
  ),
  GetPage(
      name: '/login',
      page: () => const LoginScreen(), // Use a function for lazy loading of the screen
      transition: Transition.cupertino
  ),
  ];

