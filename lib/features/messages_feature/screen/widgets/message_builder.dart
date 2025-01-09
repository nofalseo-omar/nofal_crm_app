import 'package:nofal_crm_app/components/custom_image_handler.dart';
import 'package:nofal_crm_app/core/theme/text_themes.dart';
import 'package:nofal_crm_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MessageBuilder extends StatelessWidget {
  const MessageBuilder(
      {super.key,
      required this.isMe,
      required this.message,
      required this.image,
      required this.time});
  final bool isMe;
  final String message;
  final String image;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: isMe ? TextDirection.ltr : TextDirection.rtl,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 24.h),
        child: Row(
          children: [
            ClipOval(
              child: CustomImageHandler(
                image,
                width: 35.sp,
                height: 35.sp,
                fit: BoxFit.cover,
              ),
            ),
            8.horizontalSpace,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  constraints: BoxConstraints(
                    maxWidth: Get.width * 0.4,
                  ),
                  padding: EdgeInsets.all(16.sp),
                  decoration: BoxDecoration(
                    color: isMe
                        ? AppColors.darkPrimaryColor
                        : AppColors.lightGray2,
                    borderRadius: BorderRadiusDirectional.only(
                      topEnd: Radius.circular(15.r),
                      topStart: Radius.circular(15.r),
                      bottomEnd: Radius.circular(15.r),
                      bottomStart: const Radius.circular(0),
                    ),
                  ),
                  child: Text(
                    message,
                    style: context.f12500!.copyWith(
                      color:
                          !isMe ? AppColors.blackColor : AppColors.whiteColor,
                    ),
                  ),
                ),
                4.verticalSpace,
                Text(
                  time,
                  style: context.f14700!.copyWith(
                    color: AppColors.blackColor.withOpacity(0.8),
                    fontSize: 10.sp,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
