import 'package:app/shared/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShipmentCompleted extends StatelessWidget {
  const ShipmentCompleted({super.key});

  @override
  Widget build(BuildContext context) {
    const orangeColor = AppColors.primaryColor;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(height: 20),
              CircleAvatar(
                radius: 75,
                backgroundColor: orangeColor,
                child: const Icon(
                  Icons.check_rounded,

                  color: Colors.white,
                  size: 70,
                ),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "22/10/2025",
                    style: TextStyle(fontFamily: "tajawal", fontSize: 16.r),
                  ),
                  Text(
                    "مصر, قاهرة",
                    style: TextStyle(
                      color: orangeColor,
                      fontFamily: "tajawal",
                      fontSize: 16.r,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
                child: Column(
                  children: [
                    Expanded(
                      child: Center(
                        child: Container(width: 2, color: orangeColor),
                      ),
                    ),
                    const Icon(Icons.circle, color: orangeColor, size: 10),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "22/10/2025",
                    style: TextStyle(fontFamily: "tajawal", fontSize: 16.r),
                  ),
                  Text(
                    "السعودية, رياض",
                    style: TextStyle(
                      color: orangeColor,
                      fontFamily: "tajawal",
                      fontSize: 16.r,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const Divider(height: 30),
              Directionality(
                textDirection: TextDirection.rtl,
                child: GridView.count(
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 16,
                  childAspectRatio: 2.5,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    buildPlaceholderField("نوع البضاعة"),
                    buildPlaceholderField("مسمى البضاعة"),
                    buildPlaceholderField("التعبئة"),
                    buildPlaceholderField("حالة المادة"),
                  ],
                ),
              ),
              const Divider(height: 30),
              Directionality(
                textDirection: TextDirection.rtl,

                child: GridView.count(
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 16,
                  childAspectRatio: 2.5,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    buildPlaceholderField("نوع الشاحنة"),
                    buildPlaceholderField("وزن الشحنة (طن)"),
                    buildPlaceholderField("الشاحنات المتبقية"),
                    buildPlaceholderField("السعر المعروض"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildPlaceholderField(String label) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        label,
        textAlign: TextAlign.right,
        style: TextStyle(
          fontSize: 14.r,
          color: AppColors.textColor,
          fontWeight: FontWeight.bold,
        ),
      ),
      const SizedBox(height: 4),
      Container(
        height: 35,
        decoration: BoxDecoration(
          color: AppColors.secondaryColor,
          borderRadius: BorderRadius.circular(6),
        ),
      ),
    ],
  );
}
