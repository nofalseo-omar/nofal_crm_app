import 'package:nofal_crm_app/main.dart';
import 'package:nofal_crm_app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:nofal_crm_app/components/custom_border_container.dart';
import 'package:nofal_crm_app/components/custom_image_handler.dart';
import 'package:nofal_crm_app/core/constants/app_images_path.dart';
import 'package:nofal_crm_app/core/utils/app_colors.dart';
import 'package:get/get.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key, required this.selectedIndex});
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // width: Get.width * 0.5,
      child: CustomBorderContainer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            (true)
                ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      children: [
                        const CustomImageHandler(
                          AppImages.darkLogo,
                          fit: BoxFit.contain,
                        ),
                        const Spacer(),
                        (Get.width > 1900)
                            ? const CustomImageHandler(AppImages.menu)
                            : const SizedBox(
                                width: 1,
                              ),
                      ],
                    ),
                  )
                : const Padding(
                    padding: EdgeInsets.only(bottom: 20, top: 20),
                    child: CustomImageHandler(
                      AppImages.loIcon,
                      height: 30,
                      width: 30,
                    ),
                  ),
            const SizedBox(
              height: 30,
            ),
            _buildListItem(
              'لوحة التحكم',
              AppImages.grid,
              color: selectedIndex == 0 ? AppColors.darkPrimaryColor : null,
              bckGround: selectedIndex == 0
                  ? AppColors.darkPrimaryColor.withOpacity(0.1)
                  : null,
              txtColor: selectedIndex == 0 ? AppColors.darkPrimaryColor : null,
              onTap: () {
                Get.offAllNamed(Routes.seoScreen);
              },
            ),
            _buildListItem(
              'مهامي',
              AppImages.users,
              color: selectedIndex == 1 ? AppColors.darkPrimaryColor : null,
              bckGround: selectedIndex == 1
                  ? AppColors.darkPrimaryColor.withOpacity(0.1)
                  : null,
              txtColor: selectedIndex == 1 ? AppColors.darkPrimaryColor : null,
              onTap: () {
                Get.offAllNamed(Routes.homeContent);
              },
            ),
            _buildListItem(
              'الرسائل',
              AppImages.chat,
              color: selectedIndex == 2 ? AppColors.darkPrimaryColor : null,
              bckGround: selectedIndex == 2
                  ? AppColors.darkPrimaryColor.withOpacity(0.1)
                  : null,
              txtColor: selectedIndex == 2 ? AppColors.darkPrimaryColor : null,
              onTap: () {
                Get.offAllNamed(Routes.messagesScreen);
                // print("lkd");
              },
            ),
            role == 'marketing'
                ? _buildListItem(
                    'حملات الدعاية',
                    AppImages.projector,
                    color:
                        selectedIndex == 3 ? AppColors.darkPrimaryColor : null,
                    bckGround: selectedIndex == 3
                        ? AppColors.darkPrimaryColor.withOpacity(0.1)
                        : null,
                    txtColor:
                        selectedIndex == 3 ? AppColors.darkPrimaryColor : null,
                    onTap: () {
                      Get.offAllNamed(Routes.marketingMangerScreen);
                    },
                  )
                : const SizedBox(),
            role == 'marketing'
                ? _buildListItem('فريق الSEO', AppImages.seo,
                    color:
                        selectedIndex == 4 ? AppColors.darkPrimaryColor : null,
                    bckGround: selectedIndex == 4
                        ? AppColors.darkPrimaryColor.withOpacity(0.1)
                        : null,
                    txtColor: selectedIndex == 4
                        ? AppColors.darkPrimaryColor
                        : null, onTap: () {
                    Get.offAllNamed(Routes.managerSeoScreen);
                  })
                : const SizedBox(),
            _buildListItem('مهام فورية', AppImages.sent,
                color: selectedIndex == 5 ? AppColors.darkPrimaryColor : null,
                bckGround: selectedIndex == 5
                    ? AppColors.darkPrimaryColor.withOpacity(0.1)
                    : null,
                txtColor:
                    selectedIndex == 5 ? AppColors.darkPrimaryColor : null),
            _buildListItem(
              'قائمة العملاء',
              AppImages.user,
              color: selectedIndex == 6 ? AppColors.darkPrimaryColor : null,
              bckGround: selectedIndex == 6
                  ? AppColors.darkPrimaryColor.withOpacity(0.1)
                  : null,
              txtColor: selectedIndex == 6 ? AppColors.darkPrimaryColor : null,
              onTap: () {
                Get.offAllNamed(Routes.customerCompanyDetails);
              },
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0),
              child: Divider(),
            ),
            _buildListItem('الإعدادات', AppImages.setting),
            _buildListItem(
                'تسجيل خروج',
                txtColor: Colors.red,
                AppImages.logout,
                isRed: true),
          ],
        ),
      ),
    );
  }

  Widget _buildListItem(
    String title,
    String icon, {
    bool isRed = false,
    Color? color,
    Color? txtColor,
    Color? bckGround,
    VoidCallback? onTap,
  }) {
    return Container(
      decoration: BoxDecoration(
          color: bckGround, borderRadius: BorderRadius.circular(10)),
      child: Get.width > 1600
          ? ListTile(
              hoverColor: Colors.transparent,
              leading: Padding(
                padding: const EdgeInsetsDirectional.only(start: 4.0),
                child: CustomImageHandler(
                  icon,
                  width: Get.width > 1000 ? 25 : 60,
                  height: Get.width > 1000 ? 25 : 60,
                  color: color ??
                      (isRed
                          ? Colors.red
                          : const Color(0xff545454).withOpacity(0.9)),
                  fit: BoxFit.contain,
                ),
              ),
              title: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  title,
                  style: TextStyle(
                    color: txtColor ?? const Color(0xff545454).withOpacity(0.9),
                  ),
                ),
              ),
              onTap: onTap,
            )
          : IconButton(
              onPressed: onTap,
              icon: CustomImageHandler(
                icon,
                width: 30,
                height: 30,
                color: color ??
                    (isRed
                        ? Colors.red
                        : const Color(0xff545454).withOpacity(0.9)),
                fit: BoxFit.contain,
              ),
            ),
    );
  }
}
