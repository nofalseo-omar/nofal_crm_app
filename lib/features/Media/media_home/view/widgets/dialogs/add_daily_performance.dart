import 'package:nofal_crm_app/components/text_field_component.dart';
import 'package:nofal_crm_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddDailyPerformance extends StatelessWidget {
  const AddDailyPerformance({super.key});

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
                    'إضافة الاداء اليومي',
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                              const Text(
                                'عدد الإنفاق اليومي',
                                style: TextStyle(fontWeight: FontWeight.bold),
                                textAlign: TextAlign.right,
                              ),
                              const SizedBox(height: 8),
                              TextFieldComponent(
                                  hintText: 'اكتب عدد أعمال مرحلة الوعي')
                            ])),
                        const SizedBox(width: 8),
                        Expanded(
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                              const Text(
                                'التكلفة لكل نقرة',
                                style: TextStyle(fontWeight: FontWeight.bold),
                                textAlign: TextAlign.right,
                              ),
                              const SizedBox(height: 8),
                              TextFieldComponent(
                                  hintText: 'اكتب عدد أعمال مرحلة الوعي')
                            ])),
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
                                'نسبة النقرات الي عدد المشاهدات (CTR)',
                                style: TextStyle(fontWeight: FontWeight.bold),
                                textAlign: TextAlign.right,
                              ),
                              const SizedBox(height: 8),
                              TextFieldComponent(
                                  hintText: 'اكتب نسبة النقرات (CTR)')
                            ])),
                        const SizedBox(width: 8),
                        Expanded(
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                              const Text(
                                ' عدد المشاهدات ',
                                style: TextStyle(fontWeight: FontWeight.bold),
                                textAlign: TextAlign.right,
                              ),
                              const SizedBox(height: 8),
                              TextFieldComponent(hintText: 'اكتب عدد المشاهدات')
                            ])),
                      ],
                    ),
                    const SizedBox(height: 16),

                    ///
                    Row(
                      children: [
                        Expanded(
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                              const Text(
                                'العملاء الجدد',
                                style: TextStyle(fontWeight: FontWeight.bold),
                                textAlign: TextAlign.right,
                              ),
                              const SizedBox(height: 8),
                              TextFieldComponent(
                                  hintText: 'اكتب عدد العملاء الجدد')
                            ])),
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
                                fillColor: AppColors.bgGrey.withOpacity(0.5),
                                isReadOnly: true,
                                controller: TextEditingController(),
                                hintTextStyle: const TextStyle(
                                    color: AppColors.blackColor),
                                hintText: '٢٤-٢-٢٠٢٤'),
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
                          child: const Text('إضافة',
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
