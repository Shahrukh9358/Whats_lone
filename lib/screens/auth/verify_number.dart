import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ui_practice/utils/constants.dart';
class VerifyNumber extends StatefulWidget {
  const VerifyNumber({super.key});

  @override
  State<VerifyNumber> createState() => _VerifyNumberState();
}

class _VerifyNumberState extends State<VerifyNumber> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) {
        return Scaffold(
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 50.h),
                Center(
                  child: UIHelper.CustomText(
                    text: "Verifying your number",
                    hight: 19,
                    color: const Color(0xFF00A884),
                    fontweight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 25.h),
                Text(
                  "You’ve tried to register +911234567890",
                  style: TextStyle(fontSize: 12.h),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "recently. Wait before requesting an sms or a call",
                  style: TextStyle(fontSize: 12.h),
                  textAlign: TextAlign.center,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "with your code.",
                      style: TextStyle(fontSize: 12.h),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      " Wrong number?",
                      style: TextStyle(color: Colors.green, fontSize: 12.h),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                SizedBox(height: 30.h),
                SizedBox(
                  height: 50.h, // Set height for the ListView
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.symmetric(horizontal: 5.w),
                        width: 40.w,
                        height: 50.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[300],
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 50.h,),
                Text("Didn’t receive code",style: TextStyle(color: Colors.green,fontSize: 14.h),),
                SizedBox(height: 300.h,),
                Container(
                  height: 40.h,
                  width: 330.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.green,
                  ),
                  child: TextButton(
                    onPressed: () {
                    Get.toNamed("/profile");
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
        );
      },
    );
  }
}
