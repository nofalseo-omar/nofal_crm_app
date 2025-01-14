// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nofal_crm_app/components/custom_image_handler.dart';
import 'package:nofal_crm_app/core/theme/text_themes.dart';
import 'package:nofal_crm_app/features/messages_feature/screen/widgets/conversation_builder.dart';
import 'package:flutter/material.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromRGBO(0, 45, 13, 0.05),
      appBar: AppBar(
        title: Row(
          children: [
            ClipOval(
              child: CustomImageHandler(
                'https://images.pexels.com/photos/1222271/pexels-photo-1222271.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                fit: BoxFit.cover,
                width: 30.sp,
                height: 30.sp,
              ),
            ),
            10.horizontalSpace,
            Text(
              "أحمد حسن",
              style: context.f20500,
            )
          ],
        ),
      ),
      body: ConversationBuilder(),
    );
  }
}
