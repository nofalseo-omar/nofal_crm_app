import 'package:nofal_crm_app/core/localization/app_strings.dart';
import 'package:nofal_crm_app/core/models/errors/error_message_model.dart';
import 'package:nofal_crm_app/core/models/errors/exceptions.dart';
import 'package:nofal_crm_app/core/services/network_service/api_service.dart';
import 'package:nofal_crm_app/core/services/network_service/endpoints.dart';
import 'package:nofal_crm_app/features/welcome/data/model/user_base_model/user_base_model.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart' as d;
import 'package:get/get.dart' as e;

class AuthRepo {
  DioImpl dioImpl = DioImpl();

  Future<Either<ResponseMessage, UserBaseModel>> login(
      {required String email,
      required String password,
      required String fcmToken}) async {
    try {
      d.Response response = await dioImpl.post(
        endPoint: EndPoints.login,
        data: {
          'email': email,
          'password': password,
          'fcm_token': fcmToken,
        },
      );
      if (response.statusCode == 200) {
        return Right(UserBaseModel.fromJson(response.data));
      } else {
        return Left(ResponseMessage(
            message: response.data['message'].toString(),
            status: response.data['status']));
      }
    } on PrimaryServerException catch (_) {
      return Left(ResponseMessage(message: _.message, status: false));
    } catch (e) {
      return Left(
          ResponseMessage(message: AppStrings.processFailed.tr, status: false));
    }
  }

  // @override
  // Future<Either<Failure, UserModel>> register(
  //     {required RegisterRequestModel registerRequest,
  //     required String fcmToken}) async {
  //   try {
  //     d.Response response = await dioImpl.post(
  //       endPoint: ApiUrl.register,
  //       data: registerRequest.toJson(fcmToken),
  //     );
  //     if (response.statusCode == 200) {
  //       return Right(UserModel.fromMap(response.data['data']));
  //     } else {
  //       return Left(AuthFailure(message: response.data['message']));
  //     }
  //   } on PrimaryServerException catch (e) {
  //     return Left(AuthFailure(message: e.message.toString()));
  //   } catch (e) {
  //     return Left(AuthFailure(message: AppStrings.connectionError));
  //   }
  // }

  // @override
  // Future<Either<Failure, UserModel>> getUserData() async {
  //   try {
  //     d.Response response = await dioImpl.get(endPoint: ApiUrl.getUserData);
  //     if (response.statusCode == 200) {
  //       return Right(UserModel.fromMap(response.data['data']));
  //     } else {
  //       return Left(AuthFailure(message: response.data['message']));
  //     }
  //   } on PrimaryServerException catch (e) {
  //     return Left(AuthFailure(message: e.message.toString()));
  //   } catch (e) {
  //     return Left(AuthFailure(message: AppStrings.connectionError));
  //   }
  // }

  // @override
  // Future<Either<Failure, UserModel>> verifyEmail({
  //   required String code,
  // }) async {
  //   try {
  //     d.Response response = await dioImpl
  //         .post(endPoint: ApiUrl.verifyEmail, data: {"code": code});
  //     if (response.statusCode == 200) {
  //       return Right(UserModel.fromMap(response.data['data']));
  //     } else {
  //       return Left(AuthFailure(message: response.data['message']));
  //     }
  //   } on PrimaryServerException catch (e) {
  //     return Left(AuthFailure(message: e.message.toString()));
  //   } catch (e) {
  //     return Left(AuthFailure(message: AppStrings.connectionError));
  //   }
  // }

  // Future<Either<Failure, Unit>> resendVerifyCode() async {
  //   try {
  //     d.Response response = await dioImpl.post(
  //       endPoint: ApiUrl.resendCode,
  //     );
  //     if (response.statusCode == 200) {
  //       return Right(unit);
  //     } else
  //       return Left(AuthFailure(message: response.data['message']));
  //   } on PrimaryServerException catch (e) {
  //     return Left(AuthFailure(message: e.message.toString()));
  //   } catch (e) {
  //     return Left(AuthFailure(message: AppStrings.connectionError));
  //   }
  // }

  // Future<Either<Failure, String>> sendForgotPasswordCode({
  //   required String email,
  // }) async {
  //   try {
  //     d.Response response = await dioImpl
  //         .post(endPoint: ApiUrl.forgetPasswordCode, data: {"email": email});
  //     if (response.statusCode == 200) {
  //       return Right(response.data['message']);
  //     } else {
  //       return Left(AuthFailure(message: response.data['message']));
  //     }
  //   } on PrimaryServerException catch (e) {
  //     return Left(AuthFailure(message: e.message.toString()));
  //   } catch (e) {
  //     return Left(AuthFailure(message: AppStrings.connectionError));
  //   }
  // }

  // Future<Either<Failure, UserModel>> resetForgotPassword({
  //   required String email,
  //   required String code,
  //   required String pass,
  //   required String confirmPass,
  // }) async {
  //   try {
  //     d.Response response = await dioImpl.post(
  //       endPoint: ApiUrl.resetPassword,
  //       data: {
  //         'email': email,
  //         'otp': code,
  //         'password': pass,
  //         'password_confirmation': confirmPass,
  //       },
  //     );
  //     if (response.statusCode == 200) {
  //       return Right(UserModel.fromMap(response.data['data']));
  //     } else {
  //       return Left(AuthFailure(message: response.data['message']));
  //     }
  //   } on PrimaryServerException catch (e) {
  //     return Left(AuthFailure(message: e.message.toString()));
  //   } catch (e) {
  //     return Left(AuthFailure(message: AppStrings.connectionError));
  //   }
  // }

  // Future<Either<Failure, String>> verifyForgotPasswordCode(
  //     {required String email, required String code}) async {
  //   try {
  //     d.Response response = await dioImpl.post(
  //       endPoint: ApiUrl.verifyForgetPasswordCode,
  //       data: {
  //         "email": email,
  //         "otp": code,
  //       },
  //     );
  //     if (response.statusCode == 200) {
  //       return Right(response.data['message']);
  //     } else {
  //       return Left(AuthFailure(message: response.data['message']));
  //     }
  //   } on PrimaryServerException catch (e) {
  //     return Left(AuthFailure(message: e.message.toString()));
  //   } catch (e) {
  //     return Left(AuthFailure(message: AppStrings.connectionError));
  //   }
  // }
}
