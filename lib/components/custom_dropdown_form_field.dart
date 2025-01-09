import 'package:nofal_crm_app/core/theme/text_themes.dart';
import 'package:nofal_crm_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomDropDownFormField extends StatelessWidget {
  const CustomDropDownFormField(
      {super.key,
      required this.items,
      required this.onChanged,
      this.value,
      this.icon,
      this.hintText,
      this.title,
      this.validator,
      this.color});

  final List<DropdownMenuItem>? items;
  final void Function(dynamic)? onChanged;
  final dynamic value;
  final Widget? icon;
  final String? title;
  final String? hintText;
  final String? Function(dynamic)? validator;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title ?? '', style: context.f18700),
        const SizedBox(height: 12),
        DropdownButtonFormField(
          dropdownColor: AppColors.whiteColor,
          padding: EdgeInsets.zero,
          items: items,
          style: Get.textTheme.bodySmall,
          onChanged: onChanged,
          value: value,
          icon: icon,
          decoration: InputDecoration(
            hintText: hintText,
            filled: true,
            fillColor: color ?? Colors.white,
            hintStyle: const TextStyle(
              fontSize: 16.0,
              color: Colors.grey,
              fontWeight: FontWeight.w400,
            ),
            errorStyle: const TextStyle(
              fontSize: 16.0,
              color: Colors.red,
              fontWeight: FontWeight.w400,
            ),
            disabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(8.0),
              ),
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(8.0),
              ),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(8.0),
              ),
            ),
            border: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(8.0),
              ),
            ),
          ),
          validator: validator,
        ),
      ],
    );
  }
}
