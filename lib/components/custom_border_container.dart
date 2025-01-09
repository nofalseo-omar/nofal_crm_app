import 'package:flutter/material.dart';

class CustomBorderContainer extends StatelessWidget {
  final Widget? child;
  final double? width;
  final Color? containerColor;

  final EdgeInsets? margin;
  const CustomBorderContainer({super.key, this.child, this.width, this.margin,this.containerColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      width: width ??
          (width == 0 ? null : MediaQuery.sizeOf(context).width * 0.15),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: containerColor ?? Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: child,
    );
  }
}
