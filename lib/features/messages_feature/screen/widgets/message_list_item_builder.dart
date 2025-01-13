import 'package:intl/intl.dart' as i;
import 'package:nofal_crm_app/components/custom_image_handler.dart';
import 'package:nofal_crm_app/core/theme/text_themes.dart';
import 'package:nofal_crm_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MessageListItemBuilder extends StatelessWidget {
  const MessageListItemBuilder(
      {super.key,
      required this.image,
      required this.name,
      required this.last_message,
      required this.time,
      required this.backgroundColor});
  final String image;
  final String name;
  final String last_message;
  final DateTime time;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: ListTile(
        // contentPadding: EdgeInsets.zero,
        leading: ClipOval(
          child: CustomImageHandler(
            image,
            fit: BoxFit.cover,
            width: 40.sp,
            height: 40.sp,
          ),
        ),
        title: Text(
          name,
          overflow: TextOverflow.ellipsis,
          style: context.f16500!.copyWith(color: AppColors.blackColor),
        ),
        subtitle: Text(
          last_message,
          overflow: TextOverflow.ellipsis,
          style: context.f12500!.copyWith(
            color: AppColors.blackColor.withOpacity(0.6),
          ),
        ),
        trailing: Text(
          i.DateFormat('hh:mm a').format(time).toString(),
          textDirection: TextDirection.ltr,
          style: context.f14400,
        ),
      ),
    );
  }
}
