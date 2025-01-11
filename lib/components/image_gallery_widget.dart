import 'package:nofal_crm_app/components/custom_image_handler.dart';
import 'package:nofal_crm_app/core/theme/text_themes.dart';
import 'package:nofal_crm_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

import '../core/constants/app_images_path.dart';

class ImageGalleryWidget extends StatelessWidget {
  const ImageGalleryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'الملفات المرفقة',
            style: context.f18600!.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              const CustomImageHandler(
                AppImages.image,
                height: 160,
                // width: 390,
                fit: BoxFit.fill,
              ),
              const SizedBox(width: 8),
              Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: const CustomImageHandler(
                      AppImages.image,
                      height: 76,
                      width: 85,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: const CustomImageHandler(
                          AppImages.image,
                          height: 76,
                          width: 85,
                          fit: BoxFit.fill,
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Container(
                          color: AppColors.grey.withOpacity(.8),
                          height: 76,
                          width: 85,
                          alignment: Alignment.center,
                          child: Text(
                            '2+',
                            textAlign: TextAlign.center,
                            style: context.f14700!
                                .copyWith(color: AppColors.whiteColor),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
