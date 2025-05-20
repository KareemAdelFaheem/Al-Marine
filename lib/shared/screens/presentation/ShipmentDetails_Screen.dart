import 'package:app/shared/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShipmentDetailsScreen extends StatelessWidget {
  const ShipmentDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "السائقين الموكلين بالشحنة",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                const SizedBox(height: 16),

                Container(
                  padding: const EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    color: AppColors.secondaryColor,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    textDirection: TextDirection.rtl,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "الاسم",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text("احمد محمد"),
                          SizedBox(height: 8),
                          Text(
                            "رقم الهاتف",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text("01007669160"),
                        ],
                      ),
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage("assets/images/prof.jpg"),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 12),

                // Page Indicator
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(4, (index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                        color:
                            index == 0
                                ? AppColors.primaryColor
                                : Colors.grey[300],
                        shape: BoxShape.circle,
                      ),
                    );
                  }),
                ),

                const SizedBox(height: 24),

                // Route
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.location_pin, color: Colors.brown),
                    SizedBox(width: 4),
                    Column(
                      children: [
                        Text("مصر، القاهرة", style: TextStyle(fontSize: 18)),
                        Icon(Icons.more_vert, color: Colors.brown),
                        Text(
                          "السعودية، الرياض",
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  ],
                ),

                const SizedBox(height: 24),

                // Grid info
                GridView.count(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 12,
                  childAspectRatio: 2.8,
                  children: const [
                    InfoTile(title: "نوع البضاعة"),
                    InfoTile(title: "مسمى البضاعة"),
                    InfoTile(title: "حالة المادة"),
                    InfoTile(title: "التعبئة"),
                    InfoTile(title: "نوع الشاحنة"),
                    InfoTile(title: "وزن الشحنة (طن)"),
                    InfoTile(title: "الشاحنات المتبقية"),
                    InfoTile(title: "السعر المعروض"),
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

class InfoTile extends StatelessWidget {
  final String title;
  const InfoTile({required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
        ),
        SizedBox(height: 3.h),
        Container(
          width: 117.w,
          height: 29.h,
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          decoration: BoxDecoration(
            color: AppColors.secondaryColor,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ],
    );
  }
}
