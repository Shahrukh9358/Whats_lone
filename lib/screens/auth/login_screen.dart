import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:ui_practice/utils/constants.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String selectedCountry = "India";
  List<String> countryList = [
    "India",
    "Africa",
    "China",
    "America",
    "Dubai",
    "Pakistan",
  ];

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
                    text: "Enter your phone number",
                    hight: 19,
                    color: const Color(0xFF00A884),
                    fontweight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 25.h),
                Text(
                  "WhatsApp will need to verify your phone",
                  style: TextStyle(fontSize: 14.h),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "number. Carrier charges may apply",
                  style: TextStyle(fontSize: 14.h),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "What’s my number?",
                  style: TextStyle(color: Color(0xFF00A884), fontSize: 14.h),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 80.h),
                DropdownButtonFormField<String>(
                  items: countryList.map((String country) {
                    return DropdownMenuItem<String>(
                      value: country,
                      child: Text(country),
                    );
                  }).toList(),
                  onChanged: (newValue) {
                    setState(() {
                      selectedCountry = newValue!;
                    });
                  },
                  value: selectedCountry,
                  decoration: const InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                    ),
                  ),
                ),
                SizedBox(height: 320.h,),
                Container(
                  height: 40.h,
                  width: 330.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.green,
                  ),
                  child: TextButton(
                    onPressed: () {
                      Get.toNamed("/verify_number");
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
