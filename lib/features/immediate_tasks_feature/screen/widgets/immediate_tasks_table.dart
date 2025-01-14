// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:get/get.dart';
import 'package:nofal_crm_app/core/constants/app_images_path.dart';
import 'package:nofal_crm_app/core/theme/text_themes.dart';
import 'package:nofal_crm_app/core/utils/app_colors.dart';
import 'package:nofal_crm_app/features/content_creator/home/view/widgets/table_widget/default_row_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nofal_crm_app/features/content_creator/home/view/widgets/table_widget/default_row_widget_with_top_image.dart';
import 'package:nofal_crm_app/features/content_creator/home/view/widgets/table_widget/table_cell_item.dart';
import 'package:nofal_crm_app/features/marketing_manger_feature/view/dailgoes/show_immediate_task_dialog.dart';

class ImmediateTasksTable extends StatelessWidget {
  const ImmediateTasksTable({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...List.generate(
            20,
            (index) => GestureDetector(
              onTap: () {
                Get.to(() => ShowImmediateTaskDailog());
              },
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: AppColors.lightBlue.withOpacity(.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: TableCellItem(
                            title: "مدة المهمة",
                            subTitle: '٤ ساعات',
                          ),
                        ),
                        Expanded(
                          child: TableCellItem(
                            title: "حالة التسليم",
                            subTitle: 'تم التسليم',
                            subTitleStyle: context.f16600!.copyWith(
                                color: index % 2 == 0
                                    ? AppColors.redColor
                                    : AppColors.greenColor),
                          ),
                        ),
                        Expanded(
                          child: TableCellItem(
                            title: "تم التسليم في",
                            subTitle: '٢ ساعة - ٤٠ دقيقة',
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      height: 30,
                      color: Color(0xffEBEBEB),
                    ),
                    Text(
                      "تاريخ الإنشاء: ١ مايو ٢٠٢٣",
                      style: context.f12500!.copyWith(
                        color: AppColors.blackColor.withOpacity(0.5),
                      ),
                    ),
                    10.verticalSpace,
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
