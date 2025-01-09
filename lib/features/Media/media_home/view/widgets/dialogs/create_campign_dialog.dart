import 'package:nofal_crm_app/components/dailog/add_content_creator_dailog.dart';
import 'package:nofal_crm_app/components/text_field_component.dart';
import 'package:nofal_crm_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateCampignDialog extends StatelessWidget {
  const CreateCampignDialog({super.key});

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
                    const SizedBox(height: 45.0),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                              Text(
                                'اسم الحملة',
                                style: TextStyle(fontWeight: FontWeight.bold),
                                textAlign: TextAlign.right,
                              ),
                              SizedBox(height: 8),
                              CustomTextField(
                                  hintText: 'اكتب عدد أعمال مرحلة الوعي')
                            ])),
                        SizedBox(width: 8),
                        Expanded(
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                              Text(
                                'اسم المشروع',
                                style: TextStyle(fontWeight: FontWeight.bold),
                                textAlign: TextAlign.right,
                              ),
                              SizedBox(height: 8),
                              CustomTextField(
                                  hintText: 'اكتب عدد أعمال مرحلة الوعي')
                            ])),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Expanded(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            const Text('السوشيال ميديا',
                                style: TextStyle(fontWeight: FontWeight.bold),
                                textAlign: TextAlign.right),
                            const SizedBox(height: 8),
                            Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0, vertical: 15.0),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black12, width: 1),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('فيس بوك',
                                          style: TextStyle(fontSize: 16.0)),
                                      Icon(Icons.arrow_drop_down),
                                    ])),
                          ],
                        )),
                        const SizedBox(width: 8),
                        Expanded(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            const Text('تاريخ الإنشاء',
                                style: TextStyle(fontWeight: FontWeight.bold),
                                textAlign: TextAlign.right),
                            const SizedBox(height: 8),
                            TextFieldComponent(
                                onPress: () {
                                  showDatePicker(
                                      context: context,
                                      initialDate: DateTime.now(),
                                      firstDate: DateTime.now()
                                          .subtract(const Duration(days: 365)),
                                      lastDate: DateTime.now()
                                          .add(const Duration(days: 365)));
                                },
                                fillColor: AppColors.bgGrey,
                                isReadOnly: true,
                                controller: TextEditingController(),
                                hintTextStyle: const TextStyle(
                                    color: AppColors.blackColor),
                                hint: '٢٤-٢-٢٠٢٤'),
                          ],
                        )),
                      ],
                    ),
                    const SizedBox(height: 16),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(width: 8),
                        Expanded(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text('اسم البوست',
                                style: TextStyle(fontWeight: FontWeight.bold),
                                textAlign: TextAlign.right),
                            SizedBox(height: 8),
                            CustomTextField(
                                hintText: 'اكتب عدد أعمال مرحلة الوعي')
                          ],
                        )),
                        Expanded(child: SizedBox())
                      ],
                    ),
                    const SizedBox(height: 16),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              'الهدف',
                              style: TextStyle(fontWeight: FontWeight.bold),
                              textAlign: TextAlign.right,
                            ),
                            SizedBox(height: 8),
                            CustomTextField(
                                maxLines: 5, hintText: 'آكتب الوصف هنا'),
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
