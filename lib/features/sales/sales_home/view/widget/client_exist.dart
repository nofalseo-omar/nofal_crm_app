import 'package:nofal_crm_app/components/custom_button.dart';
import 'package:nofal_crm_app/components/custom_image_handler.dart';
import 'package:nofal_crm_app/core/constants/app_images_path.dart';
import 'package:nofal_crm_app/core/theme/text_themes.dart';
import 'package:nofal_crm_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

clientExistDialog() {
  Get.dialog(
    Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: const ClientExistsDialog(),
    ),
  );
}

class ClientExistsDialog extends StatelessWidget {
  const ClientExistsDialog({super.key});

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
            // Text('تاريخ المتابعة ', style: context.f18600),
            // 32.verticalSpace,
            // InputTextFieldWidget(
            //   isDatePicker: true,
            // ),
            GestureDetector(
              onTap: () => Get.back(),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11.r),
                  color: const Color(0xffE8EFF5),
                ),
                width: 40.sp,
                height: 40.sp,
                child: const Icon(Icons.close),
              ),
            ),
            Center(
              child: CustomImageHandler(
                AppImages.retry,
                width: 64.sp,
                height: 64.sp,
              ),
            ),
            12.verticalSpace,
            Center(
              child: Text(
                'هذا العميل مضاف من قبل',
                style: context.f20500,
              ),
            ),
            21.verticalSpace,
            CustomButton(
              text: 'أغلاق',
              onTap: () {
                Get.back();
              },
            ),
          ],
        ),
      ),
    );
  }
}
