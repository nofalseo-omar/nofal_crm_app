import 'package:nofal_crm_app/components/textFields/custom_text_field.dart';
import 'package:nofal_crm_app/core/theme/text_themes.dart';
import 'package:nofal_crm_app/core/utils/app_colors.dart';
import 'package:nofal_crm_app/features/messages_feature/screen/widgets/message_list_item_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MessagesList extends StatelessWidget {
  const MessagesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height,
      width: Get.width * 0.21,
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
      child: ListView(
        shrinkWrap: true,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(20.w, 29.h, 20.w, 0),
            child: Row(
              children: [
                Text("الرسائل", style: context.f20500),
                8.horizontalSpace,
                CircleAvatar(
                  radius: 15.r,
                  backgroundColor: AppColors.grey2,
                  child: const Text('3'),
                ),
              ],
            ),
          ),
          Divider(
            height: 25.h,
            thickness: 1,
            color: AppColors.black2Color.withOpacity(0.10),
          ),
          SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              children: [
                TextFieldComponent(
                  hintText: 'ابحث',
                  fillColor: AppColors.lightwhiteColor,
                  borderColor: AppColors.lightwhiteColor,
                  radius: 4.r,
                ),
                20.verticalSpace,
                ...List.generate(
                  20,
                  (index) => const MessageListItemBuilder(
                    image:
                        'https://images.pexels.com/photos/1222271/pexels-photo-1222271.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                    name: "test name with long option",
                    last_message: "test message with long message as an option",
                    time: '10:00',
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
