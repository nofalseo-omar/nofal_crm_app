import 'package:flutter/material.dart';
import 'package:nofal_crm_app/core/theme/text_themes.dart';
import 'package:nofal_crm_app/core/utils/app_colors.dart';

class TitleSubtitleWidget extends StatelessWidget {
  final String tit, sub;
  final Color? titColor, subColor;
  const TitleSubtitleWidget(
      {super.key,
      required this.tit,
      required this.sub,
      this.subColor,
      this.titColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        FittedBox(
          child: Text(
            tit,
            style: context.f24700!.copyWith(
                color: titColor ?? AppColors.whiteColor.withOpacity(0.8),
                fontSize: 12),
            textAlign: TextAlign.center,
          ),
        ),
        FittedBox(
          child: Text(sub,
              style: context.f24700!
                  .copyWith(color: subColor ?? AppColors.whiteColor),
              textAlign: TextAlign.center),
        ),
      ],
    );
  }
}
