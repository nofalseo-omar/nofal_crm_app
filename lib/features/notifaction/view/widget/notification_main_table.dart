import 'package:nofal_crm_app/core/constants/app_images_path.dart';
import 'package:nofal_crm_app/core/theme/text_themes.dart';
import 'package:nofal_crm_app/features/notifaction/view/widget/notifiaction_row_widget.dart';
import 'package:flutter/material.dart';

class NotificationMainTable extends StatelessWidget {
  const NotificationMainTable({super.key});

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
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
                child: Row(
                  children: [
                    Text('الإشعارات',
                        style: context.f20500
                            ?.copyWith(color: const Color(0xff020202))),
                    const Spacer(),
                    Text('مسح الكل',
                        style: context.f20500
                            ?.copyWith(color: const Color(0xffD20000))),
                  ],
                ),
              ),
              ...List.generate(6, (i) {
                return GestureDetector(
                  onTap: () {},
                  child: NotifiactionRowWidget(
                    title: 'مرحلة الوعي',
                    icon: image,
                    time: '٢:٣٧ م',
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
