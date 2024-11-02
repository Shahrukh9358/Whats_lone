import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_common/get_reset.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:ui_practice/utils/constants.dart';

class ProfileInfo extends StatefulWidget {
  const ProfileInfo({super.key});

  @override
  State<ProfileInfo> createState() => _ProfileInfoState();
}

class _ProfileInfoState extends State<ProfileInfo> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) {
        return Scaffold(
          body: SingleChildScrollView( // Wrap only the body with SingleChildScrollView
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 50.h),
                  Center(
                    child: UIHelper.CustomText(
                      text: "Profile info",
                      hight: 19,
                      color: const Color(0xFF00A884),
                      fontweight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 25.h),
                  Text(
                    "Please provide your name and an optional",
                    style: TextStyle(fontSize: 12.h),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "profile photo",
                    style: TextStyle(fontSize: 12.h),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 30.h),
                  Container(
                    height: 120.h,
                    width: 120.h, // Making the container square
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(60.h),
                    ),
                    child: Center(
                      child: Image.asset(
                        "assets/images/camra.png",
                        width: 50.w,
                        height: 50.h,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.w),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        suffixIcon: Icon(Icons.accessibility),
                        hintText: "Type your name here?",
                      ),
                    ),
                  ),
                  SizedBox(height: 290.h,),
                  Container(
                    height: 40.h,
                    width: 330.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.green,
                    ),
                    child: TextButton(
                      onPressed: () {
                      Get.toNamed("home_page");
                      },
                      child: Text(
                        "Next",
                        style: TextStyle(color: Colors.white, fontSize: 14.h),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
