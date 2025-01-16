// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:nofal_crm_app/components/custom_button.dart';
import 'package:nofal_crm_app/core/theme/text_themes.dart';
import 'package:nofal_crm_app/core/utils/app_colors.dart';
import 'package:nofal_crm_app/features/content_creator/social_media_status/view/screen/social_media_status_screen.dart';
import 'package:nofal_crm_app/features/sales/customer_comapny/logic/controller/add_customer_controller.dart';
import 'package:nofal_crm_app/features/sales/customer_comapny/view/widget/text_field_builder.dart';

class AddCustomer extends GetView<AddCustomerController> {
  const AddCustomer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, "إضافة عميل"),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        children: [
          TextFieldBuilder(
            title: 'اسم العميل',
            controller: controller.name,
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
            title: 'التسعيره',
          ),
          TextFieldBuilder(
            title: 'الوصف',
            maxLines: 5,
          ),
          Text(
            'درجة الاهتمام',
            style: context.f16500,
          ),
          GetBuilder<AddCustomerController>(
            id: "slider",
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
          GetBuilder<AddCustomerController>(
            id: 'radio1',
            builder: (_) {
              return Column(
                children: [
                  Row(
                    children: [
                      Radio.adaptive(
                        value: "1",
                        groupValue: controller.radio1,
                        onChanged: (v) {
                          controller.setRadio1(v!);
                        },
                        activeColor: AppColors.primaryColor,
                      ),
                      Text('مهتم جدا', style: context.f18600),
                    ],
                  ),
                  Row(
                    children: [
                      Radio.adaptive(
                        value: "2",
                        groupValue: controller.radio1,
                        onChanged: (v) {
                          controller.setRadio1(v!);
                        },
                        activeColor: AppColors.primaryColor,
                      ),
                      Text('مهتم', style: context.f18600),
                    ],
                  ),
                  Row(
                    children: [
                      Radio.adaptive(
                        value: "3",
                        groupValue: controller.radio1,
                        onChanged: (v) {
                          controller.setRadio1(v!);
                        },
                        activeColor: AppColors.primaryColor,
                      ),
                      Text('غير مهتم', style: context.f18600),
                    ],
                  ),
                ],
              );
            },
          ),
          Text(
            'طلب متابعة',
            style: context.f16500,
          ),
          GetBuilder<AddCustomerController>(
            id: "radio2",
            builder: (_) {
              return Column(
                children: [
                  Row(
                    children: [
                      Radio.adaptive(
                        value: "1",
                        groupValue: controller.radio2,
                        onChanged: (v) {
                          controller.setRadio2(v!);
                        },
                        activeColor: AppColors.primaryColor,
                      ),
                      Text('مهتم', style: context.f18600),
                    ],
                  ),
                  Row(
                    children: [
                      Radio.adaptive(
                        value: "2",
                        groupValue: controller.radio2,
                        onChanged: (v) {
                          controller.setRadio2(v!);
                        },
                        activeColor: AppColors.primaryColor,
                      ),
                      Text('غير مهتم', style: context.f18600),
                    ],
                  ),
                ],
              );
            },
          ),
          TextFieldBuilder(
            title: 'تاريخ المتابعة',
            suffixIcon: Icon(Icons.date_range, color: AppColors.primaryColor),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: CustomButton(text: "إنشاء", onTap: () {}),
      ),
    );
  }
}
