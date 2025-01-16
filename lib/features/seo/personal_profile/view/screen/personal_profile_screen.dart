import 'package:flutter/material.dart';
import 'package:nofal_crm_app/components/custom_button.dart';
import 'package:nofal_crm_app/core/theme/text_themes.dart';
import 'package:nofal_crm_app/core/utils/app_colors.dart';
import 'package:nofal_crm_app/features/Media/media_current_campaign/view/screen/media_add_campaign.dart';
import 'package:nofal_crm_app/features/content_creator/social_media_status/view/screen/social_media_status_screen.dart';
import 'package:nofal_crm_app/features/seo/personal_profile/view/widget/card_information_member.dart';
import 'package:nofal_crm_app/features/seo/personal_profile/view/widget/iteam_information_project.dart';

class PersonalProfileScreen extends StatelessWidget {
  const PersonalProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, "الملف الشخصي"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CardInformation(),
              Divider(
                height: 40,
                color: AppColors.dividerColor,
              ),
              ...List.generate(
                  5,
                  (index) => Padding(
                        padding: const EdgeInsets.only(bottom: 16.0),
                        child: IteamInformationProject(),
                      ))
            ],
          ),
        ),
      ),
    );
  }
}


