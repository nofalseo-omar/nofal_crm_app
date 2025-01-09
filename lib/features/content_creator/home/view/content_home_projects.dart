// ignore_for_file: prefer_const_constructors

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nofal_crm_app/components/custom_app_widget.dart';
import 'package:nofal_crm_app/components/custom_image_handler.dart';
import 'package:nofal_crm_app/components/developer_drawer_widget.dart';
import 'package:nofal_crm_app/core/constants/app_images_path.dart';
import 'package:nofal_crm_app/core/theme/text_themes.dart';
import 'package:nofal_crm_app/features/content_creator/home/view/widgets/app_drawer.dart';
import 'package:nofal_crm_app/features/content_creator/home/view/widgets/table_widget/main_table.dart';
import 'package:flutter/material.dart';

class ContentHomeScreen extends StatelessWidget {
  const ContentHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromRGBO(0, 45, 13, 0.05),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "مرحبا بعودتك محمد!",
          style: context.f20500,
        ),
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          // CustomImageHandler(AppImages.)
          Icon(Icons.search, size: 32.sp),
          10.horizontalSpace,
        ],
      ),
      drawer: Drawer(),
      body: Row(
        children: [
          AppDrawer(
            selectedIndex: 1,
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
                    Expanded(flex: 5, child: MainTable()),
                    DeveloperHomeDrawerWidget()
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
