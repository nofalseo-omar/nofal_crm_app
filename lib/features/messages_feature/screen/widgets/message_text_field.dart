// ignore_for_file: prefer_const_constructors

import 'package:nofal_crm_app/components/custom_image_handler.dart';
import 'package:nofal_crm_app/components/textFields/custom_text_field.dart';
import 'package:nofal_crm_app/core/constants/app_images_path.dart';
import 'package:nofal_crm_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MessageTextField extends StatelessWidget {
  const MessageTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Row(
        children: [
          CustomImageHandler(AppImages.camera),
          10.horizontalSpace,
          Expanded(
            child: TextFieldComponent(
              hintText: 'اكتب استفسارك هنا ....',
              radius: 14.r,
              fillColor: AppColors.lightwhiteColor,
              borderColor: AppColors.lightwhiteColor,
              suffixIcon: Padding(
                padding: EdgeInsets.all(12.sp),
                child: CustomImageHandler(
                  AppImages.smile,
                  width: 20.sp,
                  height: 20.sp,
                ),
              ),
            ),
          ),
          10.horizontalSpace,
          CustomImageHandler(AppImages.mic),
        ],
      ),
    );
  }
}
