import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nofal_crm_app/core/utils/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final double? borderRadius;
  final Color? backgroundColor;
  final Color? color;
  final Color? bordereColor;
  final double? fontSize;
  final bool isDisabled;
  final IconData? icon;

  const CustomButton({
    super.key,
    required this.text,
    required this.onTap,
    this.borderRadius = 10,
    this.backgroundColor = AppColors.primaryColor,
    this.color = AppColors.whiteColor,
    this.bordereColor = AppColors.primaryColor,
    this.fontSize = 18,
    this.isDisabled = false,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        isDisabled ? null : onTap();
      },
      child: Container(
        height: 50.h,
        padding: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          // color: backgroundColor!,
          color: isDisabled ? AppColors.textInputBorderColor : backgroundColor,
          borderRadius: BorderRadius.circular(borderRadius ?? 10),
          border: Border.all(
            color: isDisabled ? AppColors.textInputBorderColor : bordereColor!,
          ),
        ),
        child: Center(
          child: FittedBox(
            child: icon != null
                ? Row(
                    children: [
                      Text(
                        text,
                        style: Get.textTheme.headlineMedium!.copyWith(
                          color: color!,
                          fontSize: fontSize!,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Icon(icon, color: color, size: 20),
                    ],
                  )
                : icon != null
                    ? Icon(icon, color: color)
                    : Text(
                        text,
                        style: Get.textTheme.headlineMedium!.copyWith(
                          color: color!,
                          fontSize: fontSize!,
                        ),
                      ),
          ),
        ),
      ),
    );
  }
}
