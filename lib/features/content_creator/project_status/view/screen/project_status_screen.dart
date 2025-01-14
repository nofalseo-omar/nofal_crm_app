import 'package:get/get.dart';
import 'package:nofal_crm_app/core/theme/text_themes.dart';
import 'package:nofal_crm_app/core/utils/app_colors.dart';
import 'package:nofal_crm_app/features/content_creator/project_status/logic/controller/project_status_controller.dart';
import 'package:nofal_crm_app/features/content_creator/project_status/view/widget/project_status_table.dart';
import 'package:flutter/material.dart';
import 'package:nofal_crm_app/features/content_creator/social_media_status/view/screen/social_media_status_screen.dart';
import 'package:nofal_crm_app/features/marketing_manger_feature/view/dailgoes/add_immediate_task_dialog.dart';

class ProjectStatusScreen extends GetView<ProjectStautsController> {
  const ProjectStatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(const AddImmediateTaskDailog());
        },
        child: const Icon(
          Icons.note_alt,
          color: AppColors.primaryColor,
        ),
      ),
      appBar: buildAppBar(context, 'مرحلة الوعي'),
      // backgroundColor: Color.fromRGBO(0, 45, 13, 0.05),
      body: const ProjectStatusTable(),
    );
  }
}
