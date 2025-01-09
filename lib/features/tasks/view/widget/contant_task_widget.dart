import 'package:nofal_crm_app/components/custom_border_container.dart';
import 'package:nofal_crm_app/components/custom_button.dart';
import 'package:nofal_crm_app/components/custom_image_handler.dart';
import 'package:nofal_crm_app/components/dailog/custom_dialog_with_two_buttom.dart';
import 'package:nofal_crm_app/core/constants/app_images_path.dart';
import 'package:nofal_crm_app/core/localization/app_strings.dart';
import 'package:nofal_crm_app/core/theme/text_themes.dart';
import 'package:nofal_crm_app/core/utils/app_colors.dart';
import 'package:nofal_crm_app/features/tasks/view/widget/iteam_show_task.dart';
import 'package:nofal_crm_app/features/tasks/view/widget/titel_and_subtitel_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:blur/blur.dart';

class ContactTask extends StatelessWidget {
  const ContactTask({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 14.0),
      child: CustomBorderContainer(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 18),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(
                            left: 10.0, right: 8, top: 8, bottom: 8),
                        child: CustomImageHandler(AppImages.arrowBack),
                      ),
                      3.horizontalSpace,
                      Text(
                        AppStrings.poolConsciousness.tr,
                        style: context.f20500,
                      ),
                      60.horizontalSpace,
                      TitleAndSubTitleHeader(
                        title: AppStrings.postNamber.tr,
                        subtitle: '12 ${AppStrings.post.tr}',
                      ),
                      60.horizontalSpace,
                      TitleAndSubTitleHeader(
                        title: AppStrings.imageNamber.tr,
                        subtitle: '12 ${AppStrings.image.tr}',
                      ),
                      60.horizontalSpace,
                      TitleAndSubTitleHeader(
                        title: AppStrings.reportNamber.tr,
                        subtitle: '12 ${AppStrings.reports.tr}',
                      )
                    ],
                  ),
                ),
                const Divider(
                  height: 56,
                  color: AppColors.bulelighting,
                ),
                Wrap(
                  children: List.generate(
                      10,
                      (index) => Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 4),
                            child: index % 2 == 0
                                ? ItemShowTask(
                                    active: index % 2 == 0,
                                  )
                                : Blur(
                                    blur: 8,
                                    overlay: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 26.0),
                                      child: CustomButton(
                                          text: AppStrings.showTask.tr,
                                          onTap: () {
                                            Get.dialog(
                                                CustomDialogWithTwoBottom(
                                              title1: AppStrings.showTask.tr,
                                              title2: AppStrings.cancel.tr,
                                              onTap1: () {},
                                            ));
                                          }),
                                    ),
                                    child: const ItemShowTask(
                                      active: true,
                                    )),
                          )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
