import 'package:nofal_crm_app/components/custom_image_handler.dart';
import 'package:nofal_crm_app/core/theme/text_themes.dart';
import 'package:nofal_crm_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotifiactionRowWidget extends StatelessWidget {
  const NotifiactionRowWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.time,
  });
  final String? icon, title, time;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(13),
      ),
      
      leading: ClipOval(
        // backgroundColor: AppColors.whiteColor,
        child: CustomImageHandler(
          icon,
          width: 35.sp,
          fit: BoxFit.cover,
          height: 35.sp,
        ),
      ),
      subtitle: Text(
        title!,
        style: context.f14700,
      ),
      title: Text(
        time!,
        style: context.f14700!.copyWith(color: AppColors.offWhite),
      ),
    );
    // Container(
    //   padding: const EdgeInsets.all(16),
    //   margin: const EdgeInsets.all(8),
    //   decoration: BoxDecoration(
    //       // color: AppColors.lightBlue.withOpacity(.1),
    //       borderRadius: BorderRadius.circular(10)),
    //   child:

    //    Row(
    //     children: [
    // ClipOval(
    //   // backgroundColor: AppColors.whiteColor,
    //   child: CustomImageHandler(
    //     icon,
    //     width: 35.sp,
    //     fit: BoxFit.cover,
    //     height: 35.sp,
    //   ),
    // ),
    //       // 8.horizontalSpace,
    //       // Text(
    //       //   'لقد آرفق محمد عجمي مهمة الآن',
    //       //   style: context.f20500,
    //       // ),
    //       // const Spacer(),
    //       // Text(
    //       //   time!,
    //       //   style: context.f20500!.copyWith(color: AppColors.offWhite),
    //       // )
    //     ],
    //   ),
    // );
  }
}
