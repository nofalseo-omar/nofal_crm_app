// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:nofal_crm_app/components/custom_button.dart';
import 'package:nofal_crm_app/features/content_creator/home/view/widgets/table_widget/default_row_widget_with_top_image.dart';
import 'package:nofal_crm_app/features/content_creator/social_media_status/view/screen/social_media_status_screen.dart';
import 'package:nofal_crm_app/routes/app_routes.dart';

class MediaCurrentCampaign extends StatelessWidget {
  const MediaCurrentCampaign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, 'الحملات'),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        children: List.generate(
          10,
          (index) => GestureDetector(
            onTap: () {
              Get.toNamed(Routes.mediaCampaignDetails);
            },
            child: DefaultRowWidgetWithTopImage(
              // icon: AppImages.users,
              title: 'محمد علي حسام',
              tableItems: const {
                "البلد": "مصر ",
                "اسم الشركة": "نوفل سيو",
                "سوشيال ميديا": "فيس بوك",
              },
              showMore: () {},
              bottomWidget: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 15.sp,
                ),
                child: Text("تاريخ الإنشاء: ١ مايو ٢٠٢٣"),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed(Routes.mediaAddCampaign);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
