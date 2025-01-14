// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nofal_crm_app/core/theme/text_themes.dart';
import 'package:nofal_crm_app/core/utils/app_colors.dart';

class CustomStepper extends StatelessWidget {
  const CustomStepper({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.sp),
      decoration: BoxDecoration(
        color: Color(0xffEDFDFD),
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: ListView.separated(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => Align(
          alignment: AlignmentDirectional.centerStart,
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.primaryColor,
                ),
                // padding: EdgeInsets.all(15.sp),
                width: 35.sp,
                height: 35.sp,
                child: Center(
                  child: Text(
                    index.toString(),
                    style:
                        context.f20500!.copyWith(color: AppColors.whiteColor),
                  ),
                ),
              ),
              16.horizontalSpace,
              Text(
                "Feb 5,2024 , 7:45 AM",
                style: context.f16500,
              )
            ],
          ),
        ),
        separatorBuilder: (context, index) => Align(
          alignment: AlignmentDirectional.centerStart,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
            child: Container(
              height: 22.h,
              width: 2.w,
              decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(2.r)),
            ),
          ),
        ),
        itemCount: 3,
      ),
    );
  }
}
