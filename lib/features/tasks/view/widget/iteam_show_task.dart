import 'package:nofal_crm_app/components/custom_image_handler.dart';
import 'package:nofal_crm_app/core/constants/app_images_path.dart';
import 'package:nofal_crm_app/core/localization/app_strings.dart';
import 'package:nofal_crm_app/core/utils/app_colors.dart';
import 'package:nofal_crm_app/features/tasks/view/widget/titel_value_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ItemShowTask extends StatelessWidget {
  const ItemShowTask({
    super.key,
    required this.active,
  });
  final bool active;
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xffE8F8FE),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  active
                      ? Align(
                          alignment: Alignment.topCenter,
                          child: CustomImageHandler(
                            AppImages.taskImage,
                            width: 180.w,
                          ))
                      : Container(
                          color: Colors.white,
                          width: 190.w,
                          height: 70.h,
                        ),
                  Positioned(
                    top: 8,
                    right: 10,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: AppColors.lightGray,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 8.0, vertical: 1),
                                child: Text("2"),
                              ),
                            ),
                            90.horizontalSpace,
                            if (!active)
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: const Color(0xffB0B0B0)
                                        .withOpacity(.15)),
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 19.0, vertical: 3),
                                  child: Text("الوعي"),
                                ),
                              )
                          ],
                        ),
                        if (!active)
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Text("لا يوجد صورة",
                                style: Get.textTheme.headlineMedium),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
              8.verticalSpace,
              const Text("نحن هنا لمساعدتك ،تواصل م.."),
              6.verticalSpace,
              RowTitleAndValue(
                title: "${AppStrings.description.tr} : ",
                value: 'غير موجود',
              ),
              4.verticalSpace,
              RowTitleAndValue(
                title: "${AppStrings.durationOfTheTask.tr} : ",
                value: ' ٢:٤٦:١٩',
              ),
              4.verticalSpace,
              RowTitleAndValue(
                title: "${AppStrings.socialMedia.tr} : ",
                value: ' فيس بوك',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
