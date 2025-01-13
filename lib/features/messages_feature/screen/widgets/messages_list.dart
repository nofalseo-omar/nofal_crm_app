import 'package:nofal_crm_app/components/textFields/custom_text_field.dart';
import 'package:nofal_crm_app/core/theme/text_themes.dart';
import 'package:nofal_crm_app/core/utils/app_colors.dart';
import 'package:nofal_crm_app/features/marketing_manger_feature/dailgoes/add_immediate_task_dialog.dart';
import 'package:nofal_crm_app/features/messages_feature/screen/widgets/message_list_item_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:nofal_crm_app/routes/app_routes.dart';

class MessagesList extends StatelessWidget {
  const MessagesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height,
      // width: Get.width * 0.21,
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
      child: SingleChildScrollView(
        // padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: TextFieldComponent(
                hintText: 'ابحث',
                fillColor: Color(0xffE6E6EA).withOpacity(0.20),
                borderColor: Color(0xffE6E6EA).withOpacity(0.20),
                // radius: 4.r,
                validator: (String) {},
              ),
            ),
            SizedBox(height: 20.h),
            ...List.generate(
              20,
              (index) => GestureDetector(
                onTap: () => Get.toNamed(Routes.messagesScreen),
                child: MessageListItemBuilder(
                  image:
                      'https://images.pexels.com/photos/1222271/pexels-photo-1222271.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                  name: "أسامة حسن",
                  backgroundColor:
                      index % 2 == 0 ? Color(0xffEDF3F8) : AppColors.whiteColor,
                  last_message: "شوف السيرفر تاني",
                  time: DateTime.now(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
