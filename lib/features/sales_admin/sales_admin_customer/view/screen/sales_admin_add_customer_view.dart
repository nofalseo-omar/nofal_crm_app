// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nofal_crm_app/components/custom_button.dart';
import 'package:nofal_crm_app/core/utils/app_colors.dart';
import 'package:nofal_crm_app/features/content_creator/social_media_status/view/screen/social_media_status_screen.dart';
import 'package:nofal_crm_app/features/sales/customer_comapny/view/widget/text_field_builder.dart';

class SalesAdminAddCustomerView extends StatelessWidget {
  const SalesAdminAddCustomerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, "إضافة عميل"),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
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
                title: 'السوشيال ميديا',
              ),
              TextFieldBuilder(
                title: 'تاريخ المتابعة',
                suffixIcon: Icon(
                  Icons.date_range,
                  color: AppColors.primaryColor,
                ),
              ),
              TextFieldBuilder(
                title: 'الوصف',
                maxLines: 5,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20.w,
          vertical: 20.h,
        ),
        child: CustomButton(
          text: "إنشاء",
          onTap: () {},
        ),
      ),
    );
  }
}
