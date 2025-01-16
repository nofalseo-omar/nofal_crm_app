// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:nofal_crm_app/components/custom_image_handler.dart';
import 'package:nofal_crm_app/core/constants/app_images_path.dart';
import 'package:nofal_crm_app/core/theme/text_themes.dart';
import 'package:nofal_crm_app/core/utils/app_colors.dart';

class MediaCampaignDetailsBottomSheet extends StatelessWidget {
  const MediaCampaignDetailsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40.r),
          topRight: Radius.circular(40.r),
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: AlignmentDirectional.centerEnd,
            child: GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xffF2F2F2),
                  shape: BoxShape.circle,
                ),
                padding: EdgeInsets.all(5),
                child: Icon(Icons.close),
              ),
            ),
          ),
          Row(
            children: [
              CustomImageHandler(AppImages.eyeOff),
              10.horizontalSpace,
              Text(
                "إقاف",
                style: context.f18600,
              ),
            ],
          ),
          20.verticalSpace,
          Row(
            children: [
              CustomImageHandler(AppImages.edit),
              10.horizontalSpace,
              Text(
                "تعديل",
                style: context.f18600,
              ),
            ],
          ),
          20.verticalSpace,
          Row(
            children: [
              CustomImageHandler(AppImages.delete),
              10.horizontalSpace,
              Text(
                "حذف",
                style: context.f18600,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
