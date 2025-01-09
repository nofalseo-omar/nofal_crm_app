import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomBackButtonWidget extends StatelessWidget {
  final bool isNotLeading;
  const CustomBackButtonWidget({super.key, this.isNotLeading = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: const Color(0xffE9EFF5),
          borderRadius: BorderRadius.circular(14)),
      padding: EdgeInsets.all(isNotLeading ? 8 : 0),
      margin: EdgeInsets.all(isNotLeading ? 0 : 8),
      child: InkWell(
        onTap: () {
          Get.back();
        },
        child: const Padding(
            padding: EdgeInsetsDirectional.only(start: 10),
            child: Icon(Icons.arrow_back_ios)),
      ),
    );
  }
}
