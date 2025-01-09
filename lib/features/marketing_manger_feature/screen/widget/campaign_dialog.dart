import 'package:nofal_crm_app/components/custom_button.dart';
import 'package:nofal_crm_app/components/custom_dropdown_form_field.dart';
import 'package:nofal_crm_app/components/textFields/InputTextFieldWidget.dart';
import 'package:nofal_crm_app/core/theme/text_themes.dart';
import 'package:nofal_crm_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CampaignDialog extends StatelessWidget {
  const CampaignDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
                  'إنشاء مهمة',
                  style: context.f20500,
                ),
                InkWell(
                  onTap: () => Get.back(),
                  child: const Icon(Icons.close),
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
                      const Expanded(
                        child: InputTextFieldWidget(
                          color: AppColors.whiteColor,
                          title: "اسم الحملة",
                          hint: 'اكتب عدد أعمال مرحلة الوعي',
                        ),
                      ),
                      32.horizontalSpace,
                      const Expanded(
                        child: InputTextFieldWidget(
                          color: AppColors.whiteColor,
                          title: "اسم المشروع",
                          hint: 'اكتب عدد أعمال مرحلة الوعي',
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Expanded(
                        child: InputTextFieldWidget(
                          color: AppColors.whiteColor,
                          title: "اسم البوست",
                          hint: 'اكتب عدد أعمال مرحلة الوعي',
                        ),
                      ),
                      32.horizontalSpace,
                      const Expanded(
                        child: InputTextFieldWidget(
                          color: AppColors.whiteColor,
                          title: "السوشيال ميديا",
                          hint: 'اكتب عدد أعمال مرحلة الوعي',
                        ),
                      ),
                    ],
                  ),

                  Row(
                    children: [
                      Expanded(
                        child: CustomDropDownFormField(
                          title: 'موجه إلي',
                          items: const [
                            DropdownMenuItem(
                              value: "test",
                              child: Text("test"),
                            ),
                            DropdownMenuItem(
                              value: "test2",
                              child: Text("test2"),
                            ),
                          ],
                          onChanged: (value) {},
                          value: null,
                          hintText: "",
                        ),
                        // child: InputTextFieldWidget(
                        //   color: AppColors.whiteColor,
                        //   title: "اسم البوست",
                        //   hint: 'اكتب عدد أعمال مرحلة الوعي',
                        // ),
                      ),
                      32.horizontalSpace,
                      const Expanded(child: SizedBox()),
                    ],
                  ),
                  // const SizedBox(height: 16),
                  const InputTextFieldWidget(
                    color: AppColors.whiteColor,
                    title: "اسم البوست",
                    hint: 'اكتب عدد أعمال مرحلة الوعي',
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
