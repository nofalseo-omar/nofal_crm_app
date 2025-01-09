// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:nofal_crm_app/core/theme/text_themes.dart';
import 'package:nofal_crm_app/core/utils/app_colors.dart';
import 'package:nofal_crm_app/features/content_creator/home/view/widgets/table_widget/default_row_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:nofal_crm_app/features/content_creator/home/view/widgets/table_widget/table_cell_item.dart';
import 'package:nofal_crm_app/features/content_creator/project_status/view/widget/project_status_widget.dart';

class ProjectStatusTable extends StatelessWidget {
  const ProjectStatusTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            decoration: BoxDecoration(
              color: AppColors.lightBlue.withOpacity(.1),
              borderRadius: BorderRadius.circular(10.r),
            ),
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                Expanded(
                  child: TableCellItem(
                    title: "عدد الصور",
                    subTitle: "٢٧ صورة",
                  ),
                ),
                Expanded(
                  child: TableCellItem(
                    title: "عدد المقالات",
                    subTitle: "٢١ مقال",
                  ),
                ),
                Expanded(
                  child: TableCellItem(
                    title: "عدد البوستات",
                    subTitle: "١٣ بوست",
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: AppColors.lightGray,
            thickness: 1,
            height: 40,
          ),
          Expanded(
              child: ListView.separated(
            separatorBuilder: (context, index) => 20.verticalSpace,
            itemBuilder: (context, index) => ProjectStatusWidget(
              isBlured: index % 2 == 0,
            ),
            itemCount: 5,
          ))
        ],
      ),
    );
  }
}
