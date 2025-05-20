import 'package:app/shared/constants/app_constants.dart';
import 'package:app/shared/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget registerLoginTextField({required TextInputType keyboardType}) {
  return TextFormField(
    cursorColor: Colors.black,
    keyboardType: keyboardType,
    style: TextStyle(
      fontFamily: "tajawal",
      fontSize: 16.h,
      color: Colors.black,
    ),
    textDirection: TextDirection.rtl,
    decoration: InputDecoration(
      fillColor: AppColors.secondaryColor,
      filled: true,
      contentPadding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 0),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppConstants.RTextFieldRadius),
        borderSide: BorderSide(color: Colors.white, width: 1.5.w),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppConstants.RTextFieldRadius),
        borderSide: BorderSide(color: Colors.white, width: 1.5.w),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppConstants.RTextFieldRadius),
        borderSide: BorderSide(color: Colors.white, width: 0),
      ),
    ),
  );
}
