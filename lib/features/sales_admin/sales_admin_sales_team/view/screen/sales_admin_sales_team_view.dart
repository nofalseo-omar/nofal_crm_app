import 'package:flutter/material.dart';
import 'package:nofal_crm_app/components/custom_border_container.dart';
import 'package:nofal_crm_app/core/constants/app_images_path.dart';
import 'package:nofal_crm_app/features/content_creator/home/view/widgets/table_widget/default_row_widget_with_top_image.dart';
import 'package:nofal_crm_app/features/content_creator/social_media_status/view/screen/social_media_status_screen.dart';

class SalesAdminSalesTeamView extends StatelessWidget {
  const SalesAdminSalesTeamView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, "فريق الSales"),
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
                    "مهام الشركة": "٣ مهام ",
                    "عدد العملاء": "٤ عملاء",
                    "تسليمه": "5",
                    "ساعات العمل": "٤ ساعات",
                  },
                  showMore: () {},
                ),
              )),
        ),
      ),
    );
  }
}
