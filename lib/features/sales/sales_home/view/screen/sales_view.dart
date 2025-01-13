// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:nofal_crm_app/components/custom_image_handler.dart';
import 'package:nofal_crm_app/components/developer_drawer_widget.dart';
import 'package:nofal_crm_app/core/constants/app_images_path.dart';
import 'package:nofal_crm_app/core/theme/text_themes.dart';
import 'package:nofal_crm_app/core/utils/app_colors.dart';
import 'package:nofal_crm_app/features/content_creator/home/view/widgets/app_drawer.dart';
import 'package:nofal_crm_app/features/content_creator/home/view/widgets/table_widget/default_row_widget_with_top_image.dart';
import 'package:nofal_crm_app/features/content_creator/home/view/widgets/table_widget/users_view_circles.dart';
import 'package:nofal_crm_app/features/content_creator/home/widgets/status_widget/status_widget.dart';
import 'package:nofal_crm_app/features/sales/sales_home/data/controller/sales_home_controller.dart';
import 'package:nofal_crm_app/routes/app_routes.dart';

class SalesView extends GetView<SalesHomeController> {
  const SalesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: controller.scaffoldKey,
      // backgroundColor: Color.fromRGBO(0, 45, 13, 0.05),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "مرحبا بعودتك محمد! 👋",
          style: context.f20500,
        ),
        leading: IconButton(
          onPressed: () {
            controller.scaffoldKey.currentState!.openDrawer();
          },
          icon: CustomImageHandler(AppImages.menu2),
        ),
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          // CustomImageHandler(AppImages.)
          CustomImageHandler(AppImages.search),
          10.horizontalSpace,
        ],
      ),
      drawer: AppDrawer(),
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
                    'قائمة مهام الشركة',
                    style: context.f20500,
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.companyTaskScreen);
                    },
                    child: Text(
                      'عرض المزيد',
                      style: context.f15600!.copyWith(
                        color: AppColors.darkPrimaryColor,
                      ),
                    ),
                  )
                ],
              ),
              12.verticalSpace,
              // SizedBox(
              //   height: 200.h,
              //   child: ListView.builder(
              //     shrinkWrap: true,
              //     scrollDirection: Axis.horizontal,
              //     itemBuilder: (context, index) =>
              //     itemCount: 5,
              //   ),
              // ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    5,
                    (index) => SizedBox(
                      width: Get.width * 0.9,
                      child: GestureDetector(
                        onTap: () {
                          Get.toNamed(Routes.socialMediaStatus);
                        },
                        child: DefaultRowWidgetWithTopImage(
                          // icon: AppImages.users,
                          title: 'محمد علي حسام',

                          subTitle:
                              "يجب أن تتوفر ميزة الطلب للمستخدم عند إجراء عمليات الشراء ",
                          tableItems: const {
                            "البلد": "مصر ",
                            "اسم الشركة": "نوفل سيو",
                            "سوشيال ميديا": "فيس بوك"
                          },
                          // date: "تاريخ الإنشاء: ١ مايو ٢٠٢٣",
                          // trillingWidget: Row(
                          //   children: const [
                          //     TableUsersCirclesItem(
                          //         title: 'تمت المشاركة مع',
                          //         users: [
                          //           'https://i.pravatar.cc/300?img=1',
                          //           'https://i.pravatar.cc/300?img=2',
                          //           'https://i.pravatar.cc/300?img=3',
                          //           'https://i.pravatar.cc/300?img=4'
                          //         ]),
                          //   ],
                          // ),
                          showMore: () {},
                          bottomWidget: Padding(
                            padding: EdgeInsets.symmetric(vertical: 15.sp),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Expanded(
                                  child: BuildTimeUnit(
                                    backColor: AppColors.whiteColor,
                                    unit: 'ساعة',
                                    value: '04',
                                  ),
                                ),
                                SizedBox(width: 4),
                                Expanded(
                                  child: BuildTimeUnit(
                                    backColor: AppColors.whiteColor,
                                    unit: 'دقيقة',
                                    value: '34',
                                  ),
                                ),
                                SizedBox(width: 4),
                                Expanded(
                                  child: BuildTimeUnit(
                                    backColor: AppColors.whiteColor,
                                    unit: 'ثانية',
                                    value: '17',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              20.verticalSpace,
              Text(
                'قائمة العملاء',
                style: context.f20500,
              ),
              12.verticalSpace,
              // default
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    5,
                    (index) => SizedBox(
                      width: Get.width * 0.9,
                      child: DefaultRowWidgetWithTopImage(
                        // icon: AppImages.users,
                        title: 'محمد علي حسام',
                        tableItems: const {
                          'اسم الشركة': 'نوفل سيو',
                          "البلد": "مصر ",
                          "سوشيال ميدا": "فيس بوك",
                          "درجة الاهتمام": "%100",

                          // "عدد البوستات": "١٣ بوست",
                        },
                        // date: "تاريخ الإنشاء: ١ مايو ٢٠٢٣",
                        // trillingWidget: const TableUsersCirclesItem(
                        //     title: 'تمت المشاركة مع',
                        //     users: [
                        //       'https://i.pravatar.cc/300?img=1',
                        //       'https://i.pravatar.cc/300?img=2',
                        //       'https://i.pravatar.cc/300?img=3',
                        //       'https://i.pravatar.cc/300?img=4'
                        //     ]),
                        showMore: () {},
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
