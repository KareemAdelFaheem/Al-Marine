import 'dart:async';

import 'package:app/features/customer/presentation/homeWithBottomBar.dart';
import 'package:app/shared/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoneRegister extends StatefulWidget {
  const DoneRegister({super.key});

  @override
  State<DoneRegister> createState() => _DoneRegisterState();
}

class _DoneRegisterState extends State<DoneRegister> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => Homewithbottombar()),
        (Route<dynamic> route) => false,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200.h,
              width: 200.w,
              decoration: BoxDecoration(
                color: AppColors.secondaryColor,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.check,
                size: 100.r,
                color: AppColors.primaryColor,
              ),
            ),
            SizedBox(height: 50.h),
            Text(
              "تم انشاء الحساب",
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ],
        ),
      ),
    );
  }
}
