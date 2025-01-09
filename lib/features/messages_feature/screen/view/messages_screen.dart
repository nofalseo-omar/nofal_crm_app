// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:nofal_crm_app/components/custom_app_widget.dart';
import 'package:nofal_crm_app/features/content_creator/home/view/widgets/app_drawer.dart';
import 'package:nofal_crm_app/features/messages_feature/screen/widgets/conversation_builder.dart';
import 'package:nofal_crm_app/features/messages_feature/screen/widgets/messages_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 45, 13, 0.05),
      body: Row(
        children: [
          AppDrawer(
            selectedIndex: 2,
          ),
          Expanded(
            child: Column(children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: CustomAppBarWidget(),
              ),
              Expanded(
                // child: Container(),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      MessagesList(),
                      16.horizontalSpace,
                      Expanded(child: ConversationBuilder()),
                    ],
                  ),
                ),
                // child: Row(
                //   crossAxisAlignment: CrossAxisAlignment.start,
                //   children: [
                //     Expanded(flex: 5, child: MainTable()),
                //     FittedBox(child: DeveloperHomeDrawerWidget())
                //   ],
                // ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
