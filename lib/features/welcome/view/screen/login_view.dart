import 'package:nofal_crm_app/components/custom_image_handler.dart';
import 'package:nofal_crm_app/components/textFields/custom_text_field.dart';
import 'package:nofal_crm_app/core/constants/app_images_path.dart';
import 'package:nofal_crm_app/core/localization/app_strings.dart';
import 'package:nofal_crm_app/core/theme/text_themes.dart';
import 'package:nofal_crm_app/core/utils/app_colors.dart';
import 'package:nofal_crm_app/core/utils/app_validation_functions.dart';
import 'package:nofal_crm_app/features/welcome/logic/controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(AppImages.login),
            ),
            gradient: LinearGradient(colors: [
              Color(0xff003465),
              Color(0xff0085FF),
              Color(0xff003465)
            ])),
        child: Container(
          margin: EdgeInsets.symmetric(
              vertical: (Get.height * 0.2), horizontal: Get.width * 0.3),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Colors.white24,
          ),
          child: Form(
            key: controller.formKey,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: context.width * .07,
                      vertical: 16,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Align(
                          alignment: Alignment.center,
                          child: CustomImageHandler(
                            AppImages.logo,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          AppStrings.login.tr,
                          style: context.f24700!.copyWith(color: Colors.white),
                        ),
                        const SizedBox(height: 20),
                        Text(AppStrings.email.tr,
                            style: Get.textTheme.titleSmall!
                                .copyWith(color: AppColors.whiteColor)),
                        6.verticalSpace,
                        TextFieldComponent(
                          // fillColor: AppColors.w,
                          hintText: AppStrings.email.tr,
                          fillColor: AppColors.whiteColor,

                          keyboardType: TextInputType.emailAddress,
                          controller: controller.emailController,
                          validator:
                              AppValidationFunctions.emailValidationFunction,
                        ),
                        24.verticalSpace,
                        Text(
                          AppStrings.password.tr,
                          style: Get.textTheme.titleSmall!.copyWith(
                            color: AppColors.whiteColor,
                          ),
                        ),
                        6.verticalSpace,
                        TextFieldComponent(
                          hasShowPasswordIcon: true,
                          onSubmit: (s) async {
                            await controller.login();
                          },
                          hintText: AppStrings.password.tr,
                          fillColor: AppColors.whiteColor,
                          controller: controller.passwordController,
                          validator:
                              AppValidationFunctions.passwordValidationFunction,
                        ),
                        40.verticalSpace,
                        ElevatedButton(
                          onPressed: () async {
                            await controller.login();
                          },
                          style: ElevatedButton.styleFrom(
                            fixedSize: Size(context.width, 56),
                            backgroundColor: const Color(0xff1CB9F7),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: Text(
                            AppStrings.signIn.tr,
                            style:
                                context.f24700!.copyWith(color: Colors.white),
                          ),
                        ),
                        const Spacer(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
