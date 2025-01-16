// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:nofal_crm_app/components/custom_button.dart';
import 'package:nofal_crm_app/core/theme/text_themes.dart';
import 'package:nofal_crm_app/features/content_creator/home/view/widgets/table_widget/default_row_widget_with_top_image.dart';
import 'package:nofal_crm_app/features/content_creator/social_media_status/view/screen/social_media_status_screen.dart';
import 'package:nofal_crm_app/features/sales/customer_comapny/view/widget/text_field_builder.dart';
import 'package:nofal_crm_app/routes/app_routes.dart';

class MediaAddCampaign extends StatelessWidget {
  const MediaAddCampaign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, 'إنشاء حملة'),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        children: [
          TextFieldBuilder(
            title: "اسم الحملة",
          ),
          TextFieldBuilder(
            title: "اسم المشروع",
          ),
          TextFieldBuilder(
            title: "اسم البوست",
          ),
          Text(
            "السوشيال ميدياا",
            style: context.f16500,
          ),
          12.verticalSpace,
          Container(
            decoration: BoxDecoration(
                color: Color(0xffF9FAFB),
                border: Border.all(color: Colors.grey.withOpacity(0.2)),
                borderRadius: BorderRadius.circular(14.r)),
            child: Row(
              children: [
                Expanded(
                  child: DropdownButton<String>(
                    items: <String>[
                      "فيسيوك",
                      "فيسيوك",
                      "فيسيوك",
                    ].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      );
                    }).toList(),
                    onChanged: (_) {},
                    icon: SizedBox(),
                    underline: SizedBox(),
                  ),
                ),
                Icon(
                  Icons.arrow_drop_down,
                  color: Colors.blue,
                ),
                10.horizontalSpace,
              ],
            ),
          ),
          TextFieldBuilder(
            title: "الهدف",
            maxLines: 5,
          ),
          TextFieldBuilder(
            title: "تاريخ الإنشاء",
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20.0),
        child: CustomButton(
          text: "إنشاء",
          onTap: () {},
        ),
      ),
    );
  }
}
