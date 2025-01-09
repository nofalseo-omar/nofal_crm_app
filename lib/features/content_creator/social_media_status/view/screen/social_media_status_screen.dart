import 'package:nofal_crm_app/components/custom_app_widget.dart';
import 'package:nofal_crm_app/components/custom_image_handler.dart';
import 'package:nofal_crm_app/components/developer_drawer_widget.dart';
import 'package:nofal_crm_app/core/constants/app_images_path.dart';
import 'package:nofal_crm_app/core/theme/text_themes.dart';
import 'package:nofal_crm_app/core/utils/app_colors.dart';
import 'package:nofal_crm_app/features/content_creator/home/view/widgets/app_drawer.dart';
import 'package:nofal_crm_app/features/content_creator/social_media_status/view/widgets/social_media_table.dart';
import 'package:flutter/material.dart';
import 'package:nofal_crm_app/features/sales/widget/follow_up_date_dialog.dart';

class SocialMediaStatusScreen extends StatelessWidget {
  const SocialMediaStatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
       body: SocialMediaTable(),
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        title: Text(
          'ايفولا',
          style: context.f20600,
        ),
        automaticallyImplyLeading: true,
        actions: [
          IconButton(
            icon: const CustomImageHandler(
              AppImages.menu2,
              color: AppColors.blackColor,
            ),
            onPressed: () {},
          )
        ],
      ),
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
