// ignore_for_file: prefer_const_constructors

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:nofal_crm_app/components/custom_image_handler.dart';
import 'package:nofal_crm_app/core/constants/app_images_path.dart';
import 'package:nofal_crm_app/core/theme/text_themes.dart';
import 'package:nofal_crm_app/core/utils/app_colors.dart';
import 'package:nofal_crm_app/features/content_creator/home/logic/controller/content_home_controller.dart';
import 'package:nofal_crm_app/features/content_creator/home/view/widgets/app_drawer.dart';
import 'package:nofal_crm_app/features/content_creator/home/view/widgets/table_widget/default_row_widget_with_top_image.dart';
import 'package:flutter/material.dart';
import 'package:nofal_crm_app/features/content_creator/home/view/widgets/table_widget/users_view_circles.dart';
import 'package:nofal_crm_app/features/content_creator/home/widgets/status_widget/status_widget.dart';
import 'package:nofal_crm_app/routes/app_routes.dart';

class ContentHomeScreen extends GetView<ContentHomeController> {
  const ContentHomeScreen({super.key});

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
            icon: CustomImageHandler(AppImages.menu2)),
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          // CustomImageHandler(AppImages.)
          CustomImageHandler(AppImages.search),
          10.horizontalSpace,
        ],
      ),
      drawer: AppDrawer(
    
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
                    'المشاريع',
                    style: context.f20500,
                  ),
                  Spacer(),
                  Text(
                    'عرض المزيد',
                    style: context.f15600!.copyWith(
                      color: AppColors.darkPrimaryColor,
                    ),
                  )
                ],
              ),
              12.verticalSpace,

              // default
              SizedBox(
                height: 200.h,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => SizedBox(
                    width: Get.width * 0.9,
                    child: GestureDetector(
                      onTap: () {
                        Get.toNamed(Routes.socialMediaStatus);
                      },
                      child: DefaultRowWidgetWithTopImage(
                        icon: AppImages.users,
                        title: 'العملات الرقمية',
                        tableItems: const {
                          "عدد الصور": "٢٧ صورة",
                          "عدد المقالات": "٢١ مقال",
                          "عدد البوستات": "٢٧ بوست"
                        },
                        date: "تاريخ الإنشاء: ١ مايو ٢٠٢٣",
                        trillingWidget: Row(
                          children: const [
                            TableUsersCirclesItem(
                                title: 'تمت المشاركة مع',
                                users: [
                                  'https://i.pravatar.cc/300?img=1',
                                  'https://i.pravatar.cc/300?img=2',
                                  'https://i.pravatar.cc/300?img=3',
                                  'https://i.pravatar.cc/300?img=4'
                                ]),
                          ],
                        ),
                        showMore: () {},
                      ),
                    ),
                  ),
                  itemCount: 5,
                ),
              ),
              20.verticalSpace,
              Text(
                'المشاريع الأحدث',
                style: context.f20500,
              ),
              12.verticalSpace,
              // default
              SizedBox(
                height: 200.h,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.socialMediaStatus);
                    },
                    child: SizedBox(
                      width: Get.width * 0.9,
                      child: DefaultRowWidgetWithTopImage(
                        icon: AppImages.users,
                        title: 'العملات الرقمية',
                        tableItems: const {
                          'تم الإنشاء في:': '١ مايو ٢٠٢٣',
                          "عدد الصور": "٢٧ صورة",
                          "عدد المقالات": "٢١ مقال",

                          // "عدد البوستات": "١٣ بوست",
                        },
                        date: "تاريخ الإنشاء: ١ مايو ٢٠٢٣",
                        trillingWidget: const TableUsersCirclesItem(
                            title: 'تمت المشاركة مع',
                            users: [
                              'https://i.pravatar.cc/300?img=1',
                              'https://i.pravatar.cc/300?img=2',
                              'https://i.pravatar.cc/300?img=3',
                              'https://i.pravatar.cc/300?img=4'
                            ]),
                        showMore: () {},
                      ),
                    ),
                  ),
                  itemCount: 5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
