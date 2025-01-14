import 'package:nofal_crm_app/core/theme/text_themes.dart';
import 'package:nofal_crm_app/core/utils/app_colors.dart';
import 'package:nofal_crm_app/features/content_creator/home/view/widgets/table_widget/default_row_widget.dart';
import 'package:nofal_crm_app/features/content_creator/home/view/widgets/table_widget/default_row_widget_with_top_image.dart';
import 'package:nofal_crm_app/features/sales/sales_home/view/widget/client_exist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContactCustomerWidget extends StatelessWidget {
  const ContactCustomerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
            // DefaultRowWidget(
            //   backgroundColor: AppColors.primaryColor.withOpacity(0.08),
            //   // title: 'test',
            //   tableItems: const {
            //     "اسم العميل": null,
            //     "اسم الشركة": null,
            //     "البلد": null,
            //     " درجة الأهتمام": null,
            //   },
            //   trillingWidget: SizedBox(
            //     width: 200.w,
            //   ),
            //   // showMore: () {},
            // ),
            ...List.generate(
              20,
              (index) => DefaultRowWidgetWithTopImage(
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
              // DefaultRowWidget(
              //   textStyle: context.f16700!.copyWith(
              //       color: index % 2 == 0
              //           ? AppColors.redColor
              //           : AppColors.greenColor),
              //   nameOfKeyOfStyle: "%100",
              //   backgroundColor: AppColors.primaryColor.withOpacity(0.02),
              //   flex: 1,
              //   tableItems: const {
              //     "محمد حسن علي": null,
              //     "نوفل سيو": null,
              //     "فيسبوك": null,
              //     "%100": '*',
              //   },
              //   showMoreWithDetails: (d) {
              //     // followUpDateDialog();
              //     clientExistDialog();
              //   },
              // ),
            ),
          ],
        ),
      ),
    );
  }
}
