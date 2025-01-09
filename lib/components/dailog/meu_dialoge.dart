import 'package:nofal_crm_app/components/custom_image_handler.dart';

import 'package:nofal_crm_app/core/theme/text_themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemDialogMenu extends StatelessWidget {
  const ItemDialogMenu({
    super.key,
    required this.image,
    required this.title,
    this.onTap,
  });
  final String image, title;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          CustomImageHandler(image),
          8.horizontalSpace,
          Text(
            title,
            style: context.f16500,
          ),
        ],
      ),
    );
  }
}
