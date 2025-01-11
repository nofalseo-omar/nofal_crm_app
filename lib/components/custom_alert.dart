import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:nofal_crm_app/components/custom_button.dart';
import 'package:nofal_crm_app/core/utils/app_colors.dart';

void showCustomAlert(
    {required String title,
    required String message,
    required String button1,
    required String button2,
    required Function onTap1,
    required Function onTap2}) {
  showDialog(
    context: Get.context!,
    builder: (BuildContext context) {
      return AlertDialog(
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              textAlign: TextAlign.center,
              style:
                  const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.h),
            const SizedBox(height: 20.0),
            TextField(
              readOnly: true,
              minLines: 4,
              maxLines: 10,
              controller: TextEditingController(text: message),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.r),
                    borderSide: BorderSide(
                        color: AppColors.bgGrey.withOpacity(.5), width: 0.4)),
              ),
            ),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: CustomButton(
                      text: button1,
                      onTap: () {
                        onTap1();
                        Get.back();
                      }),
                ),
                10.horizontalSpace,
                Expanded(
                  child: CustomButton(
                      text: button2,
                      onTap: () {
                        onTap2();
                        Get.back();
                      }),
                ),
              ],
            ),
          ],
        ),
      );
    },
  );
}
