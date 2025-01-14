// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:nofal_crm_app/components/custom_image_handler.dart';
import 'package:nofal_crm_app/core/theme/text_themes.dart';
import 'package:nofal_crm_app/core/utils/app_colors.dart';
import 'package:nofal_crm_app/features/messages_feature/screen/widgets/message_builder.dart';
import 'package:nofal_crm_app/features/messages_feature/screen/widgets/message_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ConversationBuilder extends StatelessWidget {
  const ConversationBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height,
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(14.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.02),
            spreadRadius: -3,
            blurRadius: 6,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: Expanded(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                reverse: true,
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                itemBuilder: (context, index) => MessageBuilder(
                  isMe: index % 2 == 0,
                  message:
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
                  image:
                      'https://images.pexels.com/photos/1222271/pexels-photo-1222271.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                  time: '12:00',
                ),
                itemCount: 30,
              ),
            ),
            MessageTextField(),
          ],
        ),
      ),
    );
  }
}
