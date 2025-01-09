// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:nofal_crm_app/components/custom_app_widget.dart';
import 'package:nofal_crm_app/components/developer_drawer_widget.dart';
import 'package:nofal_crm_app/features/content_creator/home/view/widgets/app_drawer.dart';
import 'package:nofal_crm_app/features/marketing_manger_feature/screen/widget/campaign.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MarketingMangerScreen extends StatelessWidget {
  const MarketingMangerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0x0B002D0D),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            AppDrawer(
              selectedIndex: 3,
            ),
            8.horizontalSpace,
            Expanded(
              child: Column(
                children: [
                  CustomAppBarWidget(),
                  8.verticalSpace,
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Campaign(),
                        8.horizontalSpace,
                        FittedBox(child: DeveloperHomeDrawerWidget())
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
