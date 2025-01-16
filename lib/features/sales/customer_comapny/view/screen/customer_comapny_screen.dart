// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:get/get.dart';
import 'package:nofal_crm_app/features/content_creator/social_media_status/view/screen/social_media_status_screen.dart';
import 'package:nofal_crm_app/features/sales/customer_comapny/view/widget/contant_customer_widget.dart';
import 'package:flutter/material.dart';
import 'package:nofal_crm_app/routes/app_routes.dart';

class CustomerCompanyScreen extends StatelessWidget {
  const CustomerCompanyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0x0B002D0D),
      appBar: buildAppBar(context, 'قائمة العملاء'),
      body: ContactCustomerWidget(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed(Routes.addCustomer);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
