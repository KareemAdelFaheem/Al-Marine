// import 'package:app/features/customer/presentation/shipments/create_shipment.dart';
// import 'package:app/features/customer/presentation/shipments/shipments_data_screen.dart';
import 'package:app/shared/constants/app_constants.dart';
import 'package:app/shared/constants/colors.dart';
import 'package:app/shared/screens/presentation/notifications_screen.dart';
import 'package:app/shared/screens/presentation/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:lucide_icons/lucide_icons.dart';

class Customerhomepage extends StatefulWidget {
  const Customerhomepage({super.key});

  @override
  State<Customerhomepage> createState() => _CustomerhomepageState();
}

class _CustomerhomepageState extends State<Customerhomepage> {
  // int _selectedIndex = 0;

  // void _onItemTapped(int index) {
  //   setState(() => _selectedIndex = index);
  // }

  // final List<Widget> _screens = [
  //   Customerhomepage(),
  //   CreateShipment(),
  //   ShipmentsDataScreen(),
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(
                  horizontal: AppConstants.screenPadding.w,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 12),
                      color: Colors.white,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            // padding: EdgeInsets.all(10),
                            margin: EdgeInsets.only(left: 10),
                            decoration: BoxDecoration(
                              color: AppColors.secondaryColor.withAlpha(76),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder:
                                        (context) =>
                                            const NotificationsScreen(),
                                  ),
                                );
                              },
                              child: Icon(
                                Icons.notifications_active_outlined,
                                size: 25,
                              ),
                            ),
                          ),
                          // Text(
                          //   'الصفحة الرئيسية',
                          //   style: TextStyle(
                          //     fontSize: 20,
                          //     fontWeight: FontWeight.bold,
                          //   ),
                          // ),
                          ClipRRect(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => UserProfile(),
                                  ),
                                );
                              },
                              child: Image.asset(
                                "assets/images/prof.jpg",
                                width: 50,
                                height: 50,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "مرحبا احمد محمد",
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                    SizedBox(height: 20.h),
                    Container(
                      height: 137.h,
                      width: 353.w,
                      padding: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        color: AppColors.secondaryColor.withValues(alpha: 0.45),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: AppColors.cardBorderColor),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            "assets/images/truck.png",
                            // width: 183.w,
                            // height: 137.h,
                            scale: 1.2.r,
                          ),
                          Text(
                            "دائما معك في\nالطريق",
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Card(
                      shadowColor: Colors.white,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 15,
                          horizontal: 10,
                        ),
                        height: 155.h,
                        width: 353.w,
                        decoration: BoxDecoration(
                          color: AppColors.secondaryColor,
                          borderRadius: BorderRadius.circular(
                            AppConstants.cardRadius,
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "الشحنة الجارية",
                              style: Theme.of(context).textTheme.headlineMedium,
                            ),
                            SizedBox(height: 10.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "بغداد",
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ), // destination
                                SizedBox(width: 5.w),
                                Icon(Icons.arrow_back),
                                SizedBox(width: 5.w),
                                Text(
                                  "القاهرة",
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ), // source
                              ],
                            ),
                            SizedBox(height: 20.h),
                            Row(
                              children: [
                                Text(
                                  "50%",
                                  style: TextStyle(
                                    fontSize: 14.r,
                                    fontFamily: 'tajawal',
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.textColor,
                                  ),
                                ),
                              ],
                            ),
                            LinearProgressIndicator(
                              minHeight: 13.h,
                              borderRadius: BorderRadius.circular(30),
                              backgroundColor: Colors.white,
                              valueColor: AlwaysStoppedAnimation<Color>(
                                AppColors.primaryColor,
                              ),
                              value: 0.5,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Card(
                      shadowColor: Colors.white,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 15,
                          horizontal: 10,
                        ),
                        height: 155.h,
                        width: 353.w,
                        decoration: BoxDecoration(
                          color: AppColors.secondaryColor,
                          borderRadius: BorderRadius.circular(
                            AppConstants.cardRadius,
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "الشحنة المعلقة",
                              style: Theme.of(context).textTheme.headlineMedium,
                            ),
                            SizedBox(height: 10.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      AppConstants.cardRadius,
                                    ),
                                    color: Colors.white,
                                  ),
                                  child: Text("متبقى 3 شحنات"),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "بغداد",
                                      style:
                                          Theme.of(context).textTheme.bodyLarge,
                                    ), // destination
                                    SizedBox(width: 5.w),
                                    Icon(Icons.arrow_back),
                                    SizedBox(width: 5.w),
                                    Text(
                                      "القاهرة",
                                      style:
                                          Theme.of(
                                            context,
                                          ).textTheme.bodyMedium,
                                    ), // source
                                  ],
                                ),
                              ],
                            ),

                            SizedBox(height: 10.h),
                            Container(
                              width: 318,
                              height: 1,
                              decoration: BoxDecoration(
                                color: AppColors.cardBorderColor,
                              ),
                            ),
                            SizedBox(height: 10.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      AppConstants.cardRadius,
                                    ),
                                    color: Colors.white,
                                  ),
                                  child: Text("إنتظار الدفع"),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "بغداد",
                                      style:
                                          Theme.of(context).textTheme.bodyLarge,
                                    ), // destination
                                    SizedBox(width: 5.w),
                                    Icon(Icons.arrow_back),
                                    SizedBox(width: 5.w),
                                    Text(
                                      "القاهرة",
                                      style:
                                          Theme.of(
                                            context,
                                          ).textTheme.bodyMedium,
                                    ), // source
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
