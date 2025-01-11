import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:nofal_crm_app/components/custom_image_handler.dart';
import 'package:nofal_crm_app/components/textFields/custom_text_field.dart';
import 'package:nofal_crm_app/core/constants/app_images_path.dart';
import 'package:nofal_crm_app/core/theme/text_themes.dart';
import 'package:nofal_crm_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nofal_crm_app/features/content_creator/home/widgets/status_widget/connection_duration_widget.dart';
import 'package:nofal_crm_app/features/marketing_manger_feature/dailgoes/sub_compontets/pick_user.dart';

import '../custom_border_container.dart';
import '../developer_drawer_widget.dart';
import '../image_gallery_widget.dart';

class AddContentCreatorDialog extends StatelessWidget {
  const AddContentCreatorDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "مهمة جديدة",
          style: context.f20500,
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const CustomImageHandler(
              AppImages.menu2,
              color: AppColors.blackColor,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 16.0),
              const ConnectionDurationWidget(),
              const ImageGalleryWidget(),
              // Image and Status Section

              const SizedBox(height: 24.0),

              // Main Title Section
              const Text(
                'العنوان الرئيسي',
                style: TextStyle(fontWeight: FontWeight.bold),
                textAlign: TextAlign.right,
              ),
              const SizedBox(height: 8),
              TextFieldComponent(hintText: 'اكتب العنوان الرئيسي هنا'),

              // Dropdown Section
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: DropDownUserItemWidget(
                  title: "رقم البوست",
                  images: [],
                  dropdownItems: ["3", "2", "1"],
                ),
              ),

              // Description Section
              const Text(
                'الوصف',
                style: TextStyle(fontWeight: FontWeight.bold),
                textAlign: TextAlign.right,
              ),
              const SizedBox(height: 8),
              TextFieldComponent(hintText: 'اكتب الوصف هنا', maxlines: 4),
              const SizedBox(height: 16),
              const Text('التون',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.right),
              const SizedBox(height: 8),
              TextFieldComponent(hintText: 'اكتب النوع هنا'),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: DropDownUserItemWidget(
                  title: "منصة الترويج",
                  images: [],
                  dropdownItems: ["فيس بوك", "تويتر", "انستقرام"],
                ),
              ),
              const Text('النص المستخدم ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.right),
              const SizedBox(height: 8),
              TextFieldComponent(hintText: 'اكتب النص هنا'),
              const SizedBox(height: 16),
              const Text('لينك',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.right),
              const SizedBox(height: 8),
              TextFieldComponent(hintText: 'ضع اللينك هنا'),

              const SizedBox(height: 24),

              // Submit Button
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                      vertical: 15.0, horizontal: 30),
                  backgroundColor: Colors.lightBlue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0)),
                ),
                child: const Text('إنشاء',
                    style: TextStyle(color: Colors.white, fontSize: 18.0)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
