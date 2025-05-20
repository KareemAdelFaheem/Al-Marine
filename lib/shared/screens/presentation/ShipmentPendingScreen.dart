import 'package:app/shared/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShipmentConfirmationScreen extends StatelessWidget {
  const ShipmentConfirmationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                Text(
                  "#SH21408",
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 24),
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          text: "حالة الشحنة: ",
                          style: Theme.of(
                            context,
                          ).textTheme.headlineLarge?.copyWith(
                            // fontSize: 20.sp,
                            color: Colors.black,
                          ),
                          children: [
                            TextSpan(
                              text: "معلقة",
                              style: Theme.of(
                                context,
                              ).textTheme.headlineLarge?.copyWith(
                                // fontSize: 20.sp,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 12.h),
                      Text(
                        "• يرجى كتابة رقم الإيداع أو التحويل\n• ورفع صورة الإيداع أو التحويل",
                        style: Theme.of(
                          context,
                        ).textTheme.titleSmall?.copyWith(fontSize: 14.sp),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 30),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "رقم الإيداع او التحويل",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(height: 6),
                      Container(
                        height: 40,
                        decoration: BoxDecoration(
                          color: AppColors.secondaryColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      const SizedBox(height: 40),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "يرجى تصوير ورفع ورقة الإيداع",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: 6.h),
                      Container(
                        height: 40,
                        decoration: BoxDecoration(
                          color: AppColors.secondaryColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Center(
                          child: Icon(Icons.upload, color: Colors.brown),
                        ),
                      ),
                      // const Spacer(),
                      SizedBox(height: 50.h),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.buttonColor,
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: const Text(
                            "تأكيد",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
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
