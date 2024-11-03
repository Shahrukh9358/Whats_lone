import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_common/get_reset.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:ui_practice/utils/constants.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenUtilInit(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/logo.png"),
              SizedBox(height: 30.w),
              UIHelper.CustomText(
                text: "Welcome to WhatsApp",
                hight: 25,
                color: Colors.black,
                fontweight: FontWeight.bold,
              ),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  UIHelper.CustomText(
                    text: "Read out",
                    hight: 15,
                    color: const Color(0xFF5E5E5E),
                    fontweight: null,
                  ),
                  UIHelper.CustomText(
                    text: " Privacy Policy.",
                    hight: 15,
                    color: Colors.blue,
                    fontweight: null,
                  ),
                  UIHelper.CustomText(
                    text: " Tap “Agree and continue”",
                    hight: 15,
                    color: const Color(0xFF5E5E5E),
                    fontweight: null,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  UIHelper.CustomText(
                    text: " to accept the",
                    hight: 15,
                    color: const Color(0xFF5E5E5E),
                    fontweight: null,
                  ),
                  UIHelper.CustomText(
                    text: " Terms of Service.",
                    hight: 15,
                    color: Colors.blue,
                    fontweight: null,
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
      floatingActionButton: UIHelper.CustomButton(callback: (){
        Get.toNamed("/login");
      }, buttonName: "Next"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
