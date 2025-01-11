import 'package:flutter/services.dart';
import 'package:nofal_crm_app/components/custom_image_handler.dart';
import 'package:nofal_crm_app/core/constants/app_images_path.dart';
import 'package:nofal_crm_app/core/theme/text_themes.dart';
import 'package:nofal_crm_app/core/utils/app_colors.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:nofal_crm_app/core/utils/app_validation_functions.dart';
import 'package:nofal_crm_app/features/marketing_manger_feature/dailgoes/sub_compontets/pick_user.dart';
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
        title: const Text("إنشاء مهمة فورية"),
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
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              text: 'الملفات المرفقة', style: context.f18600!),
                          TextSpan(
                            text: ' (5 صور بحد أقصي)',
                            style: context.f16500!.copyWith(
                                color: AppColors.textfieldHintTxtColor),
                          ),
                        ])),
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
                                          Text(' التحميل ',
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
                                ? Stack(
                                    fit: StackFit.passthrough,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          child: Image.asset(
                                            AppImages.image,
                                            width: 70,
                                            height: 70,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      const Positioned(
                                        top: -4,
                                        left: -2,
                                        child: Card(
                                          color: AppColors.redColor,
                                          child: Icon(Icons.close,
                                              color: Colors.white, size: 20),
                                        ),
                                      )
                                    ],
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
                          child: InputTextFieldWidget2(
                              title: 'العنوان',
                              validator: (d) {
                                return AppValidationFunctions
                                    .stringValidationFunction(d, 'العنوان');
                              },
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
                        InputTextFieldWidget2(
                            maxLines: 5,
                            validator: (d) {
                              return AppValidationFunctions
                                  .stringValidationFunction(d, 'الوصف');
                            },
                            title: 'الوصف',
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
                          ],
                        ),
                        const SizedBox(height: 32),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  '   مدة المهمة',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.right,
                                ),
                                Text(
                                  ' (بالساعة) ',
                                  style: TextStyle(
                                      color: Color(0xff8A8A8A),
                                      fontWeight: FontWeight.w600),
                                  textAlign: TextAlign.right,
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            TextFieldComponent(
                                keyboardType:
                                    const TextInputType.numberWithOptions(),
                                inputFormatters: [
                                  FilteringTextInputFormatter.digitsOnly
                                ],
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'الحقل مطلوب';
                                  }
                                  return null;
                                },
                                hintText: 'اكتب العنوان الرئيسي هنا')
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: ElevatedButton(
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
      {super.key,
      this.title,
      this.maxLines,
      this.hintText,
      required this.validator});
  final String? title;
  final String? hintText;
  final int? maxLines;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title ?? '', style: context.f18700),
        const SizedBox(height: 12),
        TextFieldComponent(
          hintText: hintText ?? '',
          validator: validator,
          maxlines: maxLines ?? 1,
          fillColor: AppColors.whiteColor,
          borderColor: const Color(0xffB0B0B0).withOpacity(.8),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}

