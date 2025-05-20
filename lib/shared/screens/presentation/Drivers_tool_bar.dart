import 'package:app/shared/constants/colors.dart';
import 'package:app/shared/screens/presentation/ShipmentDetails_Screen.dart';
import 'package:app/shared/screens/presentation/Shipment_Drivers_screen.dart';
import 'package:app/shared/screens/presentation/shipment_tracking.dart';
import 'package:flutter/material.dart';

class DriversToolBar extends StatefulWidget {
  const DriversToolBar({super.key});

  @override
  State<DriversToolBar> createState() => _DriversToolBarState();
}

class _DriversToolBarState extends State<DriversToolBar> {
  int selectedIndex = 0;
  final List<String> tabs = ["بيانات الشحنة", "السائقين"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Top tab bar
            Container(
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
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        decoration: BoxDecoration(
                          color: isSelected ? Colors.orange : Colors.white,
                          borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(index == 0 ? 10 : 0),
                            right: Radius.circular(index == 0 ? 0 : 10),
                          ),
                        ),
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
                  );
                }),
              ),
            ),

            // Content based on selected tab
            Expanded(
              child:
                  selectedIndex == 0
                      ? ShipmentDetailsScreen() // بيانات الشحنة
                      : DriversScreen(), // متابعة الشحنة
            ),
          ],
        ),
      ),
    );
  }
}
