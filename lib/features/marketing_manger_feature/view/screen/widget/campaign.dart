// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:nofal_crm_app/core/theme/text_themes.dart';
import 'package:nofal_crm_app/core/utils/app_colors.dart';
import 'package:nofal_crm_app/features/content_creator/home/view/widgets/table_widget/default_row_widget.dart';
import 'package:nofal_crm_app/features/marketing_manger_feature/view/screen/widget/campaign_dialog.dart';
import 'package:nofal_crm_app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Campaign extends StatelessWidget {
  const Campaign({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.all(
            Radius.circular(14.r),
          ),
        ),
        padding: const EdgeInsets.all(
          20.0,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Text('حملات الدعاية ',
                      style: context.f20700
                          ?.copyWith(color: const Color(0xff020202))),
                  const Spacer(),
                  CircleAvatar(
                    backgroundColor: Colors.grey.shade300,
                    radius: 15.sp,
                    child: const Icon(
                      Icons.arrow_back,
                    ),
                  ),
                  SizedBox(width: 10.sp),
                  CircleAvatar(
                    radius: 15.sp,
                    child: const Icon(Icons.arrow_forward),
                  ),
                ],
              ),
              DefaultRowWidget(
                backgroundColor: AppColors.primaryColor.withOpacity(0.08),

                // title: 'test',
                tableItems: const {
                  "موجه إلي": null,
                  "اسم الحملة": null,
                  "اسم المشروع": null,
                  "اسم البوست": null,
                  "سوشيال ميديا": null,
                  "تاريخ الإنشاء": null,
                },
                trillingWidget: SizedBox(
                  width: 120.w,
                ),
                // showMore: () {},
              ),
              ...List.generate(
                20,
                (index) => MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () => Get.toNamed(Routes.campaignDetails),
                    child: DefaultRowWidget(
                      backgroundColor: AppColors.primaryColor.withOpacity(0.02),
                      title: "dsfdffhhghjgkhgkhg",
                      flex: 2,
                      icon:
                          "https://images.pexels.com/photos/1222271/pexels-photo-1222271.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                      tableItems: const {
                        "اسم الحملة": null,
                        "اسم المشروع": null,
                        "اسم البوست": null,
                        "سوشيال ميديا": null,
                        "تاريخ الإنشاء": null,
                      },
                      showMore: () {
                        // Get.toNamed(Routes.campaignDetails);
                        Get.dialog(
                          Dialog(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.r),
                            ),
                            insetPadding: EdgeInsets.symmetric(
                              horizontal: 200.w,
                              vertical: 50.h,
                            ),
                            child: CampaignDialog(),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
