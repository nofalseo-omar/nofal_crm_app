import 'package:nofal_crm_app/components/custom_loader.dart';
import 'package:nofal_crm_app/components/toast_manager.dart';
import 'package:nofal_crm_app/features/welcome/data/repo/auth_repo.dart';
import 'package:nofal_crm_app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  // AuthLocalDataSource authLocalDataSource = AuthLocalDataSource();
  AuthRepo authRepo = AuthRepo();
  Future<void> login() async {
    if (formKey.currentState!.validate()) {
      startLoading();
      var res = await authRepo.login(
        email: emailController.text,
        password: passwordController.text,
        fcmToken: 'iii',
      );
      await res.fold((errMSG) {
        stopLoading();
        ToastManager.showError(errMSG.message);
      }, (r) async {
        // await authLocalDataSource.writeUser(user: r);
        // await authLocalDataSource.writeToken(token: r.data!.token!);
        // UserService.to.getUser();
        stopLoading();
        Get.offAllNamed(Routes.homeContent);

        debugPrint(r.data!.type);
      });
    }
  }
}
