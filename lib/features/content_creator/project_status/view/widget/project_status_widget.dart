// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:nofal_crm_app/components/custom_button.dart';
import 'package:nofal_crm_app/components/custom_image_handler.dart';
import 'package:nofal_crm_app/core/constants/app_images_path.dart';
import 'package:nofal_crm_app/core/theme/text_themes.dart';
import 'package:nofal_crm_app/core/utils/app_colors.dart';
import 'package:nofal_crm_app/features/content_creator/home/view/widgets/table_widget/table_cell_item.dart';
import 'package:nofal_crm_app/features/content_creator/project_status/view/widget/view_task_dialog.dart';

class ProjectStatusWidget extends StatelessWidget {
  const ProjectStatusWidget({super.key, this.isBlured = false});
  final bool isBlured;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.lightBlue.withOpacity(.1),
        borderRadius: BorderRadius.circular(10.r),
      ),
      padding: EdgeInsets.all(20),
      child: Stack(
        alignment: Alignment.center,
        children: [
          ImageFiltered(
            imageFilter: ImageFilter.blur(
                sigmaX: isBlured ? 0 : 3, sigmaY: isBlured ? 0 : 3),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Badge(
                  backgroundColor: Colors.transparent,
                  // smallSize: 20,
                  offset: Offset(280.w, 10.h),
                  label: Container(
                    color: AppColors.whiteColor,
                    width: 24.sp,
                    height: 20.sp,
                    child: Center(
                      child: Text(
                        "1",
                        style: context.f16500,
                      ),
                    ),
                  ),
                  child: SizedBox(
                    width: double.infinity,
                    height: 90.h,
                    child: CustomImageHandler(
                      fit: BoxFit.fill,
                      AppImages.image,
                    ),
                  ),
                ),
                8.verticalSpace,
                Text(
                  "نحن هنا لمساعدتك ،تواصل   ",
                  style: context.f16600,
                ),
                16.verticalSpace,
                Row(
                  children: [
                    Expanded(
                      child: TableCellItem(
                        title: "الدسكربشن",
                        subTitle: "موجود ",
                      ),
                    ),
                    Expanded(
                      child: TableCellItem(
                        title: "التون فويس",
                        subTitle: "ترفيهي",
                      ),
                    ),
                    Expanded(
                      child: TableCellItem(
                        title: "سوشيال ميديا",
                        subTitle: "فيس بوك",
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          if (!isBlured)
            SizedBox(
              width: 150.w,
              child: CustomButton(
                text: "عرض المهمة",
                onTap: () {
                  Get.dialog(ViewTaskDialog());
                },
              ),
            ),
        ],
      ),
    );
  }
}
