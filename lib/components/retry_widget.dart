import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:nofal_crm_app/core/localization/app_strings.dart';
import 'package:nofal_crm_app/core/utils/app_colors.dart';

class RetryWidget extends StatelessWidget {
  final Function onRetry;
  final String msg;

  const RetryWidget({
    super.key,
    required this.onRetry,
    this.msg = 'حدث خطأ ما',
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // SvgPicture.asset(AppImages.error),
        Icon(Icons.dangerous_rounded,
            color: const Color.fromARGB(255, 238, 72, 72), size: 100.sp),
        SizedBox(
          height: 15,
          width: 1.sw,
        ),
        ElevatedButton.icon(
          onPressed: () async {
            await onRetry();
          },
          label: Text(
            AppStrings.letsDoItAgain.tr,
            style: TextStyle(color: AppColors.whiteColor, fontSize: 18.sp),
          ),
          style: ButtonStyle(
            backgroundColor:
                const WidgetStatePropertyAll(AppColors.primaryColor),
            padding: WidgetStatePropertyAll(
              EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
            ),
          ),
          icon: const Icon(
            Icons.refresh,
            color: AppColors.whiteColor,
          ),
        ),
      ],
    );
  }
}
