import 'package:flutter/material.dart';
class UIHelper{
  static  Widget CustomButton({required VoidCallback callback,required String buttonname}){
   return SizedBox(
     width: 35,
     height: 300,
     child: TextButton(onPressed: (){
       callback();
     }, child: Text(buttonname,style: const TextStyle(fontSize: 14,color: Colors.white),)),
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