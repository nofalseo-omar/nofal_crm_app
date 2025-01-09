import 'package:nofal_crm_app/components/custom_image_handler.dart';
import 'package:nofal_crm_app/core/theme/text_themes.dart';
import 'package:nofal_crm_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class TableRowLeading extends StatelessWidget {
  const TableRowLeading({
    super.key,
    this.icon,
    this.flex = 3,
    required this.title,
  });

  final String? icon;
  final String title;
  final int flex;

/*************  ✨ Codeium Command ⭐  *************/
  /// Returns a SizedBox with a width of 20% of the screen width that contains a
  /// row of a CircleAvatar with the given icon and a Text with the given title.
  /// The CircleAvatar is only included if the icon is not null.
  ///
  /// The CircleAvatar has a background color of white and the Text has a font
  /// size of 16.7 and a color of black.
  /// ****  da441190-3024-4131-9bd5-d43b1f0b89b8  ******  @override

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      // width: Get.width * 0.2,
      child: (Get.width > 800)
          ? Row(
              children: [
                if (icon != null)
                  ClipOval(
                    // backgroundColor: AppColors.whiteColor,
                    child: CustomImageHandler(
                      icon,
                      width: 35,
                      fit: BoxFit.cover,
                      height: 35,
                    ),
                  ),
                10.horizontalSpace,
                Text(
                  title,
                  overflow: TextOverflow.ellipsis,
                  style: context.f16700?.copyWith(
                    color: AppColors.blackColor,
                  ),
                )
              ],
            )
          : Column(
              children: [
                if (icon != null)
                  ClipOval(
                    // backgroundColor: AppColors.whiteColor,
                    child: CustomImageHandler(
                      icon,
                      width: 35,
                      fit: BoxFit.cover,
                      height: 35,
                    ),
                  ),
                10.horizontalSpace,
                Text(
                  title,
                  overflow: TextOverflow.ellipsis,
                  style: context.f16700?.copyWith(
                    color: AppColors.blackColor,
                  ),
                )
              ],
            ),
    );
  }
}
