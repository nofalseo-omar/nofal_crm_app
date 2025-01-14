import 'package:nofal_crm_app/components/custom_image_handler.dart';
import 'package:nofal_crm_app/core/constants/app_images_path.dart';
import 'package:nofal_crm_app/core/theme/text_themes.dart';
import 'package:nofal_crm_app/core/utils/app_colors.dart';
import 'package:nofal_crm_app/features/marketing_manger_feature/view/dailgoes/show_images_dailog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../components/textFields/custom_text_field.dart';

class ViewWritingMarketDailog extends StatefulWidget {
  const ViewWritingMarketDailog({super.key});

  @override
  State<ViewWritingMarketDailog> createState() =>
      _ViewWritingMarketDailogState();
}

class _ViewWritingMarketDailogState extends State<ViewWritingMarketDailog> {
  bool isWriting = true;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.sizeOf(context).width * 0.7,
        height: MediaQuery.sizeOf(context).height * (isWriting ? 0.9 : .8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Column(children: [
          Card(
            elevation: 4,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
            )),
            margin: const EdgeInsets.only(bottom: 1),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                color: const Color(0xffE8F8FE).withOpacity(0.5),
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  AnimatedCrossFade(
                      firstChild: const Text(
                        'عرض الكتابي',
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      secondChild: const Text(
                        'عرض الصور',
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      crossFadeState: isWriting
                          ? CrossFadeState.showFirst
                          : CrossFadeState.showSecond,
                      duration: const Duration(milliseconds: 300)),
                  const SizedBox(width: 16),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isWriting = !isWriting;
                      });
                    },
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: const Color(0xff005273).withOpacity(0.1),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Transform.scale(
                          scale: .7,
                          child: const CustomImageHandler(AppImages.reload)),
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: () => Get.back()),
                ],
              ),
            ),
          ),
          Expanded(
            child: AnimatedCrossFade(
                firstChild: const WritingBodyDialog(),
                secondChild: const ShowImagesBodyDialog(),
                crossFadeState: isWriting
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
                firstCurve: Curves.bounceOut,
                secondCurve: Curves.bounceIn,
                duration: const Duration(milliseconds: 300)),
          ),
        ]));
  }
}

class WritingBodyDialog extends StatelessWidget {
  const WritingBodyDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: SingleChildScrollView(child: WritingRightSideWidget())),
          Expanded(child: SingleChildScrollView(child: WritingLeftSideWidget()))
        ],
      ),
    );
  }
}

class WritingLeftSideWidget extends StatelessWidget {
  const WritingLeftSideWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.9,
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
                const TitleSubtitleLeftWidget(
                    title: 'التون فويس', subTitle: 'تعليمي'),
                const TitleSubtitleLeftWidget(
                    title: 'النص المستخدم بالصورة', subTitle: 'عربي'),
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

class TitleSubtitleLeftWidget extends StatelessWidget {
  const TitleSubtitleLeftWidget({
    super.key,
    this.subTitle,
    this.title,
  });
  final String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        Text(
          title ?? '',
          style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 8),
        Text(
          subTitle ?? '',
          style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}

class WritingRightSideWidget extends StatelessWidget {
  const WritingRightSideWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsetsDirectional.only(end: 62, start: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30),
              InputTextFieldWidget(title: 'العنوان الرئيسي'),
              InputTextFieldWidget(title: 'الوصف'),
              InputTextFieldWidget(title: 'لينك'),
            ],
          ),
        ),
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

class InputTextFieldWidget extends StatelessWidget {
  const InputTextFieldWidget(
      {super.key, this.title, this.maxLines, this.hintText});
  final String? title;
  final String? hintText;
  final int? maxLines;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title ?? '', style: context.f18700),
        const SizedBox(height: 12),
        TextFieldComponent(
          hintText: hintText ?? '',
          withBorder: false,
          maxlines: maxLines ?? 1,
          isReadOnly: true,
          fillColor: const Color(0xffF7F7F7),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
