import 'package:app/shared/constants/app_constants.dart';
import 'package:app/shared/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SenderInfoForm extends StatefulWidget {
  const SenderInfoForm({super.key});

  @override
  State<SenderInfoForm> createState() => _SenderInfoFormState();
}

class _SenderInfoFormState extends State<SenderInfoForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String? selectedCountry;
  String? selectedCity;
  String? selectedPhoneCode;

  @override
  Widget build(BuildContext context) {
    TextStyle? titleLarge = Theme.of(context).textTheme.titleLarge;

    return Directionality(
      textDirection: TextDirection.rtl,
      child: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: AppConstants.screenPadding.w,
              ),
              child: Form(
                key: _formKey,
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 50.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                          'بيانات الشاحن',
                          style: TextStyle(
                            fontSize: 34.r,
                            fontFamily: 'tajawal',
                            fontWeight: FontWeight.bold,
                            color: AppColors.primaryColor,
                          ),
                        ),
                      ),
                      SizedBox(height: 20.h),
                      Text("دولة الشاحن", style: titleLarge),
                      SizedBox(height: 3.h),
                      buildDropdownField(['السعودية', 'مصر'], (value) {
                        setState(() => selectedCountry = value);
                      }),
                      SizedBox(height: 5.h),
                      Text("مدينة الشاحن", style: titleLarge),
                      SizedBox(height: 3.h),
                      buildDropdownField(['الرياض', 'جدة'], (value) {
                        setState(() => selectedCity = value);
                      }),
                      SizedBox(height: 5.h),
                      Text("اسم مسئول الشحن", style: titleLarge),
                      SizedBox(height: 3.h),
                      buildTextField(),
                      SizedBox(height: 10.h),
                      Text("هاتف مسئول الشحن", style: titleLarge),
                      SizedBox(height: 3.h),
                      buildDropdownField(['+966', '+20'], (value) {
                        setState(() => selectedPhoneCode = value);
                      }),
                      SizedBox(height: 5.h),

                      Text("اسم الشركة المصدرة", style: titleLarge),
                      SizedBox(height: 3.h),
                      buildTextField(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildTextField() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 0),
      child: SizedBox(
        height: 35.h,
        child: TextFormField(
          cursorColor: AppColors.primaryColor,

          style: TextStyle(
            fontSize: 14.r,
            fontFamily: 'tajawal',
            fontWeight: FontWeight.normal,
            color: AppColors.textColor,
          ),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 5.w),
            filled: true,
            fillColor: AppColors.secondaryColor,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ),
    );
  }

  Widget buildDropdownField(List<String> items, Function(String?) onChanged) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: SizedBox(
        height: 35.h,
        child: DropdownButtonFormField<String>(
          borderRadius: BorderRadius.circular(10),
          decoration: InputDecoration(
            // labelText: label,
            filled: true,
            fillColor: AppColors.secondaryColor,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide.none,
            ),
          ),
          items:
              items
                  .map(
                    (item) => DropdownMenuItem<String>(
                      value: item,
                      child: Text(item),
                    ),
                  )
                  .toList(),
          onChanged: onChanged,
        ),
      ),
    );
  }
}
