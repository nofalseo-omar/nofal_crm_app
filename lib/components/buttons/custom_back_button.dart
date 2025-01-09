import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomBackButtonWidget extends StatelessWidget {
  final Color? color;
  final double? size;
  final double? width;
  final double? height;
  const CustomBackButtonWidget(
      {super.key, this.color, this.size, this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.back(),
      child: Container(
        width: 40,
        height: 40,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: color ?? Colors.white.withOpacity(.8),
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Icon(
          Icons.arrow_back_ios_new,
        ),
      ),
    );
  }
}
