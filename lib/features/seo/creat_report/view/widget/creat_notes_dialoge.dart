import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nofal_crm_app/components/custom_button.dart';
import 'package:nofal_crm_app/core/theme/text_themes.dart';
import 'package:nofal_crm_app/features/sales/customer_comapny/view/widget/text_field_builder.dart';

class CreatNotesDialoge extends StatelessWidget {
  const CreatNotesDialoge({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .39,
        width: double.infinity,
        child: Container(
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(.1),
                    blurRadius: 6,
                    spreadRadius: -4,
                    offset: Offset(0, 4)),
                BoxShadow(
                    color: Colors.black.withOpacity(.1),
                    blurRadius: 15,
                    spreadRadius: -3,
                    offset: Offset(0, 10))
              ],
              borderRadius: BorderRadius.circular(25),
              color: Colors.white,
              border: Border.all(color: Color(0xffE5E5E5), width: 1)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "اكتب الملاحظة",
                  style: context.f20700,
                ),
                TextFieldBuilder(
                  title: " ",
                  maxLines: 5,
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Expanded(child: CustomButton(text: "إرسال", onTap: () {})),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                        child: CustomButton(
                            backgroundColor: Color(0xffE9EFF5),
                            bordereColor: Color(0xffE9EFF5),
                            color: Colors.black,
                            text: "إلغاء",
                            onTap: () {
                              Get.back();
                            }))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
