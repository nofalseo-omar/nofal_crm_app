import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nofal_crm_app/core/constants/app_images_path.dart';
import 'package:nofal_crm_app/core/theme/text_themes.dart';
import 'package:nofal_crm_app/features/content_creator/home/view/widgets/table_widget/default_row_widget_with_top_image.dart';
import 'package:nofal_crm_app/features/content_creator/social_media_status/view/screen/social_media_status_screen.dart';
import 'package:nofal_crm_app/routes/app_routes.dart';

class NewAdminScreen extends StatelessWidget {
  const NewAdminScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, "فريق الSEO"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
        child: ListView.builder(
          itemCount: 2,
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              Get.toNamed(Routes.personalProfileScreen);
            },
            child: DefaultRowWidgetWithTopImage(
              icon: AppImages.circle,
              trillingWidget: Text(
                "تم العمل",
                style: context.f14400!.copyWith(
                    color: index % 2 == 0 ? Colors.green : Colors.red),
              ),
              title: "حملة مشاهدات",
              tableItems: const {
                " وقت التقرير": 'نوفل سيو',
                " حالة العمل اليوم": "بوست تعليم ",
                " التقرير النهائي": "فيس بوك",
              },
              showMore: () {},
            ),
          ),
        ),
      ),
    );
  }
}
