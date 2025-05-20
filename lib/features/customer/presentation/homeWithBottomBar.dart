import 'package:app/features/customer/presentation/customerHomePage.dart';
import 'package:app/features/customer/presentation/shipments/create_shipment.dart';
import 'package:app/features/customer/presentation/shipments/shipments_data_screen.dart';
import 'package:app/shared/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lucide_icons/lucide_icons.dart';

class Homewithbottombar extends StatefulWidget {
  const Homewithbottombar({super.key});

  @override
  State<Homewithbottombar> createState() => _HomewithbottombarState();
}

class _HomewithbottombarState extends State<Homewithbottombar> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    Customerhomepage(), // this is the main content of the home screen
    CreateShipment(), // your second screen
    ShipmentDataScreenToolBar(), // your third screen
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(bottom: 30.h),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(45),
            child: Container(
              height: 90.h,
              color: AppColors.secondaryColor.withValues(alpha: 0.26),
              // padding: const EdgeInsets.symmetric(vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: Icon(
                      LucideIcons.home,
                      size: 30,
                      color:
                          _selectedIndex == 0
                              ? AppColors.primaryColor
                              : Colors.black,
                    ),
                    onPressed: () => _onItemTapped(0),
                  ),

                  Material(
                    color: AppColors.secondaryColor,
                    borderRadius: BorderRadius.circular(15),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(15),
                      onTap: () => _onItemTapped(1),
                      child: Container(
                        height: 70,
                        width: 70,
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.add_rounded,
                          size: 50,
                          color:
                              _selectedIndex == 1
                                  ? AppColors.primaryColor
                                  : Colors.black,
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      LucideIcons.package,
                      size: 30,
                      color:
                          _selectedIndex == 2
                              ? AppColors.primaryColor
                              : Colors.black,
                    ),
                    onPressed: () {
                      _onItemTapped(2);
                    },
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
