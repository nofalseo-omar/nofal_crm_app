import 'package:nofal_crm_app/components/custom_image_handler.dart';
import 'package:nofal_crm_app/core/utils/app_colors.dart';
import 'package:nofal_crm_app/features/content_creator/home/view/widgets/table_widget/table_cell_item.dart';
import 'package:flutter/material.dart';
import 'package:nofal_crm_app/core/theme/text_themes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DefaultRowWidgetWithTopImage extends StatelessWidget {
  const DefaultRowWidgetWithTopImage({
    super.key,
    this.icon,
    this.title,
    this.subTitle,
    required this.tableItems,
    this.trillingWidget,
    this.showMore,
    this.showMoreWithDetails,
    this.textStyle,
    this.backgroundColor,
    this.bottomWidget,
    this.flex = 3,
    this.nameOfKeyOfStyle,
    this.date,
  });

  final String? icon, title;
  final Map<String, String?> tableItems;
  final Widget? trillingWidget, bottomWidget;
  final Function()? showMore;
  final void Function(dynamic details)? showMoreWithDetails;
  final Color? backgroundColor;
  final TextStyle? textStyle;
  final int flex;
  final String? nameOfKeyOfStyle;
  final String? date;
  final String? subTitle;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      bool isSmallScreen = constraints.maxWidth < 600;
      bool isMediumScreen = true;

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: [
                  if (icon != null)
                    CustomImageHandler(
                      icon,
                      width: 35,
                      fit: BoxFit.cover,
                      height: 35,
                    ),
                  8.horizontalSpace,
                  Expanded(
                    flex: 5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title ?? '',
                          overflow: TextOverflow.ellipsis,
                          style: context.f16700?.copyWith(
                            color: AppColors.blackColor,
                          ),
                        ),
                        if (subTitle != null)
                          Text(
                            subTitle ?? '',
                            overflow: TextOverflow.ellipsis,
                            style: context.f12500?.copyWith(
                              color: Color(0xff545472),
                            ),
                          ),
                      ],
                    ),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  if (trillingWidget != null)
                    FittedBox(
                      child: Row(
                        children: [
                          trillingWidget!,
                          10.horizontalSpace,
                        ],
                      ),
                    ),
                  if (showMore != null || showMoreWithDetails != null)
                    GestureDetector(
                      onTapDown: (details) =>
                          showMoreWithDetails?.call(details),
                      child: const Card(
                        elevation: 0,
                        color: Color(0xffFAFEFF),
                        child: Icon(
                          Icons.more_horiz,
                          color: Color(0xff91969A),
                          size: 30,
                        ),
                      ),
                    ),
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
                  flex: 5,
                  child: Wrap(
                    alignment: WrapAlignment.start,
                    spacing: 20,
                    runSpacing: 10,
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

                // Show More Icon
                // if (showMore != null || showMoreWithDetails != null)
                //   GestureDetector(
                //     onTapDown: (details) => showMoreWithDetails?.call(details),
                //     child: const Icon(
                //       Icons.more_horiz,
                //       color: Color(0xff91969A),
                //       size: 30,
                //     ),
                //   ),
              ],
            ),
            if (date != null)
              const Spacer(
                flex: 3,
              ),
            if (date != null)
              Text(
                date!,
                style: context.f12500!.copyWith(
                  color: AppColors.blackColor.withOpacity(0.5),
                ),
              ),
            if (bottomWidget != null) bottomWidget!,
            if (date != null)
              const Spacer(
                flex: 1,
              ),
          ],
        ),
      );
    });
  }
}
