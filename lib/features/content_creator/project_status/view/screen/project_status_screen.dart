import 'package:nofal_crm_app/components/custom_app_widget.dart';
import 'package:nofal_crm_app/components/developer_drawer_widget.dart';
import 'package:nofal_crm_app/core/theme/text_themes.dart';
import 'package:nofal_crm_app/features/content_creator/home/view/widgets/app_drawer.dart';
import 'package:nofal_crm_app/features/content_creator/project_status/view/widget/project_status_table.dart';
import 'package:flutter/material.dart';

class ProjectStatusScreen extends StatelessWidget {
  const ProjectStatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'مرحلة الوعي',
          style: context.f20500,
        ),
      ),
      // backgroundColor: Color.fromRGBO(0, 45, 13, 0.05),
      body: ProjectStatusTable(),
    );
  }
}
