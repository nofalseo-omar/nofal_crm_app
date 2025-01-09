import 'package:nofal_crm_app/components/custom_image_handler.dart';
import 'package:nofal_crm_app/core/constants/app_images_path.dart';
import 'package:nofal_crm_app/core/localization/app_strings.dart';
import 'package:nofal_crm_app/core/theme/text_themes.dart';
import 'package:nofal_crm_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ShapeSeting extends StatelessWidget {
  const ShapeSeting({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.w,
      height: 87.w,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Column(children: [
        ItemShowSating(
          image: AppImages.users,
          title: AppStrings.myAccount.tr,
          isactive: false,
        ),
        ItemShowSating(
          image: AppImages.logout,
          title: AppStrings.logout.tr,
          isactive: true,
        ),
      ]),
    );
  }
}

class ItemShowSating extends StatelessWidget {
  const ItemShowSating({
    super.key,
    required this.isactive,
    required this.image,
    required this.title,
  });
  final bool isactive;
  final String image, title;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: isactive
              ? AppColors.dividerNotifactionColor.withOpacity(.05)
              : Colors.white,
          border: Border(
              bottom: BorderSide.none,
              left: BorderSide.none,
              right: BorderSide(
                  color: isactive
                      ? AppColors.dividerNotifactionColor
                      : Colors.transparent,
                  width: 4),
              top: BorderSide.none),
          boxShadow: [
            BoxShadow(
                color: AppColors.blackColor.withOpacity(.2), blurRadius: 3)
          ]),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            CustomImageHandler(image),
            Text(
              title,
              style: context.f16400!.copyWith(
                  color: isactive
                      ? AppColors.dividerNotifactionColor
                      : AppColors.blackColor),
            ),
          ],
        ),
      ),
    );
  }
}
