import 'package:app/features/customer/presentation/shipments/create_shipments_screens.dart/LegalInfo.dart';
import 'package:app/features/customer/presentation/shipments/create_shipments_screens.dart/PriceQuoteForm.dart';
import 'package:app/features/customer/presentation/shipments/create_shipments_screens.dart/RecipientInfoForm.dart';
import 'package:app/features/customer/presentation/shipments/create_shipments_screens.dart/SenderInfoForm.dart';
import 'package:app/features/customer/presentation/shipments/create_shipments_screens.dart/cargoDescriptionForm.dart';
import 'package:app/features/customer/presentation/shipments/create_shipments_screens.dart/truckSpecForm.dart';
import 'package:app/shared/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreateShipment extends StatefulWidget {
  const CreateShipment({super.key});

  @override
  State<CreateShipment> createState() => _CreateShipmentState();
}

class _CreateShipmentState extends State<CreateShipment> {
  int _currentStep = 0;

  List<Widget> steps = [
    SenderInfoForm(),
    RecipientInfoForm(),
    CargoInfoForm(),
    TruckSpecsForm(),
    Pricequoteform(),
    LegalInfoScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              steps[_currentStep],
              Padding(
                padding: EdgeInsets.only(bottom: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    if (_currentStep > 0 && _currentStep < steps.length - 1)
                      SizedBox(
                        height: 65.h,
                        width: 50.h,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            // backgroundColor: AppColors.primaryColor,
                            foregroundColor: Colors.black,
                            shape: CircleBorder(),
                          ),
                          onPressed: () {
                            setState(() {
                              _currentStep--;
                            });
                          },
                          child: Icon(Icons.arrow_back_ios_new_rounded),
                        ),
                      ),
                    if (_currentStep < steps.length - 1)
                      SizedBox(
                        height: 65.h,
                        width: 50.h,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            // backgroundColor: AppColors.primaryColor,
                            foregroundColor: Colors.black,
                            shape: CircleBorder(),
                          ),
                          onPressed: () {
                            setState(() {
                              _currentStep++;
                            });
                          },
                          child: Icon(Icons.arrow_forward_ios_outlined),
                        ),
                      ),
                    // if (_currentStep == steps.length - 1)
                    //   SizedBox(
                    //     height: 65.h,
                    //     width: 150.h,
                    //     child: TextButton(
                    //       style: TextButton.styleFrom(
                    //         // backgroundColor: AppColors.primaryColor,
                    //         foregroundColor: Colors.black,
                    //         shape: CircleBorder(),
                    //       ),
                    //       onPressed: () {
                    //         setState(() {
                    //           _currentStep--;
                    //         });
                    //       },
                    //       child: Icon(Icons.check_circle_outline_rounded),
                    //     ),
                    //   ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: Padding(
      //   padding: EdgeInsets.only(bottom: 30),
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       if (_currentStep > 0)
      //         SizedBox(
      //           height: 65.h,
      //           width: 150.h,
      //           child: TextButton(
      //             onPressed: () {
      //               setState(() {
      //                 _currentStep--;
      //               });
      //             },
      //             child: Text(
      //               "السابق",
      //               style: Theme.of(context).textTheme.labelLarge,
      //             ),
      //           ),
      //         ),
      //       if (_currentStep < steps.length - 1)
      //         TextButton(
      //           onPressed: () {
      //             setState(() {
      //               _currentStep++;
      //             });
      //           },
      //           child: Text("التالي"),
      //         ),
      //       if (_currentStep == steps.length - 1)
      //         TextButton(
      //           onPressed: () {
      //             setState(() {
      //               _currentStep = 0;
      //             });
      //           },
      //           child: Text("انتهيت"),
      //         ),
      //     ],
      //   ),
      // ),
    );
  }
}
