import 'dart:io';
import 'package:app/features/auth/presentation/get_code.dart';
import 'package:app/features/auth/presentation/login_screen.dart';
import 'package:app/features/auth/presentation/register_screen.dart';
import 'package:app/features/customer/presentation/homeWithBottomBar.dart';
import 'package:app/shared/constants/app_assets.dart';
import 'package:app/shared/constants/app_constants.dart';
import 'package:app/shared/constants/colors.dart';
import 'package:app/shared/widgets/register_login_TextField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

class LegalInfoScreen extends StatefulWidget {
  const LegalInfoScreen({super.key});

  @override
  State<LegalInfoScreen> createState() => _LegalInfoScreenState();
}

class _LegalInfoScreenState extends State<LegalInfoScreen> {
  XFile? _comm_selectedImage;
  XFile? _tax_selectedImage;
  XFile? _comm_temp;
  XFile? _tax_temp;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 30.h,
            horizontal: AppConstants.screenPadding,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                AppAssets.logoWithBg,
                height: AppConstants.logoHeight.h,
                width: AppConstants.logoWidth.w,
              ),
              SizedBox(height: 20.h),
              Text(
                "البيانات القانونية",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              SizedBox(height: 30.h),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0),
                child: Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "الرقم الضريبي",
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          color: AppColors.primaryColor,
                        ),
                      ),
                      SizedBox(height: 5.h),

                      SizedBox(
                        height: AppConstants.RTextFieldHeight,
                        child: registerLoginTextField(
                          keyboardType: TextInputType.number,
                        ),
                      ),

                      SizedBox(height: 20.h),
                      Text(
                        "صورة السجل التجاري",
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          color: AppColors.primaryColor,
                        ),
                      ),
                      SizedBox(height: 5.h),

                      _buildImagePicker(1),

                      SizedBox(height: 20.h),
                      Text(
                        "صورة السجل الضريبي",
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          color: AppColors.primaryColor,
                        ),
                      ),
                      SizedBox(height: 5.h),
                      _buildImagePicker(2),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 50.h),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildImagePicker(int index) {
    return GestureDetector(
      onTap: () async {
        final permissionStatus = Permission.storage.request();
        if (await permissionStatus.isGranted) {
          if (index == 1) {
            _comm_selectedImage = await _pickImageFromGallery();
            if (_comm_selectedImage != null) {
              setState(() {
                _comm_temp = _comm_selectedImage;
              });
            }
          } else {
            _tax_selectedImage = await _pickImageFromGallery();
            if (_tax_selectedImage != null) {
              setState(() {
                _tax_temp = _tax_selectedImage;
              });
            }
          }
        }
      },
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 14),
          decoration: BoxDecoration(
            color: AppColors.secondaryColor,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: AppColors.cardBorderColor),
          ),
          child:
              index == 1
                  ? (_comm_temp != null
                      ? Image.file(File(_comm_temp!.path))
                      : normalRow())
                  : (_tax_temp != null
                      ? Image.file(File(_tax_temp!.path))
                      : normalRow()),
          //   children: [
          //     Icon(Icons.attach_file, color: Colors.black),
          //     SizedBox(width: 8),
          //     // Expanded(
          //     //   child: SingleChildScrollView(
          //     //     scrollDirection: Axis.horizontal,
          //     //     physics: const BouncingScrollPhysics(),
          //     //     child: Text(
          //     //       index == 1
          //     //           ? (_comm_temp != null
          //     //               ? _comm_temp!.name
          //     //               : "اختر الصورة")
          //     //           : (_tax_temp != null ? _tax_temp!.name : "اختر الصورة"),
          //     //       style: TextStyle(
          //     //         fontSize: 16,
          //     //         color: Colors.black,
          //     //         fontWeight: FontWeight.bold,
          //     //       ),
          //     //     ),
          //     //   ),
          //     // ),
          //   ],
          // ),
        ),
      ),
    );
  }

  Widget normalRow() {
    return Row(
      children: [
        Icon(Icons.attach_file, color: Colors.black),
        SizedBox(width: 8),
        Text(
          "اختر الصورة",

          style: TextStyle(
            fontSize: 16,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Future<XFile?> _pickImageFromGallery() async {
    final pickedImage = await ImagePicker().pickImage(
      source: ImageSource.camera,
    );

    // print(pickedImage!);
    return pickedImage;
  }
}
