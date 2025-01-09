import 'package:nofal_crm_app/components/custom_border_container.dart';
import 'package:nofal_crm_app/components/custom_image_handler.dart';
import 'package:nofal_crm_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:gauge_indicator/gauge_indicator.dart';
import 'package:get/get.dart';

import '../core/constants/app_images_path.dart';

class DeveloperHomeDrawerWidget extends StatelessWidget {
  const DeveloperHomeDrawerWidget({super.key});

  @override

  Widget build(BuildContext context) {
    var currentWidth = Get.width;
    return true
        ? Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  if (currentWidth > 1100) ...[
                    const CustomBorderContainer(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
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
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 16),
                          FittedBox(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                BuildTimeUnit(unit: 'ثانية', value: '17'),
                                SizedBox(width: 8),
                                BuildTimeUnit(unit: 'دقيقة', value: '34'),
                                SizedBox(width: 8),
                                BuildTimeUnit(unit: 'ساعة', value: '04'),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 16)
                  ],
                  CustomBorderContainer(
                    child: Column(
                      children: [
                        currentWidth > 1200
                            ? Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 8, horizontal: 16),
                                decoration: BoxDecoration(
                                  color: AppColors.lightBlue.withOpacity(.1),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'الإحصائيات',
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: AppColors.bgGrey,
                                          ),
                                        ),
                                        SizedBox(height: 4),
                                        Text(
                                          'تسكاتي',
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    CircleAvatar(
                                        backgroundColor:
                                            Color.fromRGBO(0, 82, 115, 0.1),
                                        child: CustomImageHandler(
                                            AppImages.archive))
                                  ],
                                ),
                              )
                            : const SizedBox(),
                        Column(
                          children: [
                            const SizedBox(height: 20),
                            CircleAvatar(
                              backgroundColor:
                                  AppColors.lightBlue.withOpacity(.1),
                              radius: 140,
                              child: const AimatedCirclePrecentaeWidget(),
                            ),
                            const SizedBox(height: 20),
                            Wrap(
                              spacing: 8,
                              runSpacing: 8,
                              children: List.generate(
                                4,
                                (index) => const TotalTasksCard(),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        : const SizedBox.shrink();
  }
}

class BuildTimeUnit extends StatelessWidget {
  const BuildTimeUnit({
    super.key,
    required this.unit,
    required this.value,
    this.backColor,
    this.controller,
    this.onChange,
  });

  final String unit;
  final String value;
  final Color? backColor;
  final TextEditingController? controller;
  final Function(String?)? onChange;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      decoration: BoxDecoration(
        color: backColor ?? AppColors.lightBlue.withOpacity(.1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Text(
            unit,
            style: const TextStyle(
              fontSize: 14,
              color: Color(0xff8A8A8A),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            value,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}

class TotalTasksCard extends StatelessWidget {
  final String? title, subTitle;
  final Color? color1, color2;
  const TotalTasksCard(
      {super.key, this.title, this.subTitle, this.color1, this.color2});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color2 ?? Colors.blue.shade50,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FittedBox(
            child: Text(
              title ?? 'مجموع المهام',
              style: const TextStyle(
                fontSize: 14,
                color: Colors.grey,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 4,
                height: 32,
                decoration: BoxDecoration(
                  color: color1 ?? Colors.blue,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              const SizedBox(width: 8),
              Text(
                subTitle ?? '15',
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class AimatedCirclePrecentaeWidget extends StatelessWidget {
  const AimatedCirclePrecentaeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedRadialGauge(
      /// The animation duration.
      duration: const Duration(seconds: 1),
      curve: Curves.elasticOut,
      radius: 100,
      value: 70,
      axis: const GaugeAxis(
          min: 0,
          max: 100,
          degrees: 320,
          style: GaugeAxisStyle(
              thickness: 20,
              background: AppColors.whiteColor,
              segmentSpacing: 4,
              cornerRadius: Radius.circular(20)),
          pointer: GaugePointer.needle(
              borderRadius: 20, width: 0, height: 0, color: Colors.red),
          progressBar: GaugeProgressBar.rounded(
            color: AppColors.primaryColor,
          ),
          segments: [
            GaugeSegment(
              from: 0,
              to: 33.3,
              color: AppColors.whiteColor,
              cornerRadius: Radius.zero,
            ),
            GaugeSegment(
              from: 33.3,
              to: 66.6,
              color: AppColors.whiteColor,
              cornerRadius: Radius.zero,
            ),
            GaugeSegment(
              from: 66.6,
              to: 100,
              color: AppColors.whiteColor,
              cornerRadius: Radius.zero,
            ),
          ]),
      child: const Center(
        child: CircleAvatar(
          backgroundColor: Colors.white,
          radius: 40,
          child: Text(
            '% 70',
            style: TextStyle(fontSize: 25, color: Colors.black),
          ),
        ),
      ),
      builder: (context, child, value) => child ?? const Text('70 %'),
    );
  }
}
//add content creator task