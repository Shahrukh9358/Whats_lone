import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ui_practice/utils/constants.dart';

class ProfileInfo extends StatefulWidget {
  const ProfileInfo({super.key});

  @override
  State<ProfileInfo> createState() => _ProfileInfoState();
}

class _ProfileInfoState extends State<ProfileInfo> {
  TextEditingController nameController = TextEditingController();
  File? pickedImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 60.h),
            UIHelper.CustomText(
              text: "Profile Info",
              hight: 16.h,
              color: const Color(0xFF00A884),
              fontweight: FontWeight.bold,
            ),
            SizedBox(height: 20.h),
            UIHelper.CustomText(
              text: "Please provide your name and an optional",
              hight: 12.h,
              color: Colors.black, fontweight: null,
            ),
            UIHelper.CustomText(
              text: "profile photo",
              hight: 12.h,
              color: Colors.black, fontweight: null,
            ),
            SizedBox(height: 20.h),
            GestureDetector(
              onTap: () => _openBottomSheet(context),
              child: CircleAvatar(
                backgroundColor: Colors.grey,
                radius: 80,
                backgroundImage:
                pickedImage != null ? FileImage(pickedImage!) : null,
                child: pickedImage == null
                    ? Image.asset(
                  "assets/images/camra.png",
                  height: 40.h,
                  fit: BoxFit.cover,
                )
                    : null,
              ),
            ),
            SizedBox(height: 30.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 243.w,
                  child: TextField(
                    keyboardType: TextInputType.name,
                    controller: nameController,
                    decoration: const InputDecoration(
                      hintText: "type your name here",
                      border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.green)),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.green),
                      ),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.green)),
                    ),
                  ),
                ),
                SizedBox(width: 10.w),
                Image.asset("assets/images/happy.png"),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: UIHelper.CustomButton(
        callback: () {
          Get.toNamed('/home_page');
        },
        buttonName: "Next",
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  void _openBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SizedBox(
          height: 200.h,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      _imagePicker(ImageSource.camera);
                    },
                    icon: const Icon(
                      Icons.camera_alt,
                      size: 70,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(width: 20),
                  IconButton(
                    onPressed: () {
                      _imagePicker(ImageSource.gallery);
                    },
                    icon: const Icon(
                      Icons.image,
                      size: 70,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  Future<void> _imagePicker(ImageSource imageSource) async {
    try {
      final photo = await ImagePicker().pickImage(source: imageSource);
      if (photo == null) return;
      final tempImage = File(photo.path);
      setState(() {
        pickedImage = tempImage;
      });
    } catch (ex) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(ex.toString()),
          backgroundColor: Colors.red,
        ),
      );
    }
  }
}
