// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nofal_crm_app/components/app_bar_component.dart';
import 'package:nofal_crm_app/core/constants/app_images_path.dart';
import 'package:nofal_crm_app/core/theme/text_themes.dart';
import 'package:nofal_crm_app/core/utils/app_colors.dart';
import 'package:nofal_crm_app/features/content_creator/home/view/widgets/table_widget/default_row_widget_with_top_image.dart';
import 'package:nofal_crm_app/features/content_creator/social_media_status/view/screen/social_media_status_screen.dart';

class SalesAdminSalesTeamDetailsView extends StatelessWidget {
  const SalesAdminSalesTeamDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, "الملف الشخصي"),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            DefaultRowWidgetWithTopImage(
              backgroundColor: Color(0xffD20000).withOpacity(0.05),
              icon: AppImages.users,
              title: "محمد عجمي",
              tableItems: const {
                "مهام الشركة": "٣ مهام ",
                "عدد العملاء": "٤ عملاء",
                "تسليمه": "5",
              },
              showMore: () {},
            ),
            DefaultTabController(
              length: 2,
              child: Expanded(
                child: Column(
                  children: [
                    15.verticalSpace,
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xffE9EBEB),
                        borderRadius: BorderRadius.circular(25.r),
                      ),
                      padding: EdgeInsets.symmetric(
                          vertical: 10.h, horizontal: 10.w),
                      child: TabBar(
                        dividerHeight: 0,
                        labelPadding: EdgeInsets.zero,
                        indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.r),
                          color: AppColors.whiteColor,
                        ),
                        labelStyle: context.f15600,
                        tabs: [
                          Tab(
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 35.w,
                              ),
                              child: Text("عملاء الشركة"),
                            ),
                          ),
                          Tab(
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 35.w,
                              ),
                              child: Text("عملاء الSales"),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          SingleChildScrollView(
                            padding: EdgeInsets.symmetric(
                              vertical: 10.h,
                            ),
                            child: Column(
                              children: List.generate(
                                10,
                                (index) => DefaultRowWidgetWithTopImage(
                                  // icon: AppImages.users,
                                  title: "محمد عجمي",
                                  tableItems: const {
                                    "اسم الشركة": "نوفل سيو ",
                                    "التسعيرة": "2000\$",
                                    "درجة الاهتمام": "100%*",
                                    "مدة المهمة": "٢ ساعة ",
                                  },
                                  showMore: () {},
                                  bottomWidget: Padding(
                                    padding: EdgeInsets.symmetric(
                                      vertical: 10.h,
                                    ),
                                    child: Text(
                                      "تاريخ الإنشاء: ١ مايو ٢٠٢٣",
                                      style: context.f14400!.copyWith(
                                        color: AppColors.blackColor
                                            .withOpacity(0.5),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SingleChildScrollView(
                            padding: EdgeInsets.symmetric(
                              vertical: 10.h,
                            ),
                            child: Column(
                              children: List.generate(
                                10,
                                (index) => DefaultRowWidgetWithTopImage(
                                  // icon: AppImages.users,
                                  title: "محمد عجمي",
                                  tableItems: const {
                                    "اسم الشركة": "نوفل سيو ",
                                    "التسعيرة": "2000\$",
                                    "درجة الاهتمام": "100%*",
                                  },
                                  showMore: () {},
                                  bottomWidget: Padding(
                                    padding: EdgeInsets.symmetric(
                                      vertical: 10.h,
                                    ),
                                    child: Text(
                                      "تاريخ الإنشاء: ١ مايو ٢٠٢٣",
                                      style: context.f14400!.copyWith(
                                        color: AppColors.blackColor
                                            .withOpacity(0.5),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
