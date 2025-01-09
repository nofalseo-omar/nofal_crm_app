import 'package:nofal_crm_app/core/theme/text_themes.dart';
import 'package:nofal_crm_app/core/utils/app_colors.dart';
import 'package:nofal_crm_app/features/Media/media_home/view/widgets/dialogs/add_daily_performance.dart';
import 'package:nofal_crm_app/features/content_creator/home/view/widgets/table_widget/default_row_widget.dart';
import 'package:nofal_crm_app/features/seo/screen/widget/showmenu.dart';
import 'package:nofal_crm_app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CampaignsTable extends StatelessWidget {
  const CampaignsTable({super.key});

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
                  Text('الحملات ',
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
                  "اسم الحملة": null,
                  "اسم المشروع": null,
                  "اسم البوست": null,
                  "سوشيال ميديا": null,
                  "تاريخ الإنشاء": null,
                },
                trillingWidget: const Expanded(child: SizedBox()),
                // showMore: () {},
              ),
              ...List.generate(
                20,
                (index) => GestureDetector(
                  onTap: () => Get.toNamed(Routes.campaignDetails),
                  child: DefaultRowWidget(
                    backgroundColor: index % 3 == 0
                        ? AppColors.redAlertColor.withOpacity(0.1)
                        : AppColors.primaryColor.withOpacity(0.02),
                    flex: 1,
                    tableItems: const {
                      "اسم الحملة": null,
                      " اسم المشروع": null,
                      "اسم البوست": null,
                      "سوشيال ميديا": null,
                      "تاريخ الإنشاء": null,
                    },
                    showMoreWithDetails: (details) {
                      showMenu(
                          color: AppColors.whiteColor,
                          context: context,
                          position: calRect(details, context),
                          items: [
                            PopupMenuItem(
                              value: 'اضافه اداء يومي',
                              child: const Text('اضافه اداء يومي'),
                              onTap: () => showDialog(
                                  context: context,
                                  builder: (context) => const AlertDialog(
                                        content: AddDailyPerformance(),
                                      )),
                            ),
                            PopupMenuItem(
                              value: 'تعديل',
                              child: const Text('تعديل'),
                              onTap: () => const AddDailyPerformance(),
                            ),
                            PopupMenuItem(
                              value: 'حذف',
                              child: const Text('حذف'),
                              onTap: () => const AddDailyPerformance(),
                            ),
                          ]);
                    },
                    // showMore: () {

                    //   showDialog(
                    //       context: context,
                    //       builder: (context) => AlertDialog(
                    //             content: const AddDailyPerformance(),
                    //           ));
                    // },
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
