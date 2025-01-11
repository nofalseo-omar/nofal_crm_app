// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:nofal_crm_app/components/custom_button.dart';
import 'package:nofal_crm_app/core/theme/text_themes.dart';
import 'package:nofal_crm_app/core/utils/app_colors.dart';

class ViewTaskDialog extends StatelessWidget {
  const ViewTaskDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "هل أنت متأكد من عرض \nالمهمة",
                textAlign: TextAlign.center,
                style: context.f20700,
              ),
              24.verticalSpace,
              Row(
                children: [
                  Expanded(
                    child: CustomButton(
                      text: 'عرض المهمة',
                      onTap: () {},
                    ),
                  ),
                  8.horizontalSpace,
                  Expanded(
                    child: CustomButton(
                      text: 'إلغاء',
                      color: AppColors.blackColor,
                      backgroundColor: AppColors.lightGray,
                      bordereColor: AppColors.lightGray,
                      onTap: () {
                        Get.back();
                      },
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
