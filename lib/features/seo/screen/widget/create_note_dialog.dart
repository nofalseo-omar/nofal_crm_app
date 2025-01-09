// ignore_for_file: prefer_const_constructors

import 'package:nofal_crm_app/components/custom_button.dart';
import 'package:nofal_crm_app/components/textFields/InputTextFieldWidget.dart';
import 'package:nofal_crm_app/core/theme/text_themes.dart';
import 'package:nofal_crm_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

createNoteDialog() {
  Get.dialog(
    Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: const CreateNoteDialog(),
    ),
  );
}

class CreateNoteDialog extends StatelessWidget {
  const CreateNoteDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350.w,
      height: 300.h,
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.all(
          Radius.circular(14.r),
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 24.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisSize: MainAxisSize.min,
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('اكتب ملاحظة', style: context.f20700),
          // Spacer(),
          32.verticalSpace,
          Expanded(
            child: InputTextFieldWidget(
              hint: 'اكتب ملاحظاتك هنا',
              maxLines: 5,
            ),
          ),
          // Spacer(),
          Row(
            children: [
              Expanded(
                child: CustomButton(
                  text: 'إرسال',
                  onTap: () => Get.back(),
                ),
              ),
              16.horizontalSpace,
              Expanded(
                child: CustomButton(
                  text: 'الغاء',
                  color: AppColors.blackColor,
                  backgroundColor: AppColors.lightGray,
                  bordereColor: AppColors.lightGray,
                  onTap: () => Get.back(),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
