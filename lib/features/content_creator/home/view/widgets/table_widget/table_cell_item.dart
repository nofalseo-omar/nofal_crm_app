import 'package:nofal_crm_app/core/theme/text_themes.dart';
import 'package:nofal_crm_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TableCellItem extends StatelessWidget {
  const TableCellItem({
    super.key,
    required this.title,
    this.subTitle,
    this.titleStyle,
  });

  final String? title, subTitle;
  final TextStyle? titleStyle;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SizedBox(
          width: constraints.maxWidth * 0.3,
          // Responsive width
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title!,
                style: subTitle != null
                    ? titleStyle ??
                        context.f16600?.copyWith(color: const Color(0xff545472))
                    : context.f16700?.copyWith(color: const Color(0xff000000)),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
              if (subTitle != null) ...[
                SizedBox(height: 4),
                Text(
                  subTitle!,
                  style: context.f16600?.copyWith(color: AppColors.blackColor),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ],
            ],
          ),
        );
      },
    );
  }
}
