import 'package:nofal_crm_app/components/textFields/custom_text_field.dart';
import 'package:nofal_crm_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nofal_crm_app/features/marketing_manger_feature/dailgoes/sub_compontets/pick_user.dart';

import '../custom_border_container.dart';
import '../developer_drawer_widget.dart';
import '../image_gallery_widget.dart';

class AddContentCreatorDialog extends StatelessWidget {
  const AddContentCreatorDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.8,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
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
            Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 16.0),
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const ImageGalleryWidget(),
                          const Spacer(),
                          CustomBorderContainer(
                              containerColor:
                                  AppColors.primaryColor.withOpacity(0.1),
                              child: const Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Icon(
                                          Icons.circle,
                                          color: Colors.green,
                                          size: 14,
                                        ),
                                        SizedBox(width: 8),
                                        Text(
                                          'متصل لفترة',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 16),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          BuildTimeUnit(
                                              backColor: AppColors.whiteColor,
                                              unit: 'ثانية',
                                              value: '17'),
                                          BuildTimeUnit(
                                              backColor: AppColors.whiteColor,
                                              unit: 'دقيقة',
                                              value: '34'),
                                          BuildTimeUnit(
                                              backColor: AppColors.whiteColor,
                                              unit: 'ساعة',
                                              value: '04')
                                        ])
                                  ]))
                        ]),
                    const SizedBox(height: 45.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                              const Text(
                                'العنوان الرئيسي',
                                style: TextStyle(fontWeight: FontWeight.bold),
                                textAlign: TextAlign.right,
                              ),
                              const SizedBox(height: 8),
                              TextFieldComponent(
                                  hintText: 'اكتب العنوان الرئيسي هنا')
                            ])),
                        const SizedBox(width: 8),
                        const Expanded(
                            child: DropDownUserItemWidget(
                          dropdownItems: [
                            "hassan",
                            "ahmed",
                          ],
                        )),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const Text('الوصف',
                              style: TextStyle(fontWeight: FontWeight.bold),
                              textAlign: TextAlign.right),
                          const SizedBox(height: 8),
                          TextFieldComponent(
                              hintText: 'اكتب الوصف هنا', maxlines: 4)
                        ]),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            const Text('التون فويس',
                                style: TextStyle(fontWeight: FontWeight.bold),
                                textAlign: TextAlign.right),
                            const SizedBox(height: 8),
                            TextFieldComponent(hintText: 'اكتب النوع هنا'),
                          ],
                        )),
                        const SizedBox(width: 8),
                        const Expanded(
                            child: DropDownUserItemWidget(
                          dropdownItems: [
                            "hassan",
                            "ahmed",
                          ],
                        )),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            const Text(
                              'النص المستخدم بالصورة',
                              style: TextStyle(fontWeight: FontWeight.bold),
                              textAlign: TextAlign.right,
                            ),
                            const SizedBox(height: 8),
                            TextFieldComponent(hintText: 'اكتب النوع هنا'),
                          ],
                        )),
                        const SizedBox(width: 8),
                        Expanded(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            const Text(
                              'لينك',
                              style: TextStyle(fontWeight: FontWeight.bold),
                              textAlign: TextAlign.right,
                            ),
                            const SizedBox(height: 8),
                            TextFieldComponent(hintText: 'ضع اللينك هنا'),
                          ],
                        )),
                      ],
                    ),
                    const SizedBox(height: 24),
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
                ))
          ],
        ),
      ),
    );
  }
}
