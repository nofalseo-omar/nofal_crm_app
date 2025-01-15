// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:nofal_crm_app/components/custom_button.dart';
import 'package:nofal_crm_app/core/theme/text_themes.dart';
import 'package:nofal_crm_app/core/utils/app_colors.dart';
import 'package:nofal_crm_app/features/Media/media_current_campaign/view/widgets/media_campaign_details_bottom_sheet.dart';
import 'package:nofal_crm_app/features/content_creator/home/view/widgets/table_widget/default_row_widget_with_top_image.dart';
import 'package:nofal_crm_app/features/content_creator/home/view/widgets/table_widget/table_cell_item.dart';
import 'package:nofal_crm_app/features/content_creator/social_media_status/view/screen/social_media_status_screen.dart';
import 'package:nofal_crm_app/features/sales/customer_comapny/view/widget/text_field_builder.dart';
import 'package:nofal_crm_app/routes/app_routes.dart';

class MediaCampaignDailyTask extends StatelessWidget {
  const MediaCampaignDailyTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, 'إضافة الاداء اليومي'),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        children: [
          TextFieldBuilder(
            title: "عدد الإنفاق اليومي",
          ),
          TextFieldBuilder(
            title: "التكلفة لكل نقرة",
          ),
          TextFieldBuilder(
            title: "نسبة النقرات الي عدد المشاهدات (CTR)",
          ),
          TextFieldBuilder(
            title: "عدد المشاهدات",
          ),
          TextFieldBuilder(
            title: "العملاء الجدد",
          ),
          TextFieldBuilder(
            title: "تاريخ الإنشاء",
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20.0),
        child: CustomButton(
          text: "إضافة",
          onTap: () {},
        ),
      ),
    );
  }
}
