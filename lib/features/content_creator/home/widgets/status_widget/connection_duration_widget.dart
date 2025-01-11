import 'package:flutter/material.dart';
import 'package:nofal_crm_app/components/custom_border_container.dart';
import 'package:nofal_crm_app/core/utils/app_colors.dart';
import 'package:nofal_crm_app/features/content_creator/home/widgets/status_widget/time_container.dart';

class ConnectionDurationWidget extends StatelessWidget {
  const ConnectionDurationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomBorderContainer(
      containerColor: AppColors.primaryColor.withOpacity(0.1),
      child: const Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.circle,
                  color: Colors.green,
                  size: 14,
                ),
                SizedBox(width: 8),
                Text(
                  ' مدة المهمة حتي الان',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 8),
          // Divider(color: Colors.grey, thickness: 0.5),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: BuildTimeUnit(
                    backColor: AppColors.whiteColor,
                    unit: 'ساعة',
                    value: '04',
                  ),
                ),
                SizedBox(width: 4),
                Expanded(
                  child: BuildTimeUnit(
                    backColor: AppColors.whiteColor,
                    unit: 'دقيقة',
                    value: '34',
                  ),
                ),
                SizedBox(width: 4),
                Expanded(
                  child: BuildTimeUnit(
                    backColor: AppColors.whiteColor,
                    unit: 'ثانية',
                    value: '17',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
