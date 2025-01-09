// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:nofal_crm_app/components/custom_image_handler.dart';
import 'package:nofal_crm_app/core/theme/text_themes.dart';
import 'package:nofal_crm_app/core/utils/app_colors.dart';
import 'package:nofal_crm_app/features/content_creator/home/view/widgets/table_widget/default_row_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SeoDetailsScreen extends StatelessWidget {
  const SeoDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.all(
            Radius.circular(14.r),
          ),
        ),
        padding: const EdgeInsets.all(
          20.0,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListTile(
                leading: ClipOval(
                  child: CustomImageHandler(
                    'https://images.pexels.com/photos/1222271/pexels-photo-1222271.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                    width: 35.sp,
                    height: 35.sp,
                    fit: BoxFit.cover,
                  ),
                ),
                title: Text(
                  "ahmed mohamed",
                  style: context.f16500,
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    infoBuilder(title: 'عدد الملاحظات', subtitle: '٣ ملاحظات'),
                    50.horizontalSpace,
                    infoBuilder(title: 'عدد التقارير', subtitle: '٤ عملاء'),
                  ],
                ),
              ),
              20.verticalSpace,
              DefaultRowWidget(
                tableItems: {
                  "اسم المشروع": null,
                  "تاريخ الإنشاء": null,
                  "الملاحظات": null,
                },
                trillingWidget: SizedBox(width: 350.w),
                backgroundColor: AppColors.lightBlue.withOpacity(0.08),
              ),
              ...List.generate(
                20,
                (index) => DefaultRowWidget(
                  tableItems: {
                    "نوفل سيو": null,
                    "٢٥-٣-٢٠٢٤": null,
                    "عرض": null,
                  },
                  trillingWidget: SizedBox(width: 160.w),
                  showMore: () {},
                  backgroundColor: AppColors.lightBlue.withOpacity(0.02),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  infoBuilder({
    required String title,
    required String subtitle,
  }) {
    return Column(
      children: [
        Text(
          title,
          style: Get.context!.f12500?.copyWith(
            color: const Color(0xff000000),
          ),
        ),
        6.verticalSpace,
        Text(
          subtitle,
          style: Get.context!.f14400?.copyWith(color: AppColors.blackColor),
        )
      ],
    );
  }
}
