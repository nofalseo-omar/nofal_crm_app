// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:nofal_crm_app/components/buttons/custom_back_button.dart';
import 'package:nofal_crm_app/core/theme/text_themes.dart';
import 'package:nofal_crm_app/core/utils/app_colors.dart';

class AppBarComponent extends StatelessWidget {
  const AppBarComponent(
      {super.key, required this.title, this.hasBackButton = true});
  final title;
  final bool hasBackButton;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      // toolbarHeight: 140.h,
      backgroundColor: AppColors.whiteColor,
      leading: hasBackButton
          ? const Padding(
              padding: EdgeInsetsDirectional.only(start: 10, top: 5, bottom: 5),
              child: CustomBackButtonWidget(
                size: 16,
                height: 50,
                color: AppColors.lightGray,
              ),
            )
          : null,
      leadingWidth: 50,
      toolbarHeight: 60,
      title: Text(
        title,
        style:
            context.f24700!.copyWith(fontWeight: FontWeight.w500, fontSize: 24),
      ),
      centerTitle: true,
      bottom: const PreferredSize(
          preferredSize: Size.fromHeight(15), child: SizedBox()),
    );
  }
}
