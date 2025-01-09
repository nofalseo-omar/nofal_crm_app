import 'package:nofal_crm_app/core/theme/text_themes.dart';
import 'package:nofal_crm_app/core/utils/app_colors.dart';
import 'package:nofal_crm_app/features/notifaction/view/widget/iteam_shape_notifaction_widget.dart';
import 'package:nofal_crm_app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hmb_tooltip/hmb_tooltip.dart';

class ShapeShowNonfiction extends StatelessWidget {
  const ShapeShowNonfiction({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        ASTooltip(
          defaultShow: false,
          child: Container(
            width: 300.w,
            height: 250.h,
            padding: const EdgeInsets.symmetric(vertical: 16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(.2),
                  blurRadius: 3,
                  spreadRadius: 0,
                ),
              ],
            ),
            child: Column(
              children: List.generate(
                2,
                (index) => const ItemShapeNotification(),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          left: 0,
          child: InkWell(
            onTap: () {
              Get.offAllNamed(Routes.notificationsScreen);
            },
            child: Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(16),
                      bottomRight: Radius.circular(16)),
                  color: AppColors.dividerNotifactionColor),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    'عرض المزيد',
                    style: context.f14400!.copyWith(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
