import 'package:flutter/material.dart';
class UIHelper{
  static Widget CustomButton({
    required VoidCallback callback,
    required String buttonName,
  }) {
    return SizedBox(
      width: 350,
      height: 50,
      child: TextButton(
        onPressed: callback,
        style: TextButton.styleFrom(
          backgroundColor: const Color(0xFF00A884),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20), // Circular body
          ),
        ),
        child: Text(
          buttonName,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  static CustomText({required String text, required double hight,required Color? color,required FontWeight? fontweight}){
    return Text(text ,style: TextStyle(
        fontSize: hight,
        color: color??const Color(0xFF5E5E5E),
      fontWeight: fontweight ),
    );
  }
}