import 'package:flutter/material.dart';
import 'package:nofal_crm_app/core/theme/text_themes.dart';
import 'package:nofal_crm_app/core/utils/app_colors.dart';

class CardInformation extends StatelessWidget {
  const CardInformation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xffD20000).withOpacity(.05),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: const Color(0xffEBEBEB)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 25,
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  "محمد عجمي",
                  style: context.f16500!.copyWith(color: Colors.black),
                )
              ],
            ),
            const Divider(
              height: 34,
              color: AppColors.dividerColor,
            ),
            const Row(
              children: [
                Expanded(
                    child: TitelAndSubtitel(
                  subTitle: '٣ ملاحظات',
                  title: 'عدد الملاحظات',
                )),
                Expanded(
                    child: TitelAndSubtitel(
                  subTitle: '٣ التقارير',
                  title: ' عدد التقارير',
                )),
                Expanded(child: SizedBox())
              ],
            )
          ],
        ),
      ),
    );
  }
}

class TitelAndSubtitel extends StatelessWidget {
  const TitelAndSubtitel(
      {super.key, required this.subTitle, required this.title});
  final String title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: context.f15400!.copyWith(
              fontWeight: FontWeight.w500,
              color: const Color(0xff00070D).withOpacity(.5)),
        ),
        Text(subTitle,
            style: context.f15400!
                .copyWith(fontWeight: FontWeight.w500, color: Colors.black)),
      ],
    );
  }
}
