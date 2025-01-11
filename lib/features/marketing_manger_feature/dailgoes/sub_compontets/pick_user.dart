import 'package:flutter/material.dart';
import 'package:nofal_crm_app/components/custom_image_handler.dart';
import 'package:nofal_crm_app/core/constants/app_images_path.dart';
import 'package:nofal_crm_app/core/utils/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DropDownUserItemWidget extends StatefulWidget {
  const DropDownUserItemWidget(
      {super.key, required this.dropdownItems, this.title = "موجه إلي"});
  // late String selectedValue;
  final List<String> dropdownItems;
  final String title;

  @override
  State<DropDownUserItemWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<DropDownUserItemWidget> {
  String? selectedValue;
  // List<String> dropdownItems = ['hassan', 'ali', 'ahmed'];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          widget.title,
          style: const TextStyle(fontWeight: FontWeight.bold),
          textAlign: TextAlign.right,
        ),
        const SizedBox(height: 12),
        Container(
          height: 60,
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black12, width: 1),
            borderRadius: BorderRadius.circular(6),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: selectedValue ?? widget.dropdownItems[0],
              items: widget.dropdownItems
                  .map((item) => DropdownMenuItem<String>(
                        value: item,
                        child: Row(
                          children: [
                            const CircleAvatar(
                              radius: 16,
                              backgroundColor: AppColors.primaryColor,
                            ),
                            10.horizontalSpace,
                            Text(item, style: const TextStyle(fontSize: 16.0)),
                          ],
                        ),
                      ))
                  .toList(),
              onChanged: (value) {
                setState(() {
                  selectedValue = value!;
                });
              },
              icon: const CustomImageHandler(AppImages.arrowDown),
              isExpanded: true,
            ),
          ),
        ),
      ],
    );
  }
}
