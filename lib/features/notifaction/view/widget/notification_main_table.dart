import 'package:nofal_crm_app/core/constants/app_images_path.dart';
import 'package:nofal_crm_app/features/notifaction/view/widget/notifiaction_row_widget.dart';
import 'package:flutter/material.dart';

class NotificationMainTable extends StatelessWidget {
  const NotificationMainTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: SingleChildScrollView(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
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
    );
  }
}
