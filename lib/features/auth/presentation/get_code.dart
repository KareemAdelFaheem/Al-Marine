import 'package:app/features/auth/presentation/register_screen.dart';
import 'package:app/features/auth/presentation/userType.dart';
import 'package:app/shared/constants/app_assets.dart';
import 'package:app/shared/constants/app_constants.dart';
import 'package:app/shared/constants/colors.dart';
import 'package:app/shared/widgets/register_login_TextField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';

class GetCode extends StatefulWidget {
  const GetCode({super.key});

  @override
  State<GetCode> createState() => _GetCodeState();
}

class _GetCodeState extends State<GetCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,

      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: 30.h,
              // horizontal: AppConstants.screenPadding.w,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  AppAssets.logoWithBg,
                  height: AppConstants.logoHeight.h,
                  width: AppConstants.logoWidth.w,
                ),
                SizedBox(height: 20.h),
                Text(
                  "قم بكتابة الكود للدخول للحساب",
                  style: TextStyle(
                    fontSize: 24.r,
                    fontFamily: 'tajawal',
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 20.h),
                Container(
                  width: 300.w,
                  child: Text(
                    "ادخل 4 ارقام المرسلة اليك في\nرسالة نصية",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
                SizedBox(height: 30.h),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 60),
                  child: Pinput(
                    keyboardAppearance: Brightness.light,
                    submittedPinTheme: PinTheme(
                      width: 50.r,
                      height: 56.r,
                      textStyle: TextStyle(
                        fontSize: 20.r,
                        color: Colors.green,
                        fontWeight: FontWeight.w600,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.secondaryColor,
                        border: Border.all(color: Colors.green),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    focusedPinTheme: PinTheme(
                      width: 50.r,
                      height: 56.r,
                      textStyle: TextStyle(
                        fontSize: 20.r,
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.w600,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.secondaryColor,
                        border: Border.all(color: AppColors.primaryColor),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    errorPinTheme: PinTheme(
                      width: 50.r,
                      height: 56.r,
                      textStyle: TextStyle(
                        fontSize: 20.r,
                        color: Colors.red,
                        fontWeight: FontWeight.w600,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.secondaryColor,
                        border: Border.all(color: Colors.red),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    defaultPinTheme: PinTheme(
                      width: 50.r,
                      height: 56.r,
                      textStyle: TextStyle(
                        fontSize: 20.r,

                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.secondaryColor,
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 50.h),
                SizedBox(
                  width: AppConstants.RButtonWidth,
                  height: AppConstants.RButtonHeight,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Usertype()),
                      );
                    },

                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(
                        AppColors.buttonColor,
                      ),
                      elevation: WidgetStateProperty.all(0),
                      shape: WidgetStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            AppConstants.RButtonRadius,
                          ),
                        ),
                      ),
                    ),
                    child: Text(
                      "تاكيد",
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        padding: WidgetStateProperty.all(EdgeInsets.all(0)),
                      ),
                      child: Text(
                        "ارسال الرمز ",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),

                    Text(
                      "هل تواجه مشكلة؟ أعد",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
