import 'package:app/shared/constants/app_constants.dart';
import 'package:app/shared/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DirverScreen extends StatefulWidget {
  const DirverScreen({super.key});

  @override
  State<DirverScreen> createState() => _DirverScreenState();
}

class _DirverScreenState extends State<DirverScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 12,
            horizontal: AppConstants.screenPadding.w,
          ),
          child: Center(
            child: Column(
              children: [
                Image.asset(
                  "assets/images/prof.jpg",
                  width: 175.w,
                  height: 175.h,
                ),
                SizedBox(height: 40.h),
                Container(
                  alignment: Alignment.center,
                  width: 232.w,
                  padding: EdgeInsets.symmetric(vertical: 3, horizontal: 10),
                  decoration: BoxDecoration(
                    color: AppColors.secondaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    "احمد محمد",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
                SizedBox(height: 20.h),
                Container(
                  alignment: Alignment.center,
                  width: 232.w,
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  decoration: BoxDecoration(
                    color: AppColors.secondaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    "011235465879",
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                SizedBox(height: 20.h),

                Container(
                  alignment: Alignment.center,
                  width: 292.w,
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  decoration: BoxDecoration(
                    color: AppColors.secondaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "214 أ ب د ",
                        style: Theme.of(context).textTheme.headlineMedium
                            ?.copyWith(fontWeight: FontWeight.normal),
                      ),
                      Text(
                        "شاحنة جوانب",
                        style: Theme.of(context).textTheme.headlineMedium
                            ?.copyWith(fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.h),
                Image.asset(
                  "assets/images/default_truck.png",
                  width: double.infinity,
                  // height: 175.h,
                ),
                SizedBox(height: 40.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: 120.w,
                      height: 48.h,
                      child: TextButton(
                        onPressed: () {},
                        style: Theme.of(
                          context,
                        ).textButtonTheme.style?.copyWith(
                          backgroundColor: WidgetStatePropertyAll(
                            Color.fromARGB(255, 162, 63, 6),
                          ),
                        ),
                        child: Text("رفض"),
                      ),
                    ),

                    SizedBox(
                      width: 120.w,
                      height: 48.h,
                      child: TextButton(
                        onPressed: () {},
                        style: Theme.of(context).textButtonTheme.style,
                        child: Text("قبول"),
                      ),
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
