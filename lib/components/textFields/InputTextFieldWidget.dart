import 'package:nofal_crm_app/components/custom_image_handler.dart';
import 'package:nofal_crm_app/components/textFields/custom_text_field.dart';
import 'package:nofal_crm_app/core/constants/app_images_path.dart';
import 'package:nofal_crm_app/core/theme/text_themes.dart';
import 'package:nofal_crm_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InputTextFieldWidget extends StatelessWidget {
  const InputTextFieldWidget({
    super.key,
    this.title,
    this.maxLines,
    this.color = const Color(0xffF7F7F7),
    this.hint,
    this.isDatePicker = false,
  });
  final String? title;
  final String? hint;
  final int? maxLines;
  final Color? color;
  final bool isDatePicker;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title != null) Text(title ?? '', style: context.f18700),
        if (title != null) const SizedBox(height: 12),
        TextFieldComponent(
          hintText: hint ?? "",
          withBorder: true,
          suffixIcon: isDatePicker
              ? CustomImageHandler(
                  AppImages.calendar,
                  width: 24.sp,
                  height: 24.sp,
                )
              : null,
          onTapWhileTextFieldIsEnabled: () {
            // print("object");
            if (isDatePicker) {
              showDatePicker(
                  context: context,
                  firstDate: DateTime.now(),
                  lastDate: DateTime.now().add(const Duration(days: 365)),
                  initialDate: DateTime.now());
            }
          },
          maxlines: maxLines ?? 1,
          isReadOnly: false,
          fillColor: color,
          borderColor: AppColors.blackColor,
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
