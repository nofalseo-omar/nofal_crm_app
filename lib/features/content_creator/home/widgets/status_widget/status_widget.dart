// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nofal_crm_app/core/theme/text_themes.dart';
import 'package:nofal_crm_app/core/utils/app_colors.dart';

class StatusWidget extends StatelessWidget {
  const StatusWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var item = [
      {
        "name": "مجموع المهام",
        "bgColor": Color(0xff1CB9F7).withOpacity(0.10),
        "secondaryColor": Color(0xff4FBAF0),
        "num": "15",
      },
      {
        "name": "المهام المكتملة",
        "bgColor": Color(0xff00002D).withOpacity(0.05),
        "secondaryColor": Color(0xff00002D),
        "num": "12",
      },
      {
        "name": "قيد العمل",
        "bgColor": Color(0xffF07F4F).withOpacity(0.10),
        "secondaryColor": Color(0xffF07F4F),
        "num": "5",
      },
      {
        "name": "جديد",
        "bgColor": Color(0xff00AB28).withOpacity(0.10),
        "secondaryColor": Color(0xff00AB28),
        "num": "5",
      },
    ];
    return GridView.builder(
      shrinkWrap: true,
      // padding: EdgeInsets.symmetric(horizontal: 20.w),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: (2).sp,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
      ),
      itemBuilder: (context, index) => Container(
        decoration: BoxDecoration(
          color: item[index]['bgColor'] as Color,
          borderRadius: BorderRadius.circular(8),
        ),
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 15.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              item[index]['name'].toString(),
              style: context.f12500!.copyWith(
                color: AppColors.bgGrey,
              ),
            ),
            Row(
              children: [
                Container(
                  height: 30.h,
                  width: 4.w,
                  decoration: BoxDecoration(
                    color: item[index]['secondaryColor'] as Color,
                    borderRadius: BorderRadius.circular(24.r),
                  ),
                ),
                8.horizontalSpace,
                Text(
                  item[index]['num'].toString(),
                  style: context.f20600,
                ),
              ],
            )
          ],
        ),
      ),
      itemCount: item.length,
    );
  }
}
