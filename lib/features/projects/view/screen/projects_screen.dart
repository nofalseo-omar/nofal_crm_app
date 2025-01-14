import 'package:get/get.dart';
import 'package:nofal_crm_app/components/custom_image_handler.dart';
import 'package:nofal_crm_app/core/constants/app_images_path.dart';
import 'package:nofal_crm_app/core/theme/text_themes.dart';
import 'package:nofal_crm_app/core/utils/app_colors.dart';
import 'package:nofal_crm_app/features/content_creator/home/view/widgets/app_drawer.dart';
import 'package:nofal_crm_app/features/content_creator/home/view/widgets/table_widget/default_row_widget_with_top_image.dart';
import 'package:nofal_crm_app/features/content_creator/home/view/widgets/table_widget/users_view_circles.dart';
import 'package:nofal_crm_app/features/content_creator/social_media_status/view/screen/social_media_status_screen.dart';
import 'package:nofal_crm_app/features/content_creator/social_media_status/view/widgets/social_media_table.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      drawer: const AppDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: ListView(
          children: List.generate(
            10,
            (x) => SizedBox(
              height: 0.2.sh,
              child: DefaultRowWidgetWithTopImage(
                icon: AppImages.users,
                title: 'العملات الرقمية',
                tableItems: const {
                  "عدد الصور": "٢٧ صورة",
                  "عدد المقالات": "٢١ مقال",
                  "عدد البوستات": "٢٧ بوست"
                },
                date: "تاريخ الإنشاء: ١ مايو ٢٠٢٣",
                trillingWidget: const Row(
                  children: [
                    TableUsersCirclesItem(title: 'تمت المشاركة مع', users: [
                      'https://i.pravatar.cc/300?img=1',
                      'https://i.pravatar.cc/300?img=2',
                      'https://i.pravatar.cc/300?img=3',
                      'https://i.pravatar.cc/300?img=4'
                    ]),
                  ],
                ),
                showMore: () {},
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: const Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [],
      ),
      appBar: buildAppBar(context, 'المشاريع'),
    );
  }
}
