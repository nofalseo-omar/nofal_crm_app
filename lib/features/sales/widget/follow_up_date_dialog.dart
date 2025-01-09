import 'package:nofal_crm_app/components/custom_button.dart';
import 'package:nofal_crm_app/components/textFields/InputTextFieldWidget.dart';
import 'package:nofal_crm_app/core/theme/text_themes.dart';
import 'package:nofal_crm_app/core/utils/app_colors.dart';
import 'package:nofal_crm_app/features/marketing_manger_feature/dailgoes/add_immediate_task_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

followUpDateDialog() {
  Get.dialog(
    Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: const FollowUpDateDialog(),
    ),
  );
}

class FollowUpDateDialog extends StatelessWidget {
  const FollowUpDateDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350.w,
      // height: 220.h,
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.all(
          Radius.circular(14.r),
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 24.h),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisSize: MainAxisSize.min,
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('تاريخ المتابعة ', style: context.f18600),
            32.verticalSpace,
            InputTextFieldWidget(
              isDatePicker: true,
            ),
            Row(
              children: [
                Expanded(
                  child: CustomButton(
                    text: 'تأكيد',
                    onTap: () {},
                  ),
                ),
                32.horizontalSpace,
                Expanded(
                  child: CustomButton(
                    text: 'الرجوع للخلف',
                    onTap: () => Get.back(),
                    backgroundColor: AppColors.lightGray,
                    bordereColor: AppColors.lightGray,
                    color: AppColors.blackColor,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
