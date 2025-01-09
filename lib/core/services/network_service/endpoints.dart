import 'package:nofal_crm_app/core/services/cache/cash_helper.dart';
import 'package:nofal_crm_app/core/services/network_service/api_service.dart';
import 'package:nofal_crm_app/core/utils/kString.dart';
import 'package:dio/dio.dart' as d;

//01551397516 123123123
class EndPoints {
  static const baseUrl = "https://labs.codeella.com/api";
  static const settings = '$baseUrl/data/settings';
  static const login = '$baseUrl/auth/login';

  static createChatChannel({required int userId, required int chatId}) {
    return "chat-$chatId-user-$userId";
  }

  static String getNotificationsChannel({
    required String userId,
  }) =>
      "channel-notify-$userId";

  static getSettings() async {
    DioImpl dio = DioImpl();

    d.Response res = await dio.get(endPoint: settings);
    CashHelper.setData(
      kStrings.realtime_pusher_app_id,
      res.data['data'][kStrings.realtime_pusher_app_id],
    );
    CashHelper.setData(
      kStrings.realtime_pusher_app_key,
      res.data['data'][kStrings.realtime_pusher_app_key],
    );
    CashHelper.setData(
      kStrings.realtime_pusher_app_secret,
      res.data['data'][kStrings.realtime_pusher_app_secret],
    );
    CashHelper.setData(
      kStrings.realtime_pusher_app_cluster,
      res.data['data'][kStrings.realtime_pusher_app_cluster],
    );
  }
//PUSHER--------------------
  // static const String pusherAppId = "1894745";
  // static const String pusherAppKey = "1f23c52ae6f128362979";
  // static const String pusherCluster = "eu";
  // static String getChatChannel({required int chatId}) {
  //   print("chat-$chatId-user-${UserService.to.currentUser!.value!.id}");
  //   return "chat-$chatId-user-${UserService.to.currentUser!.value!.id}";
  // }

  // static String getNearestDriversChannel({required int driverId}) =>
  //     'chat-$driverId';
  // static String getOrderChannel({required int driverId}) =>
  //     'order-user-$driverId';

  // static const String countryCode = "+962";

  // static String getUserChannel({required int driverId}) => 'user-app-$driverId';
}
