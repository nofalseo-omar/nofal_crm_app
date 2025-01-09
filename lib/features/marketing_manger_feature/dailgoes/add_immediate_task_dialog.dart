import 'package:nofal_crm_app/components/custom_image_handler.dart';
import 'package:nofal_crm_app/core/constants/app_images_path.dart';
import 'package:nofal_crm_app/core/theme/text_themes.dart';
import 'package:nofal_crm_app/core/utils/app_colors.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../components/dailog/add_content_creator_dailog.dart';
import '../../../components/textFields/custom_text_field.dart';

class AddImmediateTaskDailog extends StatefulWidget {
  const AddImmediateTaskDailog({super.key});

  @override
  State<AddImmediateTaskDailog> createState() => _AddImmediateTaskDailogState();
}

class _AddImmediateTaskDailogState extends State<AddImmediateTaskDailog> {
  bool isWriting = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("مهمة جديدة"),
      ),
      body: Container(
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'الملفات المرفقة',
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 16),
                        SizedBox(
                          width: MediaQuery.sizeOf(context).width,
                          child: DottedBorder(
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
                                      const CustomImageHandler(
                                          AppImages.upload),
                                      const SizedBox(height: 16),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text('إضغط هنا للإرفاق أو',
                                              style: context.f18600!.copyWith(
                                                  color:
                                                      const Color(0xff4B5563))),
                                          Text('التحميل',
                                              style: context.f18600!.copyWith(
                                                  color:
                                                      AppColors.primaryColor)),
                                        ],
                                      ),
                                      const SizedBox(height: 16),
                                      Text('أقصي حجم: 5GB',
                                          style: context.f18600!.copyWith(
                                              color: const Color(0xff4B5563))),
                                    ],
                                  ),
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
                                          color: const Color(0xff000000)
                                              .withOpacity(0.5),
                                          borderRadius:
                                              BorderRadius.circular(12),
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
                        SizedBox(
                          width: MediaQuery.sizeOf(context).width,
                          child: const InputTextFieldWidget2(
                              title: 'العنوان',
                              hintText: 'اكتب اسم العنوان هنا'),
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                                child: DropDownUserItemWidget(
                              dropdownItems: [
                                "hassan",
                                "ahmed",
                              ],
                            )),
                          ],
                        ),
                        const InputTextFieldWidget2(
                            maxLines: 5,
                            title: 'الواصف',
                            hintText: 'اكتب الوصف هنا'),
                        const SizedBox(height: 16),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                                child: DropDownUserItemWidget(
                              dropdownItems: [
                                "hassan",
                                "ahmed",
                              ],
                            )),
                            SizedBox(width: 8),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        '   مدة المهمة',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.right,
                                      ),
                                      Text(
                                        '(بالساعة)',
                                        style: TextStyle(
                                            color: Color(0xff8A8A8A),
                                            fontWeight: FontWeight.w600),
                                        textAlign: TextAlign.right,
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 8),
                                  CustomTextField(
                                      hintText: 'اكتب العنوان الرئيسي هنا')
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 32),
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
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18.0)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          )),
    );
  }
}

class InputTextFieldWidget2 extends StatelessWidget {
  const InputTextFieldWidget2(
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
          hint: hintText ?? '',
          maxlines: maxLines ?? 1,
          fillColor: AppColors.whiteColor,
          borderColor: const Color(0xffB0B0B0).withOpacity(.8),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}

class DropDownUserItemWidget extends StatefulWidget {
  const DropDownUserItemWidget(
      {super.key, required this.dropdownItems, this.title = "موجه إلي"});
  // late String selectedValue;
  final List<String> dropdownItems;
  final String title;

  @override
  State<DropDownUserItemWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<DropDownUserItemWidget> {
  String? selectedValue;
  // List<String> dropdownItems = ['hassan', 'ali', 'ahmed'];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          widget.title,
          style: TextStyle(fontWeight: FontWeight.bold),
          textAlign: TextAlign.right,
        ),
        const SizedBox(height: 12),
        Container(
          height: 60,
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black12, width: 1),
            borderRadius: BorderRadius.circular(6),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: selectedValue ?? widget.dropdownItems[0],
              items: widget.dropdownItems
                  .map((item) => DropdownMenuItem<String>(
                        value: item,
                        child:
                            Text(item, style: const TextStyle(fontSize: 16.0)),
                      ))
                  .toList(),
              onChanged: (value) {
                setState(() {
                  selectedValue = value!;
                });
              },
              icon: const CustomImageHandler(AppImages.arrowDown),
              isExpanded: true,
            ),
          ),
        ),
      ],
    );
  }
}
