import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nofal_crm_app/core/theme/text_themes.dart';
import 'package:nofal_crm_app/core/utils/app_colors.dart';

class BuildTimeUnit extends StatelessWidget {
  const BuildTimeUnit({
    super.key,
    required this.unit,
    required this.value,
    this.backColor,
    this.height,
  });

  final String unit;
  final String value;
  final Color? backColor;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 8),
        Container(
          width: double.infinity,
          height: height ?? 80.h,
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
          decoration: BoxDecoration(
            color: backColor ?? const Color(0xffF7F7F7),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            children: [
              Text(unit,
                  style: context.f18700!.copyWith(color: AppColors.bgGrey)),
              Text(
                value,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ItemContainerWidget extends StatelessWidget {
  const ItemContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
      ),
    );
  }
}
