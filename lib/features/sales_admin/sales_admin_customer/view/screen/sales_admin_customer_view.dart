import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nofal_crm_app/components/custom_border_container.dart';
import 'package:nofal_crm_app/components/custom_button.dart';
import 'package:nofal_crm_app/core/constants/app_images_path.dart';
import 'package:nofal_crm_app/features/content_creator/home/view/widgets/table_widget/default_row_widget_with_top_image.dart';
import 'package:nofal_crm_app/features/content_creator/social_media_status/view/screen/social_media_status_screen.dart';
import 'package:nofal_crm_app/routes/app_routes.dart';

class SalesAdminCustomerView extends StatelessWidget {
  const SalesAdminCustomerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, "قائمة العملاء"),
      body: CustomBorderContainer(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              10,
              (index) => DefaultRowWidgetWithTopImage(
                icon: AppImages.users,
                title: "محمد عجمي",
                tableItems: const {
                  "اسم العميل": "محمد حسن ",
                  "اسم الشركة": "نوفل سيو",
                  "التسعيرة": "2000\$",
                  "درجة الاهتمام": "%100*",
                },
                showMore: () {},
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed(Routes.salesAdminAddCustomerView);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
