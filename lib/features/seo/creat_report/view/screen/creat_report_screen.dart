import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nofal_crm_app/components/custom_button.dart';
import 'package:nofal_crm_app/components/dailog/custom_dialog_with_two_buttom.dart';
import 'package:nofal_crm_app/core/theme/text_themes.dart';
import 'package:nofal_crm_app/core/utils/app_colors.dart';
import 'package:nofal_crm_app/features/Media/media_current_campaign/view/screen/media_add_campaign.dart';
import 'package:nofal_crm_app/features/content_creator/social_media_status/view/screen/social_media_status_screen.dart';
import 'package:nofal_crm_app/features/sales/customer_comapny/view/widget/text_field_builder.dart';
import 'package:nofal_crm_app/features/seo/creat_report/view/widget/creat_notes_dialoge.dart';

class CreatReportScreen extends StatelessWidget {
  const CreatReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16),
        child: CustomButton(
            text: "إنشاء",
            onTap: () {
              Get.dialog(const CreatNotesDialoge());
            }),
      ),
      appBar: buildAppBar(
        context,
        "إنشاء التقرير اليومي",
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 40),
        child: ListView(
          children: [
            TextFieldBuilder(
              title: "  اسم الحملة",
            ),
            const TextFieldBuilder(
              title: "   اسم المشروع",
            ),
            const TextFieldBuilder(
              title: "   التقرير",
              maxLines: 5,
            ),
          ],
        ),
      ),
    );
  }
}
