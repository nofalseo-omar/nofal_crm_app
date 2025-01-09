import 'package:nofal_crm_app/core/theme/text_themes.dart';
import 'package:nofal_crm_app/core/utils/app_colors.dart';
import 'package:nofal_crm_app/features/content_creator/home/view/widgets/table_widget/default_row_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CampaignDetailsTable extends StatelessWidget {
  const CampaignDetailsTable({super.key});

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
                  IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios_new,
                      color: AppColors.blackColor,
                    ),
                  ),
                  Text('تفاصيل الحملة ',
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
                backgroundColor: AppColors.redColor.withOpacity(0.05),
                // title: 'test',
                tableItems: const {
                  "اسم الحملة": "حملة المشاهدات",
                  "اسم المشروع": "نوفل سيو",
                  "اسم البوست": "بوست تعليمي",
                  "سوشيال ميديا": "فيسبوك",
                  "تاريخ الإنشاء": "٢٢-٤-٢٠٢٤",
                },

                // showMore: () {},
              ),
              Divider(height: 50.h),
              DefaultRowWidget(
                backgroundColor: AppColors.primaryColor.withOpacity(0.08),
                // title: 'test',
                tableItems: const {
                  "التاريخ اليومي": null,
                  "عدد الإنفاق": null,
                  "التكلفة لكل نقرة": null,
                  "نسبة النقرات CTR": null,
                  "عدد المشاهدات": null,
                  "العملاء الجدد": null,
                },
                trillingWidget: SizedBox(
                  width: 120.w,
                ),
                // showMore: () {},
              ),
              ...List.generate(
                20,
                (index) => DefaultRowWidget(
                  backgroundColor: AppColors.primaryColor.withOpacity(0.02),
                  // title: "dsfdffhhghjgkhgkhg",
                  // flex: 1,
                  // icon:
                  //     "https://images.pexels.com/photos/1222271/pexels-photo-1222271.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                  tableItems: const {
                    "22-4-2024": null,
                    "340 \$": null,
                    "20 \$": null,
                    "%20": null,
                    "300 مشاهدة": null,
                    "١٢ عميل": null,
                  },
                  showMore: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
