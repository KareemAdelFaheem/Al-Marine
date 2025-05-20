import 'package:app/shared/constants/app_constants.dart';
import 'package:app/shared/constants/colors.dart';
import 'package:app/shared/screens/presentation/contact_us.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 2,
                    horizontal: AppConstants.screenPadding.w - 17,
                  ),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset(
                          "assets/images/prof.jpg",
                          width: 125.w,
                          height: 125.h,
                        ),
                      ),
                      SizedBox(height: 20.h),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "البيانات الشخصية",
                              style: Theme.of(context).textTheme.labelMedium,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 5.h),
                      Card(
                        shadowColor: Colors.white,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 15,
                            horizontal: 10,
                          ),
                          height: 125.h,
                          width: 353.w,
                          decoration: BoxDecoration(
                            color: AppColors.secondaryColor,
                            borderRadius: BorderRadius.circular(
                              AppConstants.cardRadius,
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    "كريم عادل حسين",
                                    style:
                                        Theme.of(
                                          context,
                                        ).textTheme.headlineMedium,
                                  ),
                                  Text(
                                    "الاسم",
                                    style:
                                        Theme.of(context).textTheme.titleSmall,
                                  ),
                                ],
                              ),

                              SizedBox(height: 10.h),
                              Container(
                                width: 318.w,
                                height: 1.h,
                                decoration: BoxDecoration(
                                  color: AppColors.cardBorderColor,
                                ),
                              ),
                              SizedBox(height: 10.h),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    "+201150587953",
                                    style:
                                        Theme.of(
                                          context,
                                        ).textTheme.headlineMedium,
                                  ),
                                  Text(
                                    "رقم الهاتف",
                                    style:
                                        Theme.of(context).textTheme.titleSmall,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 10.h),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "البيانات القانونية",
                                  style:
                                      Theme.of(context).textTheme.labelMedium,
                                ),
                              ],
                            ),
                            SizedBox(height: 5.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "يرجي ملئ البيانات القانونية إذا اردت طلب فاتورة إلكترونية *",
                                  style: TextStyle(
                                    color: Color.fromRGBO(0, 0, 0, 0.5),
                                    fontSize: 12.sp,
                                    fontFamily: "tajawal",
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Card(
                        shadowColor: Colors.white,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 15,
                            horizontal: 10,
                          ),
                          height: 60.h,
                          width: 353.w,
                          decoration: BoxDecoration(
                            color: AppColors.secondaryColor,
                            borderRadius: BorderRadius.circular(
                              AppConstants.cardRadius,
                            ),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "20359876",
                                style:
                                    Theme.of(context).textTheme.headlineMedium,
                              ),
                              Text(
                                "الرقم الضريبي",
                                style: Theme.of(context).textTheme.titleSmall,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 5.h),
                      Card(
                        shadowColor: Colors.white,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 15,
                            horizontal: 10,
                          ),
                          height: 60.h,
                          width: 353.w,
                          decoration: BoxDecoration(
                            color: AppColors.secondaryColor,
                            borderRadius: BorderRadius.circular(
                              AppConstants.cardRadius,
                            ),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "صورة من السجل الضريبي",
                                style:
                                    Theme.of(context).textTheme.headlineMedium,
                              ),
                              Icon(Icons.image_outlined),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 5.h),
                      Card(
                        shadowColor: Colors.white,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 15,
                            horizontal: 10,
                          ),
                          height: 60.h,
                          width: 353.w,
                          decoration: BoxDecoration(
                            color: AppColors.secondaryColor,
                            borderRadius: BorderRadius.circular(
                              AppConstants.cardRadius,
                            ),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "صورة من البطاقة الضريبية",
                                style:
                                    Theme.of(context).textTheme.headlineMedium,
                              ),
                              Icon(Icons.image_outlined),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 40.h),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ContactUsScreen(),
                            ),
                          );
                        },
                        style: Theme.of(context).elevatedButtonTheme.style,
                        child: SizedBox(
                          width: 230.w,
                          height: 70.h,
                          child: Center(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                SizedBox(width: 10.w),
                                Icon(Icons.call, size: 50.r),
                                Text("تواصل معنا"),
                                SizedBox(width: 10.w),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back, size: 30),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
