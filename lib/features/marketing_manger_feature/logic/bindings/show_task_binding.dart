import 'package:get/get.dart';
import 'package:nofal_crm_app/features/marketing_manger_feature/logic/controller/markiting_manager_home_controller.dart';

class MarketManagerHomeBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MarketingManagerHomeController>(
        () => MarketingManagerHomeController());
  }
}
