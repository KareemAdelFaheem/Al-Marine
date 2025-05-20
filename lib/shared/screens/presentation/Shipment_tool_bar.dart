import 'package:app/shared/constants/colors.dart';
import 'package:app/shared/screens/presentation/ShipmentDetails_Screen.dart';
import 'package:app/shared/screens/presentation/shipment_tracking.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShipmentToolBar extends StatefulWidget {
  const ShipmentToolBar({super.key});

  @override
  State<ShipmentToolBar> createState() => _ShipmentToolBarState();
}

class _ShipmentToolBarState extends State<ShipmentToolBar> {
  int selectedIndex = 0;
  final List<String> tabs = ["بيانات الشحنة", "متابعة الشحنة"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 60.h,
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.all(0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.orange.shade300),
              ),
              child: Row(
                children: List.generate(tabs.length, (index) {
                  final isSelected = selectedIndex == index;
                  return Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: Container(
                        height: 60,
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        decoration: BoxDecoration(
                          color:
                              isSelected
                                  ? AppColors.primaryColor
                                  : Colors.white,
                          borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(index == 0 ? 10 : 0),
                            right: Radius.circular(index == 0 ? 0 : 10),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            tabs[index],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: isSelected ? Colors.white : Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                            textDirection: TextDirection.rtl,
                          ),
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ),

            Expanded(
              child:
                  selectedIndex == 0
                      ? ShipmentDetailsScreen() // بيانات الشحنة
                      : ShipmentTracking(), // متابعة الشحنة
            ),
          ],
        ),
      ),
    );
  }
}
