// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:nofal_crm_app/core/theme/text_themes.dart';
import 'package:nofal_crm_app/core/utils/app_colors.dart';
import 'package:nofal_crm_app/features/content_creator/home/view/widgets/table_widget/default_row_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImmediateTasksTable extends StatelessWidget {
  const ImmediateTasksTable({super.key});

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'المهام الفورية',
                style: context.f20500,
              ),
              20.verticalSpace,
              DefaultRowWidget(
                tableItems: {
                  'تاريخ الإنشاء': null,
                  'مدة المهمة': null,
                  'حالة المهمة': null,
                  'تم التسليم في': null,
                },
                backgroundColor: AppColors.primaryColor.withOpacity(0.08),
                trillingWidget: SizedBox(
                  width: 175.w,
                ),
              ),
              ...List.generate(
                20,
                (index) => DefaultRowWidget(
                  backgroundColor: AppColors.primaryColor.withOpacity(0.02),
                  textStyle:
                      context.f16700?.copyWith(color: AppColors.greenColor),
                  tableItems: {
                    '٦-٥-٢٠٢٤': null,
                    '٤ ساعات': null,
                    'تم التسليم': null,
                    '٢ ساعة  - ٤٠ دقيقة': null,
                  },
                  nameOfKeyOfStyle: 'تم التسليم',
                  showMore: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
