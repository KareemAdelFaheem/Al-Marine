import 'package:app/shared/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Pricequoteform extends StatefulWidget {
  const Pricequoteform({super.key});

  @override
  State<Pricequoteform> createState() => _PricequoteformState();
}

class _PricequoteformState extends State<Pricequoteform> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Center(
                          child: Text(
                            'عرض السعر',
                            style: TextStyle(
                              fontSize: 24.r,
                              fontFamily: 'tajawal',
                              fontWeight: FontWeight.bold,
                              color: AppColors.primaryColor,
                            ),
                          ),
                        ),
                        const SizedBox(height: 24),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "السعر المعروض",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16.sp,
                              ),
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 12,
                                    ),
                                    decoration: BoxDecoration(
                                      color: AppColors.secondaryColor,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: DropdownButton<String>(
                                      value: null,
                                      isExpanded: true,
                                      hint: const Text(''),
                                      items: [],
                                      onChanged: (_) {},
                                      underline: const SizedBox(),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 8),
                                Expanded(
                                  child: Container(
                                    height: 50,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: AppColors.secondaryColor,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: const Text(
                                      '',
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 24),
                        Text(
                          'السعر الكلي',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.sp,
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          '• يرجى العلم أن السعر الإجمالي يشمل زيادة بنسبة 3% لتكلفة الخدمة\n'
                          '• لا تشمل تكلفة بطاقات الطرق أو تصاريح الشحن أو\n'
                          'إجراءات التأخير عند المناطق الحدودية',
                          textDirection: TextDirection.rtl,
                          style: TextStyle(fontSize: 14),
                        ),
                        const SizedBox(height: 8),
                        Directionality(
                          textDirection: TextDirection.ltr,
                          child: Row(
                            children: [
                              Checkbox(
                                value: true,
                                onChanged: (_) {},
                                activeColor: Colors.orange,
                              ),
                              const Expanded(
                                child: Text(
                                  'في حالة طلب فاتورة الكترونية تزيد التكلفة بقيمة ٣%',
                                  style: TextStyle(fontSize: 14),
                                  textDirection: TextDirection.rtl,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 50.h),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.buttonColor,
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: const Text(
                            'طلب فاتورة الكترونية',
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ),
                        const SizedBox(height: 12),
                        // ElevatedButton(
                        //   onPressed: () {},
                        //   style: ElevatedButton.styleFrom(
                        //     backgroundColor: AppColors.primaryColor,
                        //     padding: const EdgeInsets.symmetric(vertical: 16),
                        //   ),
                        //   child: const Text(
                        //     'إنتهيت',
                        //     style: TextStyle(fontSize: 16, color: Colors.white),
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
