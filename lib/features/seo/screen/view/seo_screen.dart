import 'package:nofal_crm_app/components/custom_app_widget.dart';
import 'package:nofal_crm_app/components/developer_drawer_widget.dart';
import 'package:nofal_crm_app/features/content_creator/home/view/widgets/app_drawer.dart';
import 'package:nofal_crm_app/features/seo/screen/widget/control_panel_table.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SeoScreen extends StatelessWidget {
  const SeoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0x0B002D0D),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            const AppDrawer(
              selectedIndex: 0,
            ),
            8.horizontalSpace,
            Expanded(
              child: Column(
                children: [
                  const CustomAppBarWidget(),
                  8.verticalSpace,
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // ImmediateTasksTable(),
                        const ControlPanelTable(),
                        8.horizontalSpace,
                        const FittedBox(child: DeveloperHomeDrawerWidget())
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
