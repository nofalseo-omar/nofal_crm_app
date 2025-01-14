import 'package:get/get.dart';
import 'package:nofal_crm_app/features/sales/sales_home/data/controller/sales_home_controller.dart';

class SalesHomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SalesHomeController>(
      () => SalesHomeController(),
    );
  }
}
