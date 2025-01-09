import 'package:nofal_crm_app/core/constants/app_images_path.dart';
import 'package:nofal_crm_app/core/theme/text_themes.dart';
import 'package:nofal_crm_app/core/utils/app_colors.dart';
import 'package:face_pile/face_pile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TableUsersCirclesItem extends StatelessWidget {
  const TableUsersCirclesItem(
      {super.key, required this.title, required this.users});
  final String title;
  final List<String> users;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: context.f14700?.copyWith(
            color: const Color(0xff545472),
          ),
        ),
        FacePile(
          images: [
            NetworkImage(image),
            NetworkImage(image),
            NetworkImage(image)
          ],
          radius: 15,
          space: 20,
          child: CircleAvatar(
            backgroundColor: AppColors.blackColor,
            radius: 20,
            child: Text(
              '+${users.length - 3}',
              style: context.f16700
                  ?.copyWith(color: AppColors.whiteColor, fontSize: 8),
            ),
          ),
        )
      ],
    );
  }
}
