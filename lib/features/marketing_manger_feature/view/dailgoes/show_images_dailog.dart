import 'package:nofal_crm_app/features/marketing_manger_feature/view/dailgoes/show_writing_dailog.dart';
import 'package:flutter/material.dart';
import 'package:nofal_crm_app/core/theme/text_themes.dart';
import 'package:nofal_crm_app/core/utils/app_colors.dart';
import '../../../../components/custom_image_handler.dart';
import '../../../../components/image_gallery_widget.dart';
import '../../../../components/textFields/custom_text_field.dart';
import '../../../../core/constants/app_images_path.dart';

class ShowImagesBodyDialog extends StatelessWidget {
  const ShowImagesBodyDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: SingleChildScrollView(child: ImagesRightSideWidget())),
          Expanded(child: SingleChildScrollView(child: ImagesLeftSideWidget()))
        ],
      ),
    );
  }
}

class ImagesRightSideWidget extends StatelessWidget {
  const ImagesRightSideWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 32),
        const Padding(
          padding: EdgeInsetsDirectional.only(end: 62, start: 20),
          child: ImageGalleryWidget(),
        ),
        const SizedBox(height: 16),
        const Divider(),
        Padding(
          padding: const EdgeInsetsDirectional.only(end: 62, start: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              Text('تقييم', style: context.f18700),
              const SizedBox(height: 4),
              RadioListTile(
                value: true,
                groupValue: false,
                onChanged: (value) {},
                title: Text('قبول', style: context.f18700),
              ),
              RadioListTile(
                value: true,
                groupValue: false,
                onChanged: (value) {},
                title: Text('كتابة ملاحظة', style: context.f18700),
              ),
              RadioListTile(
                value: true,
                groupValue: false,
                onChanged: (value) {},
                title: Text('رفض', style: context.f18700),
              ),
              const SizedBox(height: 8),
              TextFieldComponent(
                hintText: 'اكتب ملاحظاتك هنا',
                maxlines: 4,
                borderColor: const Color.fromRGBO(0, 0, 0, 0.15),
                fillColor: AppColors.whiteColor,
              ),
              const SizedBox(height: 24),
              Row(
                children: [
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
              const SizedBox(height: 16),
            ],
          ),
        ),
      ],
    );
  }
}

class ImagesLeftSideWidget extends StatelessWidget {
  const ImagesLeftSideWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.8,
      decoration: const BoxDecoration(
          color: Color(0xffE8F8FE),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(12),
            //  bottomRight: Radius.circular(12),
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsets.all(32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'تمت المشاركة مع:',
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 8),
                SizedBox(
                  height: 35,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (context, index) => const ClipOval(
                      child: CustomImageHandler(AppImages.image,
                          height: 35, width: 35, fit: BoxFit.cover),
                    ),
                  ),
                ),
                const TitleSubtitleLeftWidget(
                    title: 'رقم البوست', subTitle: '4'),
                const TitleSubtitleLeftWidget(
                    title: 'منصة الترويج', subTitle: 'فيس بوك'),
              ],
            ),
          ),
          const Divider(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TitleSubtitleLeftWidget(
                    title: 'تم التسليم في', subTitle: 'Feb 5,2024 , 10:50 AM'),
                TitleSubtitleLeftWidget(
                    title: 'اخر تعديل', subTitle: 'Feb 6,2024 , 2:35 PM'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
