import 'package:app/features/truck_owner_register/presentation/registerData/selfiesPhoto.dart';
import 'package:app/shared/constants/app_constants.dart';
import 'package:app/shared/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TruckDriverWelcome extends StatefulWidget {
  const TruckDriverWelcome({super.key});

  @override
  State<TruckDriverWelcome> createState() => _TruckDriverWelcomeState();
}

class _TruckDriverWelcomeState extends State<TruckDriverWelcome> {
  List<String> itemsList = [
    "الصورة الشخصية",
    "صورة جواز السفر",
    "صورة رخصة القيادة",
    "الشروط والاحكام",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppConstants.screenPadding.w),
        child: SizedBox(
          width: double.infinity,
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "مرحب بك",
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                SizedBox(height: 10.h),
                Text(
                  "يرجي الموافقة وتصوير البيانات التالية",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                SizedBox(height: 40.h),
                Expanded(
                  child: ListView.builder(
                    itemCount: itemsList.length,
                    itemBuilder:
                        (context, index) => itemTile(
                          title: itemsList[index],
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Selfiephoto(),
                              ),
                            );
                          },
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

  Widget itemTile({required title, required Function() onPressed}) {
    return Column(
      children: [
        GestureDetector(
          onTap: onPressed,
          child: ListTile(
            contentPadding: EdgeInsets.all(0),
            title: Text(
              title,
              style: Theme.of(
                context,
              ).textTheme.labelLarge?.copyWith(color: Colors.black),
            ),
            trailing: Icon(Icons.arrow_forward),
          ),
        ),
        Divider(color: AppColors.cardBorderColor),
      ],
    );
  }
}
