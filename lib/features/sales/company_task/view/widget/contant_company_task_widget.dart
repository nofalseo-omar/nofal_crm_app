import 'package:nofal_crm_app/components/custom_border_container.dart';
import 'package:nofal_crm_app/components/custom_button.dart';
import 'package:nofal_crm_app/components/dailog/custom_dialog_with_two_buttom.dart';
import 'package:nofal_crm_app/core/localization/app_strings.dart';
import 'package:nofal_crm_app/core/theme/text_themes.dart';
import 'package:nofal_crm_app/core/utils/app_colors.dart';
import 'package:nofal_crm_app/features/sales/company_task/view/widget/iteam_task_company.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:blur/blur.dart';

class ContactTaskCompany extends StatelessWidget {
  const ContactTaskCompany({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(start: 14.0),
      child: CustomBorderContainer(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 18),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text('قائمة مهام الشركة ',
                        style: context.f20700
                            ?.copyWith(color: const Color(0xff020202))),
                    const Spacer(),
                    CircleAvatar(
                      backgroundColor: Colors.grey.shade300,
                      radius: 15.sp,
                      child: const Icon(
                        Icons.arrow_back,
                      ),
                    ),
                    SizedBox(width: 10.sp),
                    CircleAvatar(
                      radius: 15.sp,
                      child: const Icon(Icons.arrow_forward),
                    ),
                  ],
                ),
                20.verticalSpace,
                Wrap(
                  children: List.generate(
                    10,
                    (index) => Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8.0,
                        vertical: 4,
                      ),
                      child: index % 2 == 0
                          ? const ItemTaskCompany()
                          : Blur(
                              blur: 8,
                              overlay: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 26.0),
                                child: CustomButton(
                                  text: 'عرض المهمة',
                                  onTap: () {
                                    Get.dialog(
                                      CustomDialogWithTwoBottom(
                                        title1: 'عرض المهمة',
                                        title2: 'AppStrings.cancel.tr',
                                        backgroundColor1:
                                            AppColors.primaryColor,
                                        onTap1: () {},
                                      ),
                                    );
                                  },
                                ),
                              ),
                              child: const ItemTaskCompany(),
                            ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
