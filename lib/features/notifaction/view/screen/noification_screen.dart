import 'package:nofal_crm_app/features/content_creator/social_media_status/view/screen/social_media_status_screen.dart';
import 'package:nofal_crm_app/features/notifaction/view/widget/notification_main_table.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, 'الاشعارات'),
      // backgroundColor: Color.fromRGBO(0, 45, 13, 0.05),
      body: const NotificationMainTable(),
    );
  }
}
