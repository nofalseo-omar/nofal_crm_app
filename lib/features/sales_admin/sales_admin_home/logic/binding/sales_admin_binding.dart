import 'package:get/get.dart';
import 'package:nofal_crm_app/features/sales_admin/sales_admin_home/logic/controller/sales_admin_controller.dart';

class SalesAdminBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SalesAdminController>(
      () => SalesAdminController(),
    );
  }
}
