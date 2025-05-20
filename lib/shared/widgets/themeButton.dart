import 'package:app/shared/constants/app_constants.dart';
import 'package:app/shared/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget themeButton({
  required BuildContext context,
  required String text,
  required VoidCallback onPressed,
}) {
  return ElevatedButton(
    onPressed: onPressed,
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(AppColors.buttonColor),
      elevation: WidgetStateProperty.all(0),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppConstants.RButtonRadius),
        ),
      ),
    ),
    child: Container(
      alignment: Alignment.center,
      width: 353.w,
      height: 50.h,
      child: Text(text, style: Theme.of(context).textTheme.labelLarge),
    ),
  );
}
