import 'package:nofal_crm_app/components/custom_app_widget.dart';

import 'package:nofal_crm_app/components/developer_drawer_widget.dart';

import 'package:nofal_crm_app/features/content_creator/home/view/widgets/app_drawer.dart';
import 'package:nofal_crm_app/features/content_creator/social_media_status/view/screen/social_media_status_screen.dart';
import 'package:nofal_crm_app/features/sales/company_task/view/widget/contant_company_task_widget.dart';
import 'package:flutter/material.dart';

class CompanyTaskScreen extends StatelessWidget {
  const CompanyTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, 'قائمة مهام الشركة'),
      // backgroundColor: Color.fromRGBO(0, 45, 13, 0.05),
      body: ContactTaskCompany(),
    );
  }
}
