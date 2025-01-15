// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:get/get.dart';
import 'package:nofal_crm_app/core/theme/text_themes.dart';
import 'package:nofal_crm_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nofal_crm_app/features/content_creator/home/view/widgets/table_widget/default_row_widget_with_top_image.dart';
import 'package:nofal_crm_app/features/content_creator/home/widgets/status_widget/status_widget.dart';
import 'package:nofal_crm_app/features/content_creator/social_media_status/view/screen/social_media_status_screen.dart';
import 'package:nofal_crm_app/routes/app_routes.dart';

class MediaHomeScreen extends StatelessWidget {
  const MediaHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        context,
        'مرحبا بعودتك محمد!',
        hasBackButton: false,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'الإحصائيات',
                style: context.f20500,
              ),
              16.verticalSpace,
              StatusWidget(),
              20.verticalSpace,
              Row(
                children: [
                  Text(
                    'الحملات',
                    style: context.f20500,
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.mediaCurrentCampaign);
                    },
                    child: Text(
                      'عرض المزيد',
                      style: context.f15600!.copyWith(
                        color: AppColors.darkPrimaryColor,
                      ),
                    ),
                  ),
                ],
              ),
              12.verticalSpace,
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    5,
                    (index) => SizedBox(
                      width: Get.width * 0.9,
                      child: GestureDetector(
                        onTap: () {},
                        child: DefaultRowWidgetWithTopImage(
                          // icon: AppImages.users,
                          title: 'محمد علي حسام',
                          tableItems: const {
                            "البلد": "مصر ",
                            "اسم الشركة": "نوفل سيو",
                            "سوشيال ميديا": "فيس بوك",
                          },

                          showMore: () {},
                          bottomWidget: Padding(
                            padding: EdgeInsets.symmetric(vertical: 15.sp),
                            child: Text("تاريخ الإنشاء: ١ مايو ٢٠٢٣"),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              20.verticalSpace,
              Row(
                children: [
                  Text(
                    'الحملات الموقوفة',
                    style: context.f20500,
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'عرض المزيد',
                      style: context.f15600!.copyWith(
                        color: AppColors.darkPrimaryColor,
                      ),
                    ),
                  ),
                ],
              ),
              12.verticalSpace,
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    5,
                    (index) => SizedBox(
                      width: Get.width * 0.9,
                      child: GestureDetector(
                        onTap: () {
                          // Get.toNamed(Routes.socialMediaStatus);
                        },
                        child: DefaultRowWidgetWithTopImage(
                          // icon: AppImages.users,
                          backgroundColor: Color(0xffFFE7E5),
                          title: 'محمد علي حسام',

                          // subTitle:
                          //     "يجب أن تتوفر ميزة الطلب للمستخدم عند إجراء عمليات الشراء ",
                          tableItems: const {
                            "البلد": "مصر ",
                            "اسم الشركة": "نوفل سيو",
                            "سوشيال ميديا": "فيس بوك",
                          },

                          showMore: () {},
                          bottomWidget: Padding(
                            padding: EdgeInsets.symmetric(vertical: 15.sp),
                            child: Text("تاريخ الإنشاء: ١ مايو ٢٠٢٣"),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              20.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }
}
