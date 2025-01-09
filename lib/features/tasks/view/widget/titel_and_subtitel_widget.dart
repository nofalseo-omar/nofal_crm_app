import 'package:nofal_crm_app/core/theme/text_themes.dart';
import 'package:flutter/material.dart';

class TitleAndSubTitleHeader extends StatelessWidget {
  const TitleAndSubTitleHeader({
    super.key,
    required this.title,
    required this.subtitle,
  });
  final String title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: context.f14400!.copyWith(
              color: const Color(0xff545472), fontWeight: FontWeight.w500),
        ),
        Text(
          subtitle,
          style: context.f12500!.copyWith(
              fontWeight: FontWeight.w500,
              color: Colors.black,
              fontFamily: "DIN Next"),
        )
      ],
    );
  }
}
