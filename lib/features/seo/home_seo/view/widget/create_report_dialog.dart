// ignore_for_file: prefer_const_constructors

import 'package:nofal_crm_app/components/custom_button.dart';
import 'package:nofal_crm_app/components/textFields/InputTextFieldWidget.dart';
import 'package:nofal_crm_app/core/theme/text_themes.dart';
import 'package:nofal_crm_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

createReportDialog() {
  Get.dialog(
    Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: const CreateReportDialog(),
    ),
  );
}

class CreateReportDialog extends StatelessWidget {
  const CreateReportDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600.h,
      width: 1000.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            decoration: BoxDecoration(
              color: AppColors.lightBlueColor.withOpacity(0.5),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15.r),
                topRight: Radius.circular(15.r),
              ),
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 20.w,
              vertical: 13.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'إنشاء التقرير النهائي',
                  style: context.f20500,
                ),
                InkWell(
                  onTap: () => Get.back(),
                  child: Icon(Icons.close),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 24.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: InputTextFieldWidget(
                          color: AppColors.whiteColor,
                          title: "اسم الحملة",
                          hint: 'دعاية',
                        ),
                      ),
                      32.horizontalSpace,
                      Expanded(
                        child: InputTextFieldWidget(
                          color: AppColors.whiteColor,
                          title: "اسم المشروع",
                          hint: 'نوفل سيو',
                        ),
                      ),
                    ],
                  ),
                  // Row(
                  //   children: [
                  //     Expanded(
                  //       child: InputTextFieldWidget(
                  //         color: AppColors.whiteColor,
                  //         title: "اسم البوست",
                  //         hint: 'اكتب عدد أعمال مرحلة الوعي',
                  //       ),
                  //     ),
                  //     32.horizontalSpace,
                  //     Expanded(
                  //       child: InputTextFieldWidget(
                  //         color: AppColors.whiteColor,
                  //         title: "السوشيال ميديا",
                  //         hint: 'اكتب عدد أعمال مرحلة الوعي',
                  //       ),
                  //     ),
                  //   ],
                  // ),

                  // Row(
                  //   children: [
                  //     Expanded(
                  //       child: CustomDropDownFormField(
                  //         title: 'موجه إلي',
                  //         items: [
                  //           DropdownMenuItem(
                  //             child: Text("test"),
                  //             value: "test",
                  //           ),
                  //           DropdownMenuItem(
                  //             child: Text("test2"),
                  //             value: "test2",
                  //           ),
                  //         ],
                  //         onChanged: (value) {},
                  //         value: null,
                  //         hintText: "",
                  //       ),
                  //       // child: InputTextFieldWidget(
                  //       //   color: AppColors.whiteColor,
                  //       //   title: "اسم البوست",
                  //       //   hint: 'اكتب عدد أعمال مرحلة الوعي',
                  //       // ),
                  //     ),
                  //     32.horizontalSpace,
                  //     Expanded(child: SizedBox()),
                  //   ],
                  // ),
                  // const SizedBox(height: 16),
                  InputTextFieldWidget(
                    color: AppColors.whiteColor,
                    title: "التقرير",
                    hint: 'آكتب الوصف هنا',
                    maxLines: 10,
                  ),
                  SizedBox(
                    width: 150.w,
                    child: CustomButton(
                      text: 'إنشاء',
                      onTap: () {},
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
