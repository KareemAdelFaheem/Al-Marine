import 'package:app/features/auth/presentation/register_screen.dart';
import 'package:app/features/customer/presentation/customerHomePage.dart';
import 'package:app/features/customer/presentation/homeWithBottomBar.dart';
import 'package:app/shared/constants/app_assets.dart';
import 'package:app/shared/constants/app_constants.dart';
import 'package:app/shared/constants/colors.dart';
import 'package:app/shared/widgets/register_login_TextField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                  "تسجيل الدخول",
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
                          "رقم الهاتف",
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        SizedBox(
                          height: AppConstants.RTextFieldHeight,
                          child: registerLoginTextField(
                            keyboardType: TextInputType.name,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RegisterScreen(),
                          ),
                          (route) => false,
                        );
                      },
                      style: ButtonStyle(
                        padding: WidgetStateProperty.all(EdgeInsets.all(0)),
                      ),
                      child: Text(
                        "انشاء حساب ",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),

                    Text(
                      "ليس لديك حساب؟",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
                SizedBox(height: 50.h),
                SizedBox(
                  width: AppConstants.RButtonWidth,
                  height: AppConstants.RButtonHeight,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Homewithbottombar(),
                        ),
                        (route) => false,
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
                      "دخول",
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
