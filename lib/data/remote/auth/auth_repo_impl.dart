// ignore_for_file: unused_local_variable

import 'package:dartz/dartz.dart';
import 'package:sweetlifesaver/core/core.dart';
import 'package:sweetlifesaver/core/endpoints.dart';
import 'package:sweetlifesaver/data/remote/auth/auth_repo.dart';
import 'package:sweetlifesaver/data/remote/auth/models/forget_password_model.dart';
import 'package:sweetlifesaver/data/remote/auth/models/login_model.dart';
import 'package:sweetlifesaver/data/remote/auth/models/registration_model.dart';
import 'package:sweetlifesaver/data/remote/auth/models/send_otp_model.dart';
import 'package:sweetlifesaver/data/remote/auth/models/social_login_model.dart';
import 'package:sweetlifesaver/data/remote/auth/models/update_question_model.dart';
import 'package:sweetlifesaver/data/remote/auth/models/update_sleep_model.dart';
import 'package:sweetlifesaver/data/remote/auth/models/update_userdata_model.dart';
import 'package:sweetlifesaver/data/remote/auth/models/user_data_model.dart';
import 'package:sweetlifesaver/data/remote/auth/models/verify_otp_model.dart';
import 'package:sweetlifesaver/data/remote/auth/models/weight_recomendation_model.dart';
import 'package:sweetlifesaver/services/shared_preference_service.dart';
import 'package:sweetlifesaver/utils/logger.dart';

class AuthRepoImpl implements AuthRepo {
  final ApiClient _apiClient = ApiClient();

  @override
  Future<Either<ApiException, LoginRes>> login(LoginReq loginRequest) async {
    try {
      final response = await _apiClient.post(
        "${AppConstants.baseUrl}$loginEndpoint",
        loginReqToJson(loginRequest),
      );
      Logger.write(response.toString());
      return Right(LoginRes.fromJson(response.data!));
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, RegisterRes>> register(
    RegisterReq registrationRequest,
  ) async {
    try {
      final response = await _apiClient.post(
        "${AppConstants.baseUrl}$registrationEndpoint",
        registerReqToJson(registrationRequest),
      );
      Logger.write(response.toString());
      return Right(RegisterRes.fromJson(response.data!));
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, SendOtpRes>> sendOtp(
    SendOtpReq sendOtpReq,
  ) async {
    try {
      final response = await _apiClient.post(
        "${AppConstants.baseUrl}$sendOtpEndpoint",
        sendOtpReqToJson(sendOtpReq),
      );
      Logger.write(response.toString());
      return Right(SendOtpRes.fromJson(response.data!));
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, VerifyOtpRes>> verifyOtp(
    VerifyOtpReq verifyOtpRequest,
  ) async {
    try {
      final response = await _apiClient.post(
        "${AppConstants.baseUrl}$verifyOtpEndpoint",
        verifyOtpReqToJson(verifyOtpRequest),
      );
      Logger.write(response.toString());
      return Right(VerifyOtpRes.fromJson(response.data!));
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, ForgotSendOtpRes>> forgotPasswordSendOtp(
    ForgotSendOtpReq forgotSendOtpReq,
  ) async {
    try {
      final response = await _apiClient.post(
        "${AppConstants.baseUrl}$forgotPasswordSendOtpEndpoint",
        forgotSendOtpReqToJson(forgotSendOtpReq),
      );
      Logger.write(response.toString());
      return Right(ForgotSendOtpRes.fromJson(response.data!));
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, ForgotVerifyOtpRes>> forgotPasswordVerifyOtp(
    ForgotVerifyOtpReq forgotVerifyOtpReq,
  ) async {
    try {
      final response = await _apiClient.post(
        "${AppConstants.baseUrl}$forgotPasswordVerifyOtpEndpoint",
        forgotVerifyOtpReqToJson(forgotVerifyOtpReq),
      );
      Logger.write(response.toString());
      return Right(ForgotVerifyOtpRes.fromJson(response.data!));
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, dynamic>> deleteUser(String id) async {
    try {
      final response = await _apiClient.delete(
        "${AppConstants.baseUrl}${dltuser(id)}",
      );
      Logger.write(response.toString());
      return Right(response.data);
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, UpdateQuestionRes>> updateQuestion(
    List<UpdateQuestionReq> updateQuestionReq,
  ) async {
    final String uid = SharedPreferenceService.getString("uid") ?? "";
    try {
      final response = await _apiClient.put(
        "${AppConstants.baseUrl}${updateQuestionEndpoint(uid)}",
        updateQuestionReqToJson(updateQuestionReq),
      );
      Logger.write(response.toString());
      return Right(UpdateQuestionRes.fromJson(response.data!));
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, UpdateUserDataRes>> updateUserData(
    UpdateUserDataReq updateQuestionReq,
  ) async {
    final String uid = SharedPreferenceService.getString("uid") ?? "";
    try {
      final response = await _apiClient.put(
        "${AppConstants.baseUrl}${updateUserDataEndpoint(uid)}",
        UpdateUserDataReqToJson(updateQuestionReq),
      );
      Logger.write(response.toString());
      return Right(UpdateUserDataRes.fromJson(response.data!));
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, UserDataRes>> getUserData() async {
    final String uid = SharedPreferenceService.getString("uid") ?? "";
    try {
      final response =
          await _apiClient.get("${AppConstants.baseUrl}$getUserDataEndpoint");
      Logger.write(response.toString());
      return Right(UserDataRes.fromJson(response.data!));
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, UserSleepRes>> updateSleepData(
    UserSleepReq userSleepReq,
  ) async {
    final String id = SharedPreferenceService.getString("uid") ?? "";
    try {
      final response = await _apiClient.put(
        "${AppConstants.baseUrl}${updateSleepDataEndpoint(id)}",
        userSleepReqToJson(userSleepReq),
      );
      Logger.write(response.toString());
      return Right(UserSleepRes.fromJson(response.data!));
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, WeightRecomendationRes>>
      weightRecomendation() async {
    try {
      final response = await _apiClient.get("${AppConstants.baseUrl}$weightRecomender");
      Logger.write(response.toString());
      return Right(WeightRecomendationRes.fromJson(response.data!));
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, SocialLoginResponseModel>> socialLogin(SocialLoginRequestModel socialLoginRequestModel) async {
    try {
      final response = await _apiClient.post(
        "${AppConstants.baseUrl}$socialLoginEndpoint",
        socialLoginRequestModel.toJson()
      );
      Logger.printSuccess(response.data.toString());
      return Right(SocialLoginResponseModel.fromJson(response.data!));
    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }
}
