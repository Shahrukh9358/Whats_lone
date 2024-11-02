import 'package:get/get.dart';
import 'package:ui_practice/screens/auth/login_screen.dart';
import 'package:ui_practice/screens/auth/profile_info.dart';
import 'package:ui_practice/screens/auth/splash_screen.dart';
import 'package:ui_practice/screens/auth/verify_number.dart';
import 'package:ui_practice/screens/auth/wellcome_screen.dart';
import 'package:ui_practice/screens/home_screens/dashboard.dart';
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
  GetPage(
      name: '/verify_number',
      page: () =>  const VerifyNumber(), // Use a function for lazy loading of the screen
      transition: Transition.cupertino
  ),
  GetPage(
      name: '/profile',
      page: () =>  const ProfileInfo(), // Use a function for lazy loading of the screen
      transition: Transition.cupertino
  ),
  GetPage(
      name: '/home_page',
      page: () =>  const Dashboard(), // Use a function for lazy loading of the screen
      transition: Transition.cupertino
  ),
  ];

