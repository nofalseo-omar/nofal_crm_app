import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:nofal_crm_app/components/custom_image_handler.dart';
import 'package:nofal_crm_app/core/constants/app_images_path.dart';
import 'package:nofal_crm_app/core/theme/text_themes.dart';
import 'package:nofal_crm_app/core/utils/app_colors.dart';
import 'package:nofal_crm_app/features/content_creator/home/view/widgets/app_drawer.dart';
import 'package:nofal_crm_app/features/content_creator/social_media_status/view/widgets/social_media_table.dart';
import 'package:flutter/material.dart';

class SocialMediaStatusScreen extends StatelessWidget {
  const SocialMediaStatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      drawer: AppDrawer(),

      body: const SocialMediaTable(),
      floatingActionButton: const Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          // FloatingActionButton(
          //   backgroundColor: AppColors.primaryColor,
          //   child: const Icon(
          //     Icons.add,
          //     color: AppColors.whiteColor,
          //     size: 30,
          //   ),
          //   onPressed: () {
          //     Get.toNamed(Routes.addContentTask);
          //   },
          // ),
          // const SizedBox(
          //   width: 10,
          // ),
          // FloatingActionButton(
          //   backgroundColor: AppColors.primaryColor,
          //   child: const Icon(
          //     Icons.add,
          //     color: AppColors.whiteColor,
          //     size: 30,
          //   ),
          //   onPressed: () {
          //     Get.toNamed(Routes.addDesingerTask);
          //   },
          // ),
        ],
      ),
      appBar: buildAppBar(context, 'ايفولا'),
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

AppBar buildAppBar(BuildContext context, title,
    {bool hasBackButton = true, bool haveIcon = false, String? image}) {
  return AppBar(
    backgroundColor: AppColors.whiteColor,
    centerTitle: true,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: context.f20600,
        ),
      ],
    ),
    automaticallyImplyLeading: false,
    leading: IconButton(
      icon: const CustomImageHandler(
        AppImages.menu2,
        color: AppColors.blackColor,
      ),
      onPressed: () {},
    ),
    actions: hasBackButton
        ? [
            IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const RotatedBox(
                quarterTurns: 2,
                child: CustomImageHandler(AppImages.arrowBack),
              ),
            )
          ]
        : [
            CustomImageHandler(AppImages.search),
            10.horizontalSpace,
          ],
  );
}
