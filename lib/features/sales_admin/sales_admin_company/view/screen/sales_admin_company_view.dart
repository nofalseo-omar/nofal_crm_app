// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nofal_crm_app/components/custom_border_container.dart';
import 'package:nofal_crm_app/core/constants/app_images_path.dart';
import 'package:nofal_crm_app/features/content_creator/home/view/widgets/table_widget/default_row_widget_with_top_image.dart';
import 'package:nofal_crm_app/features/content_creator/social_media_status/view/screen/social_media_status_screen.dart';
import 'package:nofal_crm_app/features/sales/company_task/view/widget/iteam_task_company.dart';

class SalesAdminCompanyView extends StatelessWidget {
  const SalesAdminCompanyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, 'قائمة مهام الشركة'),
      body: CustomBorderContainer(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(
                5,
                (index) => DefaultRowWidgetWithTopImage(
                  icon: AppImages.users,
                  title: "محمد عجمي",
                  tableItems: const {
                    "اسم العميل": "محمد حسن ",
                    "اسم الشركة": "نوفل سيو",
                    "مدة التاسك": "٣ ساعات",
                    "درجة الاهتمام": "%100*",
                  },
                  showMore: () {},
                  bottomWidget: Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text("تاريخ الإنشاء: ١ مايو ٢٠٢٣"),
                  ),
                ),
              )),
        ),
      ),
    );
  }
}
