import 'package:app/shared/constants/app_constants.dart';
import 'package:app/shared/constants/colors.dart';
import 'package:app/shared/screens/models/shipment_status.dart';
import 'package:app/shared/widgets/notification_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  final List<NotificationStatus> shipmentStatusList = [
    NotificationStatus.newFleetProposed,
    NotificationStatus.paymentVerificationNeeded,
    NotificationStatus.created,
    NotificationStatus.started,
    NotificationStatus.done,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
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
                  child: SizedBox(
                    height: 50.h,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'الإشعارات',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: shipmentStatusList.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          notificationCard(
                            context: context,
                            status: shipmentStatusList[index],
                          ),
                          SizedBox(height: 8.h),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
