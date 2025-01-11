import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:nofal_crm_app/components/custom_image_handler.dart';
import 'package:nofal_crm_app/components/textFields/custom_text_field.dart';
import 'package:nofal_crm_app/core/constants/app_images_path.dart';
import 'package:nofal_crm_app/core/theme/text_themes.dart';
import 'package:nofal_crm_app/core/utils/app_colors.dart';
import 'package:nofal_crm_app/features/content_creator/home/widgets/status_widget/connection_duration_widget.dart';
import 'package:nofal_crm_app/features/marketing_manger_feature/dailgoes/sub_compontets/pick_user.dart';

class AddDesignerTask extends StatelessWidget {
  const AddDesignerTask({super.key});

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
          ),
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

              // Connection Duration and Image Section
              const ConnectionDurationWidget(),
              const SizedBox(height: 16.0),

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
              const Text(
                'التون',
                style: TextStyle(fontWeight: FontWeight.bold),
                textAlign: TextAlign.right,
              ),
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

              const Text(
                'النص المستخدم',
                style: TextStyle(fontWeight: FontWeight.bold),
                textAlign: TextAlign.right,
              ),
              const SizedBox(height: 8),
              TextFieldComponent(hintText: 'اكتب النص هنا'),

              const SizedBox(height: 16),
              const Text(
                'لينك',
                style: TextStyle(fontWeight: FontWeight.bold),
                textAlign: TextAlign.right,
              ),

              const SizedBox(height: 8),
              TextFieldComponent(hintText: 'ضع اللينك هنا'),

              const SizedBox(height: 24),
              DottedBorder(
                color: const Color(0xffD2D5DA),
                strokeWidth: 1,
                borderType: BorderType.RRect,
                radius: const Radius.circular(12),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(24),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const CustomImageHandler(AppImages.upload),
                          const SizedBox(height: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('إضغط هنا للإرفاق أو',
                                  style: context.f18600!.copyWith(
                                      color: const Color(0xff4B5563))),
                              Text('التحميل',
                                  style: context.f18600!
                                      .copyWith(color: AppColors.primaryColor)),
                            ],
                          ),
                          const SizedBox(height: 16),
                          Text('أقصي حجم: 5GB',
                              style: context.f18600!
                                  .copyWith(color: const Color(0xff4B5563))),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              SizedBox(
                height: 60,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 8),
                  itemBuilder: (context, index) => index != 4
                      ? ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            AppImages.image,
                            width: 60,
                            height: 60,
                            fit: BoxFit.cover,
                          ),
                        )
                      : Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset(
                                AppImages.image,
                                width: 60,
                                height: 60,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              width: 60,
                              height: 60,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: const Color(0xff000000).withOpacity(0.5),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Text('+2',
                                  style: context.f18600!
                                      .copyWith(color: Colors.white)),
                            )
                          ],
                        ),
                  itemCount: 5,
                ),
              ),

              const SizedBox(height: 16),
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
