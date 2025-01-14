import 'package:get/get.dart';
import 'package:nofal_crm_app/features/sales/company_task/logic/controller/show_task_controller.dart';

class ShowTaskBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ShowTaskController>(
      () => ShowTaskController(),
    );
  }
}
