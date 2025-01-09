import 'package:nofal_crm_app/components/custom_image_handler.dart';
import 'package:nofal_crm_app/core/utils/app_colors.dart';
import 'package:nofal_crm_app/features/content_creator/home/view/widgets/table_widget/table_cell_item.dart';
import 'package:flutter/material.dart';
import 'package:nofal_crm_app/features/content_creator/social_media_status/view/widgets/social_media_table.dart';
import 'package:nofal_crm_app/core/theme/text_themes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DefaultRowWidgetWithTopImage extends StatelessWidget {
  const DefaultRowWidgetWithTopImage({
    super.key,
    this.icon,
    this.title,
    required this.tableItems,
    this.trillingWidget,
    this.showMore,
    this.showMoreWithDetails,
    this.textStyle,
    this.backgroundColor,
    this.flex = 3,
    this.nameOfKeyOfStyle,
  });

  final String? icon, title;
  final Map<String, String?> tableItems;
  final Widget? trillingWidget;
  final Function()? showMore;
  final void Function(dynamic details)? showMoreWithDetails;
  final Color? backgroundColor;
  final TextStyle? textStyle;
  final int flex;
  final String? nameOfKeyOfStyle;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      bool isSmallScreen = constraints.maxWidth < 600;
      bool isMediumScreen = constraints.maxWidth < 900;

      return Container(
        padding: EdgeInsets.symmetric(
          horizontal: isSmallScreen ? 8 : 16,
          vertical: 8,
        ),
        margin: EdgeInsets.all(isSmallScreen ? 4 : 8),
        decoration: BoxDecoration(
          color: backgroundColor ?? AppColors.lightBlue.withOpacity(.1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: [
                  CustomImageHandler(
                    icon,
                    width: 35,
                    fit: BoxFit.cover,
                    height: 35,
                  ),
                  8.horizontalSpace,
                  Text(
                    title ?? '',
                    style: context.f16700?.copyWith(
                      color: AppColors.blackColor,
                    ),
                  )
                ],
              ),
            ),
            const Divider(
              color: Color(0xffEBEBEB),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Leading section
                // if (title != null)

                // Table Items - dynamically sized
                Expanded(
                  flex: 4,
                  child: Wrap(
                    alignment: WrapAlignment.start,
                    spacing: isSmallScreen ? 8 : 16,
                    runSpacing: isSmallScreen ? 10 : 12,
                    children: tableItems.entries.map((entry) {
                      return TableCellItem(
                        title: entry.key,
                        subTitle: entry.value == "*" ? null : entry.value,
                        titleStyle: nameOfKeyOfStyle == null
                            ? textStyle
                            : entry.value == '*'
                                ? textStyle
                                : null,
                      );
                    }).toList(),
                  ),
                ),
                // Trailing widget
                if (trillingWidget != null && !isMediumScreen)
                  Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: trillingWidget!,
                  ),
                // Show More Icon
                if (showMore != null || showMoreWithDetails != null)
                  GestureDetector(
                    onTapDown: (details) => showMoreWithDetails?.call(details),
                    child: const Icon(
                      Icons.more_horiz,
                      color: Color(0xff91969A),
                      size: 30,
                    ),
                  ),
              ],
            ),
          ],
        ),
      );
    });
  }
}
