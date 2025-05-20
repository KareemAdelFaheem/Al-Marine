import 'package:app/shared/constants/app_constants.dart';
import 'package:app/shared/screens/models/shipment_status.dart';
import 'package:app/shared/constants/colors.dart';
import 'package:app/shared/screens/presentation/ShipmentDetails_Screen.dart';
import 'package:app/shared/screens/presentation/shipment_tracking.dart';
import 'package:app/shared/widgets/shipment_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShipmentDataScreenToolBar extends StatefulWidget {
  const ShipmentDataScreenToolBar({super.key});

  @override
  State<ShipmentDataScreenToolBar> createState() =>
      _ShipmentDataScreenToolBarState();
}

class _ShipmentDataScreenToolBarState extends State<ShipmentDataScreenToolBar> {
  int selectedIndex = 0;

  final List<String> tabs = [
    "الشحنات\nالجارية",
    "الشحنات المعلقة",
    "الشحنات المكتملة",
  ];
  List<ShipmentCard> onGoingShipments = [
    ShipmentCard(status: ShipmentStatus.ongoing, icon: Icons.local_shipping),
  ];

  List<ShipmentCard> completedShipments = [
    ShipmentCard(status: ShipmentStatus.completed, icon: Icons.check),
    ShipmentCard(status: ShipmentStatus.completed, icon: Icons.check),
  ];

  List<ShipmentCard> pendingShipments = [
    ShipmentCard(status: ShipmentStatus.billUploadNeeded, icon: Icons.warning),
    ShipmentCard(status: ShipmentStatus.billReviewing, icon: Icons.warning),
    ShipmentCard(status: ShipmentStatus.waitForTrucks, icon: Icons.warning),
  ];
  List<ShipmentCard> shipments = [];

  @override
  void initState() {
    super.initState();
    shipments = onGoingShipments;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Container(
                height: 60.h,
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: AppColors.primaryColor),
                ),
                child: Row(
                  children: List.generate(tabs.length, (index) {
                    final isSelected = selectedIndex == index;
                    return Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIndex = index;
                            if (index == 0) {
                              shipments = onGoingShipments;
                            } else if (index == 1) {
                              shipments = pendingShipments;
                            } else {
                              shipments = completedShipments;
                            }
                          });
                        },
                        child: Container(
                          height: 60,
                          padding: const EdgeInsets.symmetric(
                            // vertical: 12,
                            // horizontal: 5,
                          ),
                          decoration: BoxDecoration(
                            color:
                                isSelected
                                    ? AppColors.primaryColor
                                    : Colors.white,
                            borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(index == 0 ? 10 : 0),
                              right: Radius.circular(
                                index == 0
                                    ? 0
                                    : index == 1
                                    ? 0
                                    : 10,
                              ),
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

              // Content based on selected tab
              Expanded(
                child: ListView.builder(
                  itemCount: shipments.length,
                  itemBuilder: (context, index) {
                    return shipments[index];
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
