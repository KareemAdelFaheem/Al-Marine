import 'package:app/features/auth/presentation/done_register.dart';
import 'package:app/features/auth/presentation/login_screen.dart';
import 'package:app/features/truck_owner_register/presentation/registerData/welcome.dart';
import 'package:app/shared/constants/app_assets.dart';
import 'package:app/shared/constants/app_constants.dart';
import 'package:app/shared/constants/colors.dart';
import 'package:app/shared/widgets/custom_card.dart';
import 'package:app/shared/widgets/register_login_TextField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Usertype extends StatefulWidget {
  const Usertype({super.key});

  @override
  State<Usertype> createState() => _UsertypeState();
}

class _UsertypeState extends State<Usertype> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 30.h,
            horizontal: AppConstants.screenPadding - 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              Image.asset(
                AppAssets.logoWithBg,
                height: AppConstants.logoHeight.h,
                width: AppConstants.logoWidth.w,
              ),
              Text(
                "من انت ؟",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              customCard(
                title: "تاجر أو عميل",
                subtitle:
                    "لديك بضائع ترغب في شحنها من مكان لآخر. بصفتك تاجراً، تستطيع إنشاء الشحنات وإدارتها والتواصل مع مالكي الشاحنات لتوصيل بضائعك بأمان",
                icon: Icon(
                  Icons.person,
                  size: 40.r,
                  color: AppColors.primaryColor,
                ),
                context: context,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DoneRegister()),
                  );
                },
              ),
              customCard(
                title: "مالك شاحنة",
                subtitle:
                    "تمتلك شاحنة واحدة وتبحث عن عقود شحن. يتيح لك هذا الدور تقديم العروض على الشحنات وإدارتها لخدمة شاحنتك الوحيدة.",
                icon: Icon(
                  Icons.fire_truck,
                  size: 40.r,
                  color: AppColors.primaryColor,
                ),
                context: context,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TruckDriverWelcome(),
                    ),
                  );
                },
              ),
              customCard(
                title: "مقاول سائقين أو شركة",
                subtitle:
                    "تدير عدة شاحنات وترغب في تنظيم عمليات الشحن على مستوى أوسع. يتيح لك هذا الدور إدارة أسطولك بالكامل. ودعوة السائقين. والإشراف على شحنات متعددة في وقت واحد.",
                icon: Icon(
                  Icons.house,
                  size: 40.r,
                  color: AppColors.primaryColor,
                ),
                context: context,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TruckDriverWelcome(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
