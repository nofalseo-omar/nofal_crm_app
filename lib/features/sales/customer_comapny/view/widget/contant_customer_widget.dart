import 'package:nofal_crm_app/core/theme/text_themes.dart';
import 'package:nofal_crm_app/core/utils/app_colors.dart';
import 'package:nofal_crm_app/features/content_creator/home/view/widgets/table_widget/default_row_widget.dart';
import 'package:nofal_crm_app/features/sales/widget/client_exist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContactCustomerWidget extends StatelessWidget {
  const ContactCustomerWidget({super.key});

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
                  Text('قائمة العملاء',
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
                  "اسم العميل": null,
                  "اسم الشركة": null,
                  "البلد": null,
                  " درجة الأهتمام": null,
                },
                trillingWidget: SizedBox(
                  width: 200.w,
                ),
                // showMore: () {},
              ),
              ...List.generate(
                20,
                (index) => DefaultRowWidget(
                  textStyle: context.f16700!.copyWith(
                      color: index % 2 == 0
                          ? AppColors.redColor
                          : AppColors.greenColor),
                  nameOfKeyOfStyle: "%100",
                  backgroundColor: AppColors.primaryColor.withOpacity(0.02),
                  flex: 1,
                  tableItems: const {
                    "محمد حسن علي": null,
                    "نوفل سيو": null,
                    "فيسبوك": null,
                    "%100": '*',
                  },
                  showMoreWithDetails: (d) {
                    // followUpDateDialog();
                    clientExistDialog();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
