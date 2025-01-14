// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:ui';

import 'package:nofal_crm_app/components/custom_button.dart';
import 'package:nofal_crm_app/components/custom_image_handler.dart';
import 'package:nofal_crm_app/components/dailog/custom_dialog_with_two_buttom.dart';
import 'package:nofal_crm_app/components/developer_drawer_widget.dart';
import 'package:nofal_crm_app/core/constants/app_images_path.dart';
import 'package:nofal_crm_app/core/localization/app_strings.dart';
import 'package:nofal_crm_app/core/theme/text_themes.dart';
import 'package:nofal_crm_app/core/utils/app_colors.dart';
import 'package:nofal_crm_app/features/content_creator/home/view/widgets/table_widget/default_row_widget_with_top_image.dart';
import 'package:nofal_crm_app/features/tasks/view/widget/titel_value_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:nofal_crm_app/routes/app_routes.dart';

class ItemTaskCompany extends StatelessWidget {
  const ItemTaskCompany({super.key, this.isBlured = false});
  final bool isBlured;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        ImageFiltered(
          imageFilter: ImageFilter.blur(
              sigmaX: isBlured ? 0 : 3, sigmaY: isBlured ? 0 : 3),
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
        if (!isBlured)
          CustomButton(
            text: 'عرض المهمة',
            onTap: () {
              // Get.dialog(
              //   CustomDialogWithTwoBottom(
              //     title1: 'عرض المهمة',
              //     title2: AppStrings.cancel.tr,
              //     backgroundColor1: AppColors.primaryColor,
              //     onTap1: () {
              //       Get.toNamed(Routes.showTaskScreen);
              //     },
              //   ),
              // );
              Get.toNamed(Routes.showTaskScreen);
            },
          ),
      ],
    );
    // Container(
    //   width: Get.width,
    //   decoration: BoxDecoration(
    //     color: const Color(0xffE8F8FE),
    //     borderRadius: BorderRadius.circular(10),
    //   ),
    //   child: Padding(
    //     padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16),
    //     child: Column(
    //       crossAxisAlignment: CrossAxisAlignment.start,
    //       children: [
    //         Row(
    //           children: [
    //             Text(
    //               "محمد احمد علي",
    //               style: context.f16500,
    //             ),
    //             const Spacer(),
    //             const CustomImageHandler(AppImages.threeDots)
    //           ],
    //         ),
    //         8.verticalSpace,
    //         Text(
    //           "يجب أن تتوفر ميزة الطلب للمستخدم عند إجراء عمليات الشراء ......",
    //           style: context.f12500!.copyWith(color: const Color(0xff545472)),
    //         ),
    //         8.verticalSpace,
    //         const RowTitleAndValue(title: "البلد :", value: "مصر"),
    //         4.verticalSpace,
    //         const RowTitleAndValue(title: "اسم الشركة :", value: "نوفل سيو"),
    //         4.verticalSpace,
    //         const RowTitleAndValue(title: "سوشيال ميديا:", value: "فيس بوك"),
    //         16.verticalSpace,
    //         const FittedBox(
    //           child: Row(
    //             children: [
    //               ItemTime(
    //                 title: 'ساعة',
    //                 subtitle: '4',
    //               ),
    //               SizedBox(
    //                 width: 6,
    //               ),
    //               ItemTime(
    //                 title: 'دقيقة',
    //                 subtitle: '34',
    //               ),
    //               SizedBox(
    //                 width: 6,
    //               ),
    //               ItemTime(
    //                 title: 'ثانية',
    //                 subtitle: 'ثانية',
    //               )
    //             ],
    //           ),
    //         )
    //       ],
    //     ),
    //   ),
    // );
  }
}

class ItemTime extends StatelessWidget {
  const ItemTime({
    super.key,
    required this.title,
    required this.subtitle,
  });

  final String title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 7),
        child: Column(
          children: [
            Text("ساعة",
                style: context.f12500!.copyWith(
                  color: AppColors.bgGrey,
                )),
            2.verticalSpace,
            Text("04",
                style: context.f16500!.copyWith(
                  color: AppColors.blackColor,
                )),
          ],
        ),
      ),
    );
  }
}
