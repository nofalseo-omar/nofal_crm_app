// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:nofal_crm_app/components/custom_app_widget.dart';
import 'package:nofal_crm_app/features/content_creator/social_media_status/view/screen/social_media_status_screen.dart';

import 'package:nofal_crm_app/features/messages_feature/screen/widgets/conversation_builder.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nofal_crm_app/features/messages_feature/screen/widgets/messages_list.dart';

class MessagesListScreen extends StatelessWidget {
  const MessagesListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, "الرسائل"),
      // backgroundColor: Color.fromRGBO(0, 45, 13, 0.05),
      body: MessagesList(),
    );
  }
}
