import 'package:get/get.dart';

class ContentTaskController extends GetxController {
  bool isView = false;
  @override
  void onInit() {
    if (Get.arguments != null) {
      isView = Get.arguments;
    }
    super.onInit();
  }
}
