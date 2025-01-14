import 'package:get/get.dart';
import 'package:nofal_crm_app/features/sales/customer_comapny/logic/controller/add_customer_controller.dart';

class AddCustomerBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddCustomerController>(
      () => AddCustomerController(),
    );
  }
}
