import 'package:app/shared/constants/colors.dart';
import 'package:app/shared/screens/models/shipment_status.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShipmentCard extends StatelessWidget {
  IconData icon;
  ShipmentStatus status;

  ShipmentCard({required this.status, required this.icon, required, super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Card(
        color: AppColors.secondaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        elevation: 0,
        margin: EdgeInsets.symmetric(vertical: 8.h, horizontal: 12.w),
        child: Padding(
          padding: EdgeInsets.all(12.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 8.w,
                      vertical: 4.h,
                    ),
                    decoration: BoxDecoration(
                      color: status.color,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      status.title,
                      style: TextStyle(
                        color: status.textColor,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Text("SHI-20321", style: TextStyle(fontSize: 14.sp)),
                      SizedBox(width: 6.w),
                      const Icon(Icons.arrow_forward, size: 16),
                    ],
                  ),
                ],
              ),

              SizedBox(height: 12.h),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("نوع الشاحنة", style: TextStyle(fontSize: 12.sp)),
                  Row(
                    children: [
                      Text("حاويات جانبية", style: TextStyle(fontSize: 12.sp)),
                      // SizedBox(width: 8.w),
                      // const Text("–"),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 6.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("بدأت الشحنة بيوم", style: TextStyle(fontSize: 12.sp)),
                  Row(
                    children: [
                      Text("22/10/2018", style: TextStyle(fontSize: 12.sp)),
                      // SizedBox(width: 8.w),
                      // const Text("–"),
                    ],
                  ),
                ],
              ),

              SizedBox(height: 12.h),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Text(
                        "20158",
                        style: TextStyle(
                          color: Colors.orange,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        " ج.م",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ],
                  ),
                ],
              ),

              SizedBox(height: 10.h),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 6.h,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: LinearProgressIndicator(
                        value: 0.6,
                        backgroundColor: Colors.grey.shade200,
                        valueColor: AlwaysStoppedAnimation<Color>(
                          AppColors.primaryColor,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("من", style: TextStyle(fontWeight: FontWeight.bold)),
                      Text(
                        "إلي",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 8.h),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "مصر، القاهرة",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "مصر، القاهرة",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
