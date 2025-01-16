import 'package:nofal_crm_app/components/custom_border_container.dart';
import 'package:nofal_crm_app/features/sales/company_task/view/widget/iteam_task_company.dart';
import 'package:flutter/material.dart';

class ContactTaskCompany extends StatelessWidget {
  const ContactTaskCompany({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomBorderContainer(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 20.verticalSpace,
            Wrap(
              children: List.generate(
                10,
                (index) => Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8.0,
                    vertical: 4,
                  ),
                  child: ItemTaskCompany(
                    isBlured: index % 2 == 0,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
