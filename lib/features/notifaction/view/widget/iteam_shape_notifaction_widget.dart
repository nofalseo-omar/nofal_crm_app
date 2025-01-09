import 'package:nofal_crm_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class ItemShapeNotification extends StatelessWidget {
  const ItemShapeNotification({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.dividerNotifactionColor.withOpacity(.05),
          border: const Border(
              bottom: BorderSide.none,
              left: BorderSide.none,
              right: BorderSide(
                  color: AppColors.dividerNotifactionColor, width: 4),
              top: BorderSide.none)),
      child: const ListTile(
        leading: Padding(
          padding: EdgeInsets.symmetric(vertical: 2.0),
          child: CircleAvatar(
            radius: 25,
          ),
        ),
        title: Text(
          "تمت الموافقة علي المهمة ",
          style: TextStyle(fontWeight: FontWeight.w500, color: Colors.black),
        ),
        trailing: Text(
          "٢:٣٧ م",
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
