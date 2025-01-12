import 'package:nofal_crm_app/components/custom_image_handler.dart';
import 'package:nofal_crm_app/core/constants/app_images_path.dart';
import 'package:nofal_crm_app/core/theme/text_themes.dart';
import 'package:nofal_crm_app/core/utils/app_colors.dart';
import 'package:nofal_crm_app/features/content_creator/social_media_status/view/screen/social_media_status_screen.dart';
import 'package:nofal_crm_app/features/content_creator/social_media_status/view/widgets/social_media__details_table.dart';
import 'package:flutter/material.dart';

class SocialMediaStatusDetailsScreen extends StatelessWidget {
  const SocialMediaStatusDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.whiteColor,
        body: const SocialMediaDetailsTable(),
        appBar: buildAppBar(
          context,
          'فيس بوك',
        )

        //  Row(
        //   children: [
        //     AppDrawer(
        //       selectedIndex: 1,
        //     ),
        //     Expanded(
        //       child:

        //       Column(children: [
        //         Padding(
        //           padding: EdgeInsets.all(8.0),
        //           child: CustomAppBarWidget(),
        //         ),
        //         Expanded(
        //           child: Row(
        //             crossAxisAlignment: CrossAxisAlignment.start,
        //             children: [
        //               Expanded(flex: 5, child: SocialMediaTable()),
        //               // FittedBox(child: DeveloperHomeDrawerWidget())
        //             ],
        //           ),
        //         ),
        //       ]),
        //     ),
        //   ],
        // )
        );
  }
}
