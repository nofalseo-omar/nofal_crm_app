import 'package:nofal_crm_app/core/utils/app_colors.dart';
import 'package:nofal_crm_app/features/content_creator/home/view/widgets/table_widget/default_row_widget_with_top_image.dart';
import 'package:nofal_crm_app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SocialMediaDetailsTable extends StatelessWidget {
  const SocialMediaDetailsTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      color: const Color(0xffFfffff),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.max,
          children: [
            ...List.generate(6, (i) {
              return GestureDetector(
                onTap: () {
                  Get.toNamed(Routes.projectStatusScreen);
                },
                child: DefaultRowWidgetWithTopImage(
                  // icon: AppImages.users,
                  title: 'مرحله الوعي',
                  tableItems: const {
                    'عدد الصور': '٢٧ صورة',
                    "عدد الفيديوهات": "٢٧ صورة",
                    "موجه إلي": "فيس بوك - انستجرام"
                  },
                  trillingWidget: Container(
                    decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.circular(9.r),
                    ),
                    width: 32.sp,
                    height: 32.sp,
                    child: const Icon(
                      Icons.more_horiz_outlined,
                    ),
                  ),
                  // date: "تاريخ الإنشاء: ١ مايو ٢٠٢٣",
                ),
              );
            })
          ],
        ),
      ),
    );
  }
}
