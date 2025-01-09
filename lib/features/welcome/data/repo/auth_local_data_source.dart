// import 'dart:convert';

// import 'package:dartz/dartz.dart';
// import 'package:get/get.dart';
// import 'package:laboratory/core/routes/app_pages.dart';
// import 'package:laboratory/core/services/cache/cash_helper.dart';
// import 'package:laboratory/core/services/cache/cash_keys.dart';
// import 'package:laboratory/features/auth_feature/login/data/model/user_base_model/user_base_model.dart';

// class AuthLocalDataSource {
//   AuthLocalDataSource();

//   ///-------------- USER DATA ------------------------------------------------
//   static Future<UserBaseModel?> readUser() async {
//     try {
//       // var fcmToken = await FirebaseMessaging.instance.getToken();
//       // await CashHelper.setData(kStrings.fcmToken, fcmToken);
//       final data = await CashHelper.getData(CacheKeys.user);

//       return UserBaseModel.fromJson(json.decode(data));
//     } catch (e) {
//       Get.snackbar('kindly login again to ensure your account', "");
//       Get.offAllNamed(Routes.login);
//     }
//     return null;
//   }

//   Future<Unit> writeUser({required UserBaseModel user}) async {
//     try {
//       // var fcmToken = await FirebaseMessaging.instance.getToken();
//       await CashHelper.setData(CacheKeys.user, json.encode(user.toJson()));
//       return Future.value(unit);
//     } catch (e) {
//       return Future.value(unit);
//     }
//   }

//   Future<Unit> removeUser() async {
//     try {
//       await CashHelper.sharedPreferences!.clear();
//       return Future.value(unit);
//     } catch (e) {
//       return Future.value(unit);
//     }
//   }

//   ///-------------- USER TOKEN -------------------------------------------------
//   Future<String?> readToken() async {
//     try {
//       String? token = await CashHelper.getData(CacheKeys.token);
//       return Future.value(token);
//     } catch (e) {
//       return null;
//     }
//   }

//   Future<Unit> writeToken({required String token}) async {
//     try {
//       // await flutterSecureStorage.write(
//       //     key: kStrings.userTokenStorage, value: token);

//       await CashHelper.setData(CacheKeys.token, 'bearer$token');

//       return Future.value(unit);
//     } catch (e) {
//       return Future.value(unit);
//     }
//   }
// }
