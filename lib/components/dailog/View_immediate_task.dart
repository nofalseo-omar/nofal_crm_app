import 'package:nofal_crm_app/components/custom_image_handler.dart';
import 'package:nofal_crm_app/core/constants/app_images_path.dart';
import 'package:nofal_crm_app/core/theme/text_themes.dart';
import 'package:nofal_crm_app/core/utils/app_colors.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../image_gallery_widget.dart';

class ViewImmediateTaskDailog extends StatelessWidget {
  final bool? isView;
  const ViewImmediateTaskDailog({super.key, this.isView});

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
                    'عرض المهمة الفورية',
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
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    child: SingleChildScrollView(
                        child: RightSideWidget(isView: isView))),
                Expanded(
                    child: Container(
                  padding: const EdgeInsets.all(32),
                  decoration: const BoxDecoration(
                      color: Color(0xffE8F8FE),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(12),
                        //  bottomRight: Radius.circular(12),
                      )),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'موجه إلي',
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(height: 8),
                      ClipOval(
                        child: CustomImageHandler(AppImages.image,
                            height: 35, width: 35, fit: BoxFit.cover),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'مدة المهمة',
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 8),
                      Text(
                        '4 ساعات',
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ))
              ],
            ),
          )
        ],
      ),
    );
  }
}

class RightSideWidget extends StatefulWidget {
  final bool? isView;
  const RightSideWidget({super.key, this.isView});

  @override
  State<RightSideWidget> createState() => _RightSideWidgetState();
}

class _RightSideWidgetState extends State<RightSideWidget> {
  bool isExpanded = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                isExpanded = !isExpanded;
              });
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomImageHandler(
                    isExpanded ? AppImages.arrowUp : AppImages.arrowDown),
                const SizedBox(width: 8),
                Text(
                  'تفاصيل المهمة',
                  style: context.f18700,
                ),
              ],
            ),
          ),
          isExpanded ? const TaskDetailsWidget() : const SizedBox.shrink(),
          const TaskDetailsSentWidget(),
          const SizedBox(height: 32),
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
                    style: TextStyle(color: Colors.white, fontSize: 18.0)),
              ),
              const SizedBox(width: 12),
              widget.isView != null
                  ? ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            vertical: 15.0, horizontal: 30),
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            side:
                                const BorderSide(color: AppColors.primaryColor),
                            borderRadius: BorderRadius.circular(8.0)),
                      ),
                      child: const Text('إنشاء',
                          style: TextStyle(
                              color: AppColors.primaryColor, fontSize: 18.0)),
                    )
                  : const SizedBox.shrink(),
            ],
          )
        ],
      ),
    );
  }
}

class TaskDetailsWidget extends StatelessWidget {
  const TaskDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsetsDirectional.only(end: 62),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 24),
              ImageGalleryWidget(),
              SizedBox(height: 16),
              BuildTimeUnit(unit: 'العنوان', value: '10 دقيقة'),
              SizedBox(height: 16),
              BuildTimeUnit(unit: 'الوصف', value: '10 دقيقة', height: 100),
              SizedBox(height: 16),
              BuildTimeUnit(unit: 'العنوان', value: '10 دقيقة'),
              SizedBox(height: 16),
            ],
          ),
        ),
        Divider(),
        SizedBox(height: 16),
      ],
    );
  }
}

class TaskDetailsSentWidget extends StatefulWidget {
  const TaskDetailsSentWidget({super.key});

  @override
  State<TaskDetailsSentWidget> createState() => _TaskDetailsSentWidgetState();
}

class _TaskDetailsSentWidgetState extends State<TaskDetailsSentWidget> {
  bool isExpanded = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              isExpanded = !isExpanded;
            });
          },
          child: Row(
            children: [
              CustomImageHandler(
                  isExpanded ? AppImages.arrowUp : AppImages.arrowDown),
              const SizedBox(width: 8),
              const SizedBox(width: 8),
              Text('تفاصيل المهمة المرسلة', style: context.f18700),
            ],
          ),
        ),
        isExpanded
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 16),
                  const Divider(),
                  const SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(end: 62),
                    child: Column(
                      children: [
                        DottedBorder(
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text('إضغط هنا للإرفاق أو',
                                            style: context.f18600!.copyWith(
                                                color:
                                                    const Color(0xff4B5563))),
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
                                          borderRadius:
                                              BorderRadius.circular(12),
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
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('الوصف', style: context.f20700),
                            const SizedBox(height: 12),
                            Container(
                              width: double.infinity,
                              height: 150,
                              padding: const EdgeInsets.all(11),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.transparent,
                                border: Border.all(
                                    width: 1, color: const Color(0xffB0B0B0)),
                              ),
                              child: Text(
                                'اكتب الوصف هنا',
                                style: context.f18600!
                                    .copyWith(color: const Color(0xffB0B0B0)),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              )
            : const SizedBox.shrink(),
      ],
    );
  }
}

class BuildTimeUnit extends StatelessWidget {
  const BuildTimeUnit({
    super.key,
    required this.unit,
    required this.value,
    this.backColor,
    this.height,
  });

  final String unit;
  final String value;
  final Color? backColor;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(unit,
            style: context.f18700!.copyWith(color: AppColors.blackColor)),
        const SizedBox(height: 8),
        Container(
          width: double.infinity,
          height: height ?? 60,
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
          decoration: BoxDecoration(
            color: backColor ?? const Color(0xffF7F7F7),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(
            value,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}

class ItemContainerWidget extends StatelessWidget {
  const ItemContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
      ),
    );
  }
}
