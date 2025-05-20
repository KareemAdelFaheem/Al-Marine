import 'package:app/features/auth/presentation/get_code.dart';
import 'package:app/features/auth/presentation/login_screen.dart';
import 'package:app/features/auth/presentation/userType.dart';
import 'package:app/shared/constants/app_assets.dart';
import 'package:app/shared/constants/app_constants.dart';
import 'package:app/shared/constants/colors.dart';
import 'package:app/shared/widgets/register_login_TextField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: 30.h,
              horizontal: AppConstants.screenPadding,
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
                  "ادخل بياناتك",
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                SizedBox(height: 30.h),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0),
                  child: Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "الأسم كامل",
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        SizedBox(
                          height: AppConstants.RTextFieldHeight,
                          child: registerLoginTextField(
                            keyboardType: TextInputType.name,
                          ),
                        ),
                        SizedBox(height: 10.h),
                        Text(
                          "رقم الهاتف",
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        SizedBox(
                          height: AppConstants.RTextFieldHeight,
                          child: registerLoginTextField(
                            keyboardType: TextInputType.phone,
                          ),
                        ),
                        SizedBox(height: 10.h),
                        Text(
                          "الإيميل اللإلكتروني",
                          style: Theme.of(context).textTheme.titleLarge,
                        ),

                        SizedBox(
                          height: AppConstants.RTextFieldHeight,
                          child: registerLoginTextField(
                            keyboardType: TextInputType.emailAddress,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ),
                          (route) => false,
                        );
                      },
                      style: Theme.of(context).textButtonTheme.style?.copyWith(
                        padding: WidgetStatePropertyAll(EdgeInsets.all(0)),
                        // backgroundColor: WidgetStatePropertyAll(
                        //   Colors.transparent,
                        // ),
                      ),
                      child: Text(
                        "تسجيل الدخول ",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),

                    Text(
                      "هل لديك حساب بالفعل؟",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
                SizedBox(height: 70.h),
                SizedBox(
                  width: AppConstants.RButtonWidth,
                  height: AppConstants.RButtonHeight,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => GetCode()),
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
                      "التالي",
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
