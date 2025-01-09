import 'package:nofal_crm_app/core/constants/app_images_path.dart';
import 'package:nofal_crm_app/core/theme/text_themes.dart';
import 'package:nofal_crm_app/features/content_creator/home/view/widgets/table_widget/default_row_widget.dart';
import 'package:nofal_crm_app/features/content_creator/home/view/widgets/table_widget/default_row_widget_with_top_image.dart';
import 'package:nofal_crm_app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SocialMediaTable extends StatelessWidget {
  const SocialMediaTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(0),
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
                child: const DefaultRowWidgetWithTopImage(
                  icon: AppImages.users,
                  title: 'فيس بوك',
                  tableItems: {
                    'عدد البوستات': '١٣ بوست',
                    "عدد الفيديوهات": "٢٧ صورة",
                    "عدد المقالات": "٢١ مقال"
                  },
                ),
              );
            })
          ],
        ),
      ),
    );
  }
}
