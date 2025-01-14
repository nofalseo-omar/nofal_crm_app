// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nofal_crm_app/components/textFields/custom_text_field.dart';
import 'package:nofal_crm_app/core/theme/text_themes.dart';

class TextFieldBuilder extends StatelessWidget {
  const TextFieldBuilder(
      {super.key,
      required this.title,
      this.maxLines = 1,
      this.suffixIcon,
      this.controller});
  final String title;
  final int maxLines;
  final Widget? suffixIcon;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: context.f16500,
          ),
          12.verticalSpace,
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.25),
                  spreadRadius: 0,
                  blurRadius: 1,
                  offset: const Offset(0, 0),
                ),
              ],
            ),
            child: TextFieldComponent(
              hintText: title,
              maxlines: maxLines,
              radius: 12.r,
              controller: controller,

              // withBorder: true,
              suffixIcon: suffixIcon,
              fillColor: Color(0xffF9FAFB),
              borderColor: Color(0xffF9FAFB),
            ),
          ),
        ],
      ),
    );
  }
}
