import 'package:nofal_crm_app/core/constants/app_images_path.dart';
import 'package:nofal_crm_app/core/theme/text_themes.dart';
import 'package:nofal_crm_app/features/content_creator/home/view/widgets/table_widget/default_row_widget.dart';
import 'package:nofal_crm_app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SocialMediaTable extends StatelessWidget {
  const SocialMediaTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Card(
        margin: const EdgeInsets.all(0),
        color: const Color(0xffFfffff),
        child: SingleChildScrollView(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: const Icon(Icons.arrow_back_ios_rounded)),
                    Text('حالات السوشيال ميديا',
                        style: context.f20700
                            ?.copyWith(color: const Color(0xff020202))),
                    const Spacer(),
                    CircleAvatar(
                      backgroundColor: Colors.grey.shade300,
                      radius: 15.sp,
                      child: const Icon(
                        Icons.arrow_back,
                      ),
                    ),
                    SizedBox(width: 10.sp),
                    CircleAvatar(
                      radius: 15.sp,
                      child: const Icon(Icons.arrow_forward),
                    ),
                  ],
                ),
              ),
              ...List.generate(6, (i) {
                return GestureDetector(
                  onTap: () {
                    Get.toNamed(Routes.projectStatusScreen);
                  },
                  child: const DefaultRowWidget(
                    icon: AppImages.users,
                    title: 'فيس بوك',
                    tableItems: {
                      'عدد البوستات': '١٣ بوست',
                      "عدد الفيديوهات": "٢٧ صورة",
                      "عدد المقالات": "٢١ مقال"
                    },
                  ),
                );
              })
            ],
          ),
        ),
      ),
    );
  }
}
