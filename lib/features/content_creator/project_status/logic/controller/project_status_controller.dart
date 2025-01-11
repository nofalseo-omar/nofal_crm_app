import 'package:get/get.dart';
import 'package:nofal_crm_app/components/custom_alert.dart';

class ProjectStautsController extends GetxController {
  @override
  void onInit() {
    Future.delayed(const Duration(seconds: 2), () {
      showCustomAlert(
          button1: 'التوجه للمهمة',
          button2: 'لاحقا',
          title: 'تم كتابة ملاحظة علي مهمتك',
          message: 'عيد تعديل البوست مرة تانية بشكل اللطف',
          onTap1: () {},
          onTap2: () {});
      super.onInit();
    });
  }
}
