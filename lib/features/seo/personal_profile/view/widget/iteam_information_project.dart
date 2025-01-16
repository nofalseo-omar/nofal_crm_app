import 'package:flutter/material.dart';
import 'package:nofal_crm_app/components/custom_button.dart';
import 'package:nofal_crm_app/core/theme/text_themes.dart';
import 'package:nofal_crm_app/core/utils/app_colors.dart';
import 'package:nofal_crm_app/features/seo/personal_profile/view/widget/card_information_member.dart';

class IteamInformationProject extends StatelessWidget {
  const IteamInformationProject({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color(0xffEDFAFF),
          border: Border.all(color: Color(0xffEBEBEB), width: 1),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(.25),
                spreadRadius: 0,
                blurRadius: 0,
                offset: Offset(0, 0))
          ]),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                TitelAndSubtitel(subTitle: " نوفل سيو", title: "اسم المشروع "),
                Spacer(),
                Card(
                  elevation: 0,
                  color: Color(0xffFAFEFF),
                  child: Icon(
                    Icons.more_horiz,
                    color: Color(0xff91969A),
                    size: 30,
                  ),
                )
              ],
            ),
            Divider(
              height: 32,
              color: AppColors.dividerColor,
            ),
            Row(
              children: [
                Text(
                  "تاريخ الإنشاء: ١ مايو ٢٠٢٣",
                  style: context.f12500!
                      .copyWith(color: Color(0xff00070D).withOpacity(.5)),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomButton(height: 40, text: "عرض", onTap: () {}),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
