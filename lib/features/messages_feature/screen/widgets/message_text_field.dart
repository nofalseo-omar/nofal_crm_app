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
          Icon(
            Icons.add,
            color: AppColors.darkPrimaryColor,
            size: 32.sp,
          ),
          Expanded(
            child: TextFieldComponent(
              hint: 'اكتب استفسارك هنا ....',
              radius: 14.r,
              fillColor: AppColors.lightwhiteColor,
              borderColor: AppColors.lightwhiteColor,
              suffixIcon: Container(
                margin: EdgeInsetsDirectional.only(end: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.sp),
                  color: AppColors.darkPrimaryColor,
                ),
                // width: 48.w,
                // height: 48.h,
                padding: EdgeInsets.all(5),
                child: CustomImageHandler(
                  AppImages.send,
                  width: 24.sp,
                  height: 24.sp,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
