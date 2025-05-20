// import 'package:app/features/auth/presentation/done_register.dart';
// import 'package:app/features/auth/presentation/get_code.dart';
// import 'package:app/features/auth/presentation/login_screen.dart';
// import 'package:app/features/auth/presentation/register_screen.dart';
// import 'package:app/features/auth/presentation/userType.dart';
// import 'package:app/features/customer/presentation/customerHomePage.dart';
// import 'package:app/features/auth/presentation/login_screen.dart';
// import 'package:app/features/customer/presentation/customerHomePage.dart';
import 'package:app/features/auth/presentation/register_screen.dart';
import 'package:app/features/customer/presentation/homeWithBottomBar.dart';
import 'package:app/features/truck_owner_register/presentation/TruckOwnerHomePage.dart';
import 'package:app/features/truck_owner_register/presentation/TruckOwnerHomeWithBottomBar.dart';
import 'package:app/features/truck_owner_register/presentation/registerData/selfiesPhoto.dart';
import 'package:app/features/truck_owner_register/presentation/registerData/welcome.dart';
import 'package:app/shared/constants/colors.dart';
// import 'package:app/shared/screens/presentation/Dirver_screen.dart';
// import 'package:app/shared/screens/presentation/Drivers_tool_bar.dart';
// import 'package:app/shared/screens/presentation/ShipmentPendingScreen.dart';
// import 'package:app/shared/screens/presentation/Shipment_Drivers_screen.dart';
// import 'package:app/shared/screens/presentation/Shipment_completed.dart';
// import 'package:app/shared/screens/presentation/Shipment_tool_bar.dart';
// import 'package:app/shared/screens/presentation/Splash_screen.dart';
// import 'package:app/shared/screens/presentation/contact_us.dart';
// import 'package:app/shared/screens/presentation/shipment_tracking.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
  FlutterNativeSplash.remove();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            textButtonTheme: TextButtonThemeData(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(AppColors.primaryColor),
                foregroundColor: WidgetStatePropertyAll(Colors.white),

                shape: WidgetStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.r)),
                  ),
                ),
              ),
            ),
            listTileTheme: ListTileThemeData(
              iconColor: Colors.black,
              textColor: Colors.black,
            ),
            expansionTileTheme: const ExpansionTileThemeData(
              iconColor: AppColors.primaryColor,
              collapsedIconColor: AppColors.secondaryColor,
            ),
            appBarTheme: AppBarTheme(backgroundColor: Colors.white),
            cardColor: Colors.white,
            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryColor,
                foregroundColor: AppColors.buttonTextColor,
                textStyle: TextStyle(
                  fontSize: 22.r,
                  fontFamily: 'tajawal',
                  fontWeight: FontWeight.bold,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            primaryColor: AppColors.primaryColor,
            scaffoldBackgroundColor: Colors.white,
            fontFamily: 'tajawal',
            textTheme: TextTheme(
              titleLarge: TextStyle(
                fontSize: 18.r,
                fontFamily: 'tajawal',
                fontWeight: FontWeight.bold,
                color: AppColors.textColor,
              ),
              headlineMedium: TextStyle(
                fontSize: 20.r,
                fontFamily: 'tajawal',
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              headlineLarge: TextStyle(
                fontSize: 24.r,
                fontFamily: 'tajawal',
                fontWeight: FontWeight.bold,
                color: AppColors.primaryColor,
              ),
              labelLarge: TextStyle(
                color: AppColors.buttonTextColor,
                fontSize: 16.r,
                fontFamily: "tajawal",
              ),
              titleSmall: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 0.5),
                fontSize: 20.sp,
                fontFamily: "tajawal",
              ),
              bodyMedium: TextStyle(
                fontSize: 14.r,
                fontFamily: 'tajawal',
                fontWeight: FontWeight.normal,
                color: AppColors.textColor,
              ),
              bodyLarge: TextStyle(
                fontSize: 14.r,
                fontFamily: 'tajawal',
                fontWeight: FontWeight.bold,
                color: AppColors.primaryColor,
              ),
              bodySmall: TextStyle(
                fontSize: 12.r,
                fontFamily: 'tajawal',
                fontWeight: FontWeight.normal,
                color: Colors.black,
              ),
              labelMedium: TextStyle(
                fontFamily: "tajawal",
                fontSize: 22.r,
                fontWeight: FontWeight.bold,
              ),
              labelSmall: TextStyle(
                color: AppColors.buttonTextColor,
                fontSize: 12.r,
                fontFamily: "tajawal",
              ),
            ),
          ),
          home: RegisterScreen(),
        );
      },
    );
  }
}
