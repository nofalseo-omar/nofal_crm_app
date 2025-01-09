import 'package:nofal_crm_app/core/constants/app_images_path.dart';
import 'package:nofal_crm_app/core/theme/text_themes.dart';
import 'package:nofal_crm_app/features/content_creator/home/view/widgets/table_widget/default_row_widget.dart';
import 'package:nofal_crm_app/features/content_creator/home/view/widgets/table_widget/users_view_circles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainTable extends StatelessWidget {
  const MainTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
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
                    Text('المشاريع ',
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
                return DefaultRowWidget(
                  icon: AppImages.users,
                  title: 'العملات الرقمية',
                  tableItems: const {
                    'تم الإنشاء في:': '١ مايو ٢٠٢٣',
                    "عدد الصور": "٢٧ صورة",
                    "عدد المقالات": "٢١ مقال",
                    "عدد البوستات": "١٣ بوست",
                    "": "",
                  },
                  trillingWidget: const TableUsersCirclesItem(
                      title: 'تمت المشاركة مع:',
                      users: [
                        'https://i.pravatar.cc/300?img=1',
                        'https://i.pravatar.cc/300?img=2',
                        'https://i.pravatar.cc/300?img=3',
                        'https://i.pravatar.cc/300?img=4'
                      ]),
                  showMore: () {},
                );
              })
            ],
          ),
        ),
      ),
    );
  }
}
