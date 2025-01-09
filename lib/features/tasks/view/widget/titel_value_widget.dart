import 'package:nofal_crm_app/core/theme/text_themes.dart';
import 'package:nofal_crm_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RowTitleAndValue extends StatelessWidget {
  const RowTitleAndValue({super.key, required this.title, required this.value});
  final String title, value;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: context.f14400!
              .copyWith(color: AppColors.offWhite, fontWeight: FontWeight.w500),
        ),
        20.horizontalSpace,
        Text(value,
            style: context.f14400!.copyWith(
                color: AppColors.blackColor, fontWeight: FontWeight.w500)),
      ],
    );
  }
}
