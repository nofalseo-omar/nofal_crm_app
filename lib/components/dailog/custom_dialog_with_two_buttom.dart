import 'package:nofal_crm_app/components/custom_button.dart';
import 'package:nofal_crm_app/components/custom_image_handler.dart';
import 'package:nofal_crm_app/core/localization/app_strings.dart';
import 'package:nofal_crm_app/core/theme/text_themes.dart';
import 'package:nofal_crm_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CustomDialogWithTwoBottom extends StatelessWidget {
  const CustomDialogWithTwoBottom({
    super.key,
    this.title1,
    this.title2,
    this.onTap1,
    this.onTap2,
    this.withBackIcon,
    this.image,
    this.isTwoButton,
    this.color1,
    this.backgroundColor1,
    this.message,
  });
  final String? title1, title2;
  final bool? withBackIcon;
  final void Function()? onTap1, onTap2;
  final String? image;
  final bool? isTwoButton;
  final Color? color1, backgroundColor1;
  final String? message;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        width: MediaQuery.of(context).size.width * .25,
        //  height: MediaQuery.of(context).size.height * .27,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(.1),
                  blurRadius: 6,
                  spreadRadius: -4,
                  offset: const Offset(0, 4)),
              BoxShadow(
                  color: Colors.black.withOpacity(.1),
                  blurRadius: 15,
                  spreadRadius: -3,
                  offset: const Offset(0, 10))
            ]),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              withBackIcon != null
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        GestureDetector(
                          onTap: () => Get.back(),
                          child: Align(
                            alignment: AlignmentDirectional.topStart,
                            child: Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                    color: const Color(0xffE8EFF5),
                                    borderRadius: BorderRadius.circular(12)),
                                child: const Icon(Icons.close)),
                          ),
                        ),
                      ],
                    )
                  : const SizedBox.shrink(),
              image != null
                  ? Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomImageHandler(image),
                        const SizedBox(height: 16),
                      ],
                    )
                  : const SizedBox.shrink(),
              Text(
                message ?? AppStrings.areYouSureShowTask.tr,
                style: context.f20700,
              ),
              const SizedBox(
                height: 24,
              ),
              Row(
                children: [
                  Expanded(
                      child: CustomButton(
                          text: title1 ?? '',
                          color: color1,
                          backgroundColor: backgroundColor1,
                          bordereColor: backgroundColor1,
                          onTap: () {
                            onTap1!();
                          })),
                  8.horizontalSpace,
                  isTwoButton != null
                      ? const SizedBox.shrink()
                      : Expanded(
                          child: CustomButton(
                              // color: AppColors.primaryColor,
                              backgroundColor: const Color(0xffE9EFF5),
                              bordereColor: const Color(0xffE9EFF5),
                              color: AppColors.blackColor,
                              text: title2 ?? '',
                              onTap: () {
                                Get.back();
                              })),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
