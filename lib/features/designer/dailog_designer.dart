import 'package:nofal_crm_app/core/theme/text_themes.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../components/textFields/custom_text_field.dart';
import '../../core/constants/app_images_path.dart';

import '../../core/utils/app_colors.dart';

class AddTaskForDesignerDialog extends StatelessWidget {
  const AddTaskForDesignerDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.7,
      height: MediaQuery.sizeOf(context).height * 0.9,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            elevation: 4,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
            )),
            margin: const EdgeInsets.only(bottom: 1),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                color: const Color(0xffE8F8FE).withOpacity(0.5),
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'إنشاء مهمة جديدة',
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: () => Get.back()),
                ],
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'الصور',
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 16),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.4,
                      child: DottedBorder(
                        color: const Color(0xffD2D5DA),
                        strokeWidth: 1,
                        borderType: BorderType.RRect,
                        radius: const Radius.circular(12),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(24),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(Icons.arrow_back),
                                  const SizedBox(height: 16),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('إضغط هنا للإرفاق أو',
                                          style: context.f18600!.copyWith(
                                              color: const Color(0xff4B5563))),
                                      Text('التحميل',
                                          style: context.f18600!.copyWith(
                                              color: AppColors.primaryColor)),
                                    ],
                                  ),
                                  const SizedBox(height: 16),
                                  Text('أقصي حجم: 5GB',
                                      style: context.f18600!.copyWith(
                                          color: const Color(0xff4B5563))),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    SizedBox(
                      height: 60,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) =>
                            const SizedBox(width: 8),
                        itemBuilder: (context, index) => index != 4
                            ? ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.asset(
                                  AppImages.image,
                                  width: 60,
                                  height: 60,
                                  fit: BoxFit.cover,
                                ),
                              )
                            : Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Image.asset(
                                      AppImages.image,
                                      width: 60,
                                      height: 60,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Container(
                                    width: 60,
                                    height: 60,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: const Color(0xff000000)
                                          .withOpacity(0.5),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Text('+2',
                                        style: context.f18600!
                                            .copyWith(color: Colors.white)),
                                  )
                                ],
                              ),
                        itemCount: 5,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('العنوان الرئيسي', style: context.f18700),
                              const SizedBox(height: 12),
                              TextFieldComponent(
                                hintText: 'ابحث',
                                withBorder: false,
                                fillColor: const Color(0xffF7F7F7),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 32),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('رقم البوست', style: context.f18700),
                              const SizedBox(height: 12),
                              TextFieldComponent(
                                hintText: 'ابحث',
                                withBorder: false,
                                fillColor: const Color(0xffF7F7F7),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('الوصف', style: context.f18700),
                        const SizedBox(height: 12),
                        TextFieldComponent(
                          hintText: 'ابحث',
                          withBorder: false,
                          maxlines: 4,
                          fillColor: const Color(0xffF7F7F7),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                vertical: 15.0, horizontal: 30),
                            backgroundColor: Colors.lightBlue,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0)),
                          ),
                          child: const Text('إنشاء',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 18.0)),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
