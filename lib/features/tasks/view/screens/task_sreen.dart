import 'package:nofal_crm_app/components/custom_app_widget.dart';

import 'package:nofal_crm_app/components/developer_drawer_widget.dart';

import 'package:nofal_crm_app/features/content_creator/home/view/widgets/app_drawer.dart';
import 'package:nofal_crm_app/features/tasks/view/widget/contant_task_widget.dart';
import 'package:flutter/material.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromRGBO(0, 45, 13, 0.05),
      body: Row(
        children: [
          AppDrawer(
            selectedIndex: 2,
          ),
          SizedBox(
            height: 14,
          ),
          Expanded(
            child: Column(children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: CustomAppBarWidget(),
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(flex: 5, child: ContactTask()),
                    SizedBox(
                      width: 18,
                    ),
                    DeveloperHomeDrawerWidget(),
                  ],
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
