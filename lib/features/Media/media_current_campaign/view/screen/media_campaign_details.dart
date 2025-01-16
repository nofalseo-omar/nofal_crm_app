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

class MediaCampaignDetails extends StatelessWidget {
  const MediaCampaignDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, 'تفاصيل الحملة'),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        children: [
          DefaultRowWidgetWithTopImage(
            backgroundColor: Color(0xffFDF2F2),
            tableItems: const {
              "اسم الحملة": "حملة المشاهدات ",
              "اسم المشروع": "نوفل سيو",
              "اسم البوست": "تعليمي",
              "سوشيال ميديا": "فيسبوك",
              "تاريخ الإنشاء": "٢٠٢٤-٤٠٢٢",
            },
          ),
          Divider(
            color: Color(0xffEBEBEB),
          ),
          ...List.generate(
            10,
            (index) => DefaultRowWidgetWithTopImage(
              trillingWidget: Container(
                // color: AppColors.black2Color,
                width: Get.width * 0.7,
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TableCellItem(
                      title: "التاريخ اليومي",
                      subTitle: "٢٢-٣-٢٠٢٤",
                    ),
                    TableCellItem(
                      title: "عدد عدد الإنفاق",
                      subTitle: "230 \$",
                    ),
                    TableCellItem(
                      title: "التكلفة لكل نقرة",
                      subTitle: "20 \$",
                    ),
                  ],
                ),
              ),
              showMore: () {
                Get.bottomSheet(
                  MediaCampaignDetailsBottomSheet(),
                  // isDismissible: true,
                );
                // print("d,mhkjshd");
              },
              // backgroundColor: Color(0xffFDF2F2),
              tableItems: const {
                "نسبة النقرات ": "%20 ",
                "عدد المشاهدات": "٣٠٠ مشاهدة",
                "العملاء الجدد": "١٣ عميل",
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed(Routes.mediaCampaignDailyTask);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
