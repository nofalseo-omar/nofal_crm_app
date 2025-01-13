import 'package:nofal_crm_app/components/custom_image_handler.dart';
import 'package:nofal_crm_app/core/constants/app_images_path.dart';
import 'package:nofal_crm_app/core/theme/text_themes.dart';
import 'package:nofal_crm_app/core/utils/app_colors.dart';
import 'package:nofal_crm_app/features/tasks/view/widget/titel_value_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ItemTaskCompany extends StatelessWidget {
  const ItemTaskCompany({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      decoration: BoxDecoration(
        color: const Color(0xffE8F8FE),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "محمد احمد علي",
                  style: context.f16500,
                ),
                const Spacer(),
                const CustomImageHandler(AppImages.threeDots)
              ],
            ),
            8.verticalSpace,
            Text(
              "يجب أن تتوفر ميزة الطلب للمستخدم عند إجراء عمليات الشراء ......",
              style: context.f12500!.copyWith(color: const Color(0xff545472)),
            ),
            8.verticalSpace,
            const RowTitleAndValue(title: "البلد :", value: "مصر"),
            4.verticalSpace,
            const RowTitleAndValue(title: "اسم الشركة :", value: "نوفل سيو"),
            4.verticalSpace,
            const RowTitleAndValue(title: "سوشيال ميديا:", value: "فيس بوك"),
            16.verticalSpace,
            const FittedBox(
              child: Row(
                children: [
                  ItemTime(
                    title: 'ساعة',
                    subtitle: '4',
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  ItemTime(
                    title: 'دقيقة',
                    subtitle: '34',
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  ItemTime(
                    title: 'ثانية',
                    subtitle: 'ثانية',
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ItemTime extends StatelessWidget {
  const ItemTime({
    super.key,
    required this.title,
    required this.subtitle,
  });

  final String title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 7),
        child: Column(
          children: [
            Text("ساعة",
                style: context.f12500!.copyWith(
                  color: AppColors.bgGrey,
                )),
            2.verticalSpace,
            Text("04",
                style: context.f16500!.copyWith(
                  color: AppColors.blackColor,
                )),
          ],
        ),
      ),
    );
  }
}
