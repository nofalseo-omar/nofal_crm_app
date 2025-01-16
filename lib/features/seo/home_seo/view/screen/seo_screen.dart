import 'package:get/get.dart';
import 'package:nofal_crm_app/components/custom_app_widget.dart';
import 'package:nofal_crm_app/components/custom_image_handler.dart';
import 'package:nofal_crm_app/components/developer_drawer_widget.dart';
import 'package:nofal_crm_app/core/constants/app_images_path.dart';
import 'package:nofal_crm_app/core/theme/text_themes.dart';
import 'package:nofal_crm_app/core/utils/app_colors.dart';
import 'package:nofal_crm_app/features/content_creator/home/view/widgets/app_drawer.dart';
import 'package:nofal_crm_app/features/content_creator/home/view/widgets/table_widget/default_row_widget.dart';
import 'package:nofal_crm_app/features/content_creator/home/view/widgets/table_widget/default_row_widget_with_top_image.dart';
import 'package:nofal_crm_app/features/content_creator/home/widgets/status_widget/status_widget.dart';
import 'package:nofal_crm_app/features/content_creator/social_media_status/view/screen/social_media_status_screen.dart';
import 'package:nofal_crm_app/features/seo/home_seo/view/widget/control_panel_table.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nofal_crm_app/routes/app_routes.dart';

class SeoScreen extends StatelessWidget {
  const SeoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed(Routes.creatReportScreeen);
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "مرحبا بعودتك محمد! 👋",
          style: context.f20500,
        ),
        leading: IconButton(
            onPressed: () {}, icon: CustomImageHandler(AppImages.menu2)),
        actions: [
          CustomImageHandler(AppImages.search),
          10.horizontalSpace,
        ],
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 32),
            Text(
              'الإحصائيات',
              style: context.f20500,
            ),
            16.verticalSpace,
            StatusWidget(),
            20.verticalSpace,
            Row(
              children: [
                Text(
                  'الحملات',
                  style: context.f20500,
                ),
                const Spacer(),
                Text(
                  'عرض المزيد',
                  style: context.f15600!.copyWith(
                    color: AppColors.darkPrimaryColor,
                  ),
                )
              ],
            ),
            12.verticalSpace,
            SizedBox(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    5,
                    (index) => SizedBox(
                      width: Get.width * 0.8,
                      child: DefaultRowWidgetWithTopImage(
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
              ),
            )
          ],
        ),
      ),
    );
  }
}
