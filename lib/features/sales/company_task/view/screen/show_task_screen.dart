// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:nofal_crm_app/components/custom_button.dart';
import 'package:nofal_crm_app/core/theme/text_themes.dart';
import 'package:nofal_crm_app/core/utils/app_colors.dart';
import 'package:nofal_crm_app/features/content_creator/home/widgets/status_widget/connection_duration_widget.dart';
import 'package:nofal_crm_app/features/content_creator/social_media_status/view/screen/social_media_status_screen.dart';
import 'package:nofal_crm_app/features/sales/company_task/logic/controller/show_task_controller.dart';
import 'package:nofal_crm_app/features/sales/customer_comapny/view/widget/custom_stepper.dart';
import 'package:nofal_crm_app/features/sales/customer_comapny/view/widget/text_field_builder.dart';

class ShowTaskScreen extends GetView<ShowTaskController> {
  const ShowTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, "عرض التاسك"),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(width: double.infinity, child: ConnectionDurationWidget()),
            Divider(
              color: Color(0xffEBEBEB),
              height: 25.h,
            ),
            TextFieldBuilder(
              title: 'اسم العميل',
            ),
            TextFieldBuilder(
              title: 'البلد',
            ),
            TextFieldBuilder(
              title: 'البريد الالكتروني',
            ),
            TextFieldBuilder(
              title: 'رقم الهاتف',
            ),
            TextFieldBuilder(
              title: 'اسم الشركة',
            ),
            TextFieldBuilder(
              title: 'نوع الخدمة',
            ),
            TextFieldBuilder(
              title: 'السوشيال ميديا',
            ),
            TextFieldBuilder(
              title: 'التاريخ واليوم',
            ),
            TextFieldBuilder(title: 'الوصف', maxLines: 3),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.h),
              child: CustomStepper(),
            ),
            Row(
              children: [
                CustomButton(
                  text: "متابعة آخري",
                  onTap: () {},
                ),
              ],
            ),
            Divider(
              color: Color(0xffEBEBEB),
              height: 25.h,
            ),
            TextFieldBuilder(
              title: 'التسعيره',
            ),
            Text(
              'درجة الاهتمام',
              style: context.f16500,
            ),
            GetBuilder<ShowTaskController>(
              initState: (_) {},
              builder: (_) {
                return Slider(
                  value: controller.sliderValue,
                  activeColor: AppColors.primaryColor,
                  min: 0,
                  max: 100,
                  divisions: 100,
                  label: "${controller.sliderValue.round()}%",
                  onChanged: (v) {
                    controller.changeSliderValue(v);
                  },
                );
              },
            ),
            Text(
              'طلب متابعة',
              style: context.f16500,
            ),
            Row(
              children: [
                Radio.adaptive(
                  value: "1",
                  groupValue: "1",
                  onChanged: (v) {},
                  activeColor: AppColors.primaryColor,
                ),
                Text('مهتم', style: context.f18600),
              ],
            ),
            Row(
              children: [
                Radio.adaptive(
                  value: "1",
                  groupValue: "",
                  onChanged: (v) {},
                  activeColor: AppColors.primaryColor,
                ),
                Text('غير مهتم', style: context.f18600),
              ],
            ),
            TextFieldBuilder(
              title: 'تاريخ المتابعة',
              suffixIcon: Icon(Icons.date_range, color: AppColors.primaryColor),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: CustomButton(text: "إنشاء", onTap: () {}),
      ),
    );
  }
}
