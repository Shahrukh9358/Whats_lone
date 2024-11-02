import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:ui_practice/screens/auth/wellcome_screen.dart';
import 'package:ui_practice/utils/constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690), // Adjust the design size based on the original design
      builder: (context, child) {
        return AnimatedSplashScreen(
          splash: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Lottie.asset(
                  "assets/animations/splash_screen.json",
                  height: 150.w,
                  width: 150.h,
                ),
              ),
              UIHelper.CustomText(
                text: "What's App",
                color: const Color(0xFF5E5E5E),
                fontweight: FontWeight.bold,
                hight: 18.h,
              ),
            ],
          ),
          nextScreen:  const WelcomeScreen(),
          duration: 3000,
          splashIconSize: 300.w,
        );
      },
    );
  }
}
