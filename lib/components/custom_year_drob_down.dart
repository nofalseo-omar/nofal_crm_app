import 'package:nofal_crm_app/components/custom_dropdown_form_field.dart';
import 'package:nofal_crm_app/core/theme/text_themes.dart';
import 'package:nofal_crm_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomYearDropdown extends StatelessWidget {
  final String? selectedModel;
  final Function(String?) onChanged;

  const CustomYearDropdown(
      {super.key, this.selectedModel, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    int currentYear = DateTime.now().year;

    List<String> years = List.generate(
        currentYear - 1900 + 1, (index) => (1900 + index).toString());

    return CustomDropDownFormField(
      hintText: '',
      color: AppColors.whiteColor,
      items: years.map((year) {
        return DropdownMenuItem(
          value: year,
          child: Text(
            year,
            style: context.f24700!.copyWith(
              fontSize: 14,
              color: const Color(0xff00070D),
              fontWeight: FontWeight.w500,
              fontFamily: "DIN Next",
            ),
          ),
        );
      }).toList(),
      onChanged: (value) async {
        onChanged(value);
      },
      value: selectedModel,
      icon: const Icon(
        Icons.keyboard_arrow_down_rounded,
      ),
      validator: (value) {
        if (value == null) {
          return '';
        }
        return null;
      },
    );
  }
}
