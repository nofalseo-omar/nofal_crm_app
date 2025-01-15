import 'package:nofal_crm_app/core/services/cache/cash_helper.dart';
import 'package:nofal_crm_app/core/services/cache/cash_keys.dart';
import 'package:nofal_crm_app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nofal_crm_app/routes/app_pages.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nofal_crm_app/core/localization/language_controller.dart';
import 'package:nofal_crm_app/core/utils/app_colors.dart';

import 'components/dailog/View_immediate_task.dart';

String role = 'marketing';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();

  await CashHelper.init();

  // PusherRemoteDataSource pusherRemoteDataSource = PusherRemoteDataSource();
  // await pusherRemoteDataSource.initPusher(driverId: 1);
  var userModel;
  if (CashHelper.getData(CacheKeys.userModel) == null) {
    // userModel = null;
  } else {
    // await Get.putAsync(() => UserService().init());
    // userModel =
    //     Data.fromJson(json.decode(CashHelper.getData(CacheKeys.userModel)));
    print('---->${userModel.id}');
  }

  runApp(
    const CrmFlutter(
        // userModel: userModel,
        ),
  );
}

class CrmFlutter extends StatelessWidget {
  const CrmFlutter({
    super.key,
    // this.userModel
  });
  // final Data? userModel;

  @override
  Widget build(BuildContext context) {
    LanguageController controller = LanguageController();

    Get.lazyPut(() => controller, fenix: true);
    return ScreenUtilInit(
      designSize: const Size(393, 852),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Nofal Crm',
        theme: ThemeData(
          fontFamily:
              // Get.find<LanguageController>().getCacheLanguage().languageCode ==
              //         "en"
              //     ? 'Poppins'
              //     :

              'DIN Next',
          appBarTheme: const AppBarTheme(
            backgroundColor: AppColors.whiteColor,
            surfaceTintColor: Colors.transparent,
            elevation: 0,
          ),
          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
          useMaterial3: true,
          scaffoldBackgroundColor: AppColors.whiteColor,
        ),

        // home: const TextDrawer(),

        initialRoute: Routes.seoScreen,

        locale: const Locale('ar'),

        // getRoute(
        //   // userModel
        // ),
        getPages: appPages(),
      ),
    );
  }

  // String getRoute(
  //   Data? userModel
  //   ) {
  //   if (userModel == null) {
  //     return Routes.splash;
  //   } else if (userModel.mobileVerifiedAt == false) {
  //     return Routes.login;
  //   } else if (userModel.documents?.vehicle == null ||
  //       userModel.documents?.inspection == null ||
  //       userModel.documents?.licenseDriver == null ||
  //       userModel.documents?.licenseVehicle == null) {
  //     return Routes.pendings;
  //   } else {
  //     return Routes.home;
  //   }
  // }
}

class TextDrawer extends StatelessWidget {
  const TextDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => const AlertDialog(
                contentPadding: EdgeInsets.zero,
                insetPadding: EdgeInsets.all(100),
                content: ViewImmediateTaskDailog(),
              ),
            );
          },
          child: const Text('Click')),
    );
  }
}
