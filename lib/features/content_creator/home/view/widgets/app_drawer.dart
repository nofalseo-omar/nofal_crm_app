import 'package:nofal_crm_app/core/theme/text_themes.dart';
import 'package:nofal_crm_app/features/content_creator/home/widgets/status_widget/connection_duration_widget.dart';
import 'package:nofal_crm_app/main.dart';
import 'package:nofal_crm_app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:nofal_crm_app/components/custom_border_container.dart';
import 'package:nofal_crm_app/components/custom_image_handler.dart';
import 'package:nofal_crm_app/core/constants/app_images_path.dart';
import 'package:nofal_crm_app/core/utils/app_colors.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width * 0.85,
      height: Get.height * 0.99,
      child: CustomBorderContainer(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  SizedBox(
                    height: Get.height * 0.022,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Row(
                      children: [
                        CustomImageHandler(
                          AppImages.darkLogo,
                          fit: BoxFit.contain,
                        ),
                        Spacer(),
                        CustomImageHandler(AppImages.menu2)
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const ConnectionDurationWidget(title: 'متصل لفترة'),
                  _buildListItem(
                    'الإشعارات',
                    AppImages.notification,
                    bckGround: AppColors.darkPrimaryColor.withOpacity(0.1),
                    txtColor: AppColors.darkPrimaryColor,
                    onTap: () {
                      Get.toNamed(Routes.notificationsScreen);
                    },
                  ),
                  _buildListItem(
                    'إضافة',
                    AppImages.addRectangle,
                    bckGround: AppColors.darkPrimaryColor.withOpacity(0.1),
                    txtColor: AppColors.darkPrimaryColor,
                    onTap: () {
                      Get.toNamed(Routes.notificationsScreen);
                    },
                  ),
                  _buildListItem(
                    'لوحة التحكم',
                    AppImages.grid,
                    bckGround: AppColors.darkPrimaryColor.withOpacity(0.1),
                    txtColor: AppColors.darkPrimaryColor,
                    onTap: () {
                      Get.offAllNamed(Routes.seoScreen);
                    },
                  ),
                  _buildListItem(
                    'مهامي',
                    AppImages.users,
                    bckGround: AppColors.darkPrimaryColor.withOpacity(0.1),
                    txtColor: AppColors.darkPrimaryColor,
                    onTap: () {
                      Get.offAllNamed(Routes.homeContent);
                    },
                  ),
                  _buildListItem(
                    'قائمة العملاء',
                    AppImages.users,
                    bckGround: AppColors.darkPrimaryColor.withOpacity(0.1),
                    txtColor: AppColors.darkPrimaryColor,
                    onTap: () {
                      Get.offAllNamed(Routes.homeContent);
                    },
                  ),
                  _buildListItem(
                    'فريق الSales',
                    AppImages.users,
                    bckGround: AppColors.darkPrimaryColor.withOpacity(0.1),
                    txtColor: AppColors.darkPrimaryColor,
                    onTap: () {
                      Get.offAllNamed(Routes.salesAdminSalesTeamView);
                    },
                  ),
                  _buildListItem('مهام فورية', AppImages.sent, count: 2,
                      onTap: () {
                    Get.toNamed(Routes.immediateTasksScreen);
                  },
                      bckGround: AppColors.darkPrimaryColor.withOpacity(0.1),
                      txtColor: AppColors.darkPrimaryColor),
                  _buildListItem(
                    'الرسائل',
                    AppImages.chat,
                    txtColor: AppColors.darkPrimaryColor,
                    onTap: () {
                      Get.offAllNamed(Routes.messagesList);
                    },
                  ),
                  _buildListItem('الإعدادات', AppImages.setting),
                ],
              ),
            ),
            // Bottom section with settings and logout
            Container(
              padding: const EdgeInsets.only(bottom: 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // const Padding(
                  //   padding: EdgeInsets.symmetric(horizontal: 18.0),
                  //   child: Divider(),
                  // ),
                  _buildListItem(
                    'تسجيل الخروج',
                    AppImages.logout,
                    txtColor: Colors.red,
                    isRed: true,
                    onTap: () {
                      // Add your logout logic here
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildListItem(
  String title,
  String icon, {
  bool isRed = false,
  Color? txtColor,
  int count = 0,
  Color? bckGround,
  VoidCallback? onTap,
}) {
  return GestureDetector(
    onTap: () {
      Get.back();
      onTap!();
    },
    child: Container(
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: Row(children: [
        Padding(
          padding: const EdgeInsetsDirectional.only(start: 4.0),
          child: SizedBox(
            height: 0.08.sw,
            width: 0.08.sw,
            child: CustomImageHandler(
              icon,
              height: 0.08.sw,
              width: 0.08.sw,
              color: (isRed ? Colors.red : AppColors.darkPrimaryColor),
              fit: BoxFit.contain,
            ),
          ),
        ),
        10.horizontalSpace,
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            title,
            style: TextStyle(
              fontSize: 16,
              color: isRed ? Colors.red : Colors.black,
            ),
          ),
        ),
        10.horizontalSpace,
        if (count != 0)
          CircleAvatar(
            backgroundColor: AppColors.primaryColor,
            radius: 12,
            child: Text(
              count.toString(),
              style: TextStyle(
                color: Colors.white,
                fontSize: 12.sp,
              ),
            ),
          )
      ]),
    ),
  );
}
