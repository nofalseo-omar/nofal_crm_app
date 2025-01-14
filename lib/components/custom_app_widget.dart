import 'package:nofal_crm_app/components/custom_border_container.dart';
import 'package:nofal_crm_app/components/custom_image_handler.dart';
import 'package:nofal_crm_app/components/textFields/custom_text_field.dart';
import 'package:nofal_crm_app/core/constants/app_images_path.dart';
import 'package:nofal_crm_app/core/theme/text_themes.dart';
import 'package:nofal_crm_app/features/content_creator/home/view/widgets/shape_show_seting_widget.dart';
import 'package:nofal_crm_app/features/notifaction/view/widget/shape_show_notifaction_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:super_tooltip/super_tooltip.dart';
import '../core/utils/app_colors.dart';
import '../features/marketing_manger_feature/view/dailgoes/add_immediate_task_dialog.dart';
import 'dailog/View_immediate_task.dart';

class CustomAppBarWidget extends StatelessWidget {
  const CustomAppBarWidget({super.key, this.onTapAdd});
  final Function? onTapAdd;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final bool isSmallScreen =
            constraints.maxWidth < 800; // Threshold for small screens

        return CustomBorderContainer(
          width: double.infinity,
          child: Row(
            children: [
              // Search Field - Always Visible
              Expanded(
                child: TextFieldComponent(
                  hintText: 'ابحث',
                  borderColor: const Color(0xffB0B0B0),
                  fillColor: AppColors.whiteColor,
                  prefixIcon:
                      const Icon(Icons.search, color: Color(0xffB0B0B0)),
                ),
              ),
              10.horizontalSpace,
              // Icons Row
              Row(
                children: [
                  SuperTooltip(
                    barrierColor: Colors.transparent,
                    borderColor: Colors.transparent,
                    hasShadow: false,
                    content: const ShapeShowNonfiction(),
                    child: const CustomImageHandler(AppImages.notification),
                  ),
                  10.horizontalSpace,
                  GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) => const AlertDialog(
                          contentPadding: EdgeInsets.zero,
                          insetPadding: EdgeInsets.all(100),
                          content: ViewImmediateTaskDailog(isView: true),
                        ),
                      );
                    },
                    child: const CustomImageHandler(
                      AppImages.chat,
                      width: 35,
                      height: 35,
                      fit: BoxFit.fill,
                    ),
                  ),
                  10.horizontalSpace,
                  GestureDetector(
                    onTap: () {
                      onTapAdd == null
                          ? showDialog(
                              context: context,
                              builder: (context) => const AlertDialog(
                                    contentPadding: EdgeInsets.zero,
                                    insetPadding: EdgeInsets.all(100),
                                    content: AddImmediateTaskDailog(),
                                  ))
                          : onTapAdd!();
                    },
                    child: const CustomImageHandler(AppImages.addRectangle),
                  ),
                ],
              ),
              if (!isSmallScreen) ...[
                const SizedBox(width: 16),
                Container(
                  width: 2,
                  height: 50,
                  color: const Color.fromRGBO(231, 231, 231, 1),
                ),
                const SizedBox(width: 16),
                const ClipOval(
                  child: CustomImageHandler(
                    AppImages.archive,
                    width: 40,
                    height: 40,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 4),
                Text('Mohamed', style: context.f16400),
                const SizedBox(width: 4),
                SuperTooltip(
                  barrierColor: Colors.transparent,
                  borderColor: Colors.transparent,
                  hasShadow: false,
                  content: const ShapeSeting(),
                  child: const Icon(
                    Icons.arrow_drop_down_rounded,
                    color: AppColors.blackColor,
                  ),
                ),
              ],
            ],
          ),
        );
      },
    );
  }
}
