import 'package:dartz/dartz.dart';
import 'package:sweetlifesaver/core/core.dart';
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

abstract class AuthRepo {
  Future<Either<ApiException, LoginRes>> login(LoginReq loginRequest);
  Future<Either<ApiException, RegisterRes>> register(RegisterReq registrationRequest);
  Future<Either<ApiException, SendOtpRes>> sendOtp(SendOtpReq verifyOtpRequest);
  Future<Either<ApiException, VerifyOtpRes>> verifyOtp(VerifyOtpReq verifyOtpRequest);
  Future<Either<ApiException, ForgotSendOtpRes>> forgotPasswordSendOtp(ForgotSendOtpReq verifyOtpRequest);
  Future<Either<ApiException, ForgotVerifyOtpRes>> forgotPasswordVerifyOtp(ForgotVerifyOtpReq updatePasswordRequest);
  Future<Either<ApiException, dynamic>> deleteUser(String id);
  Future<Either<ApiException, UpdateQuestionRes>> updateQuestion(List<UpdateQuestionReq> updateQuestionReq);
    Future<Either<ApiException, UpdateUserDataRes>> updateUserData(UpdateUserDataReq updateQuestionReq);
  Future<Either<ApiException, UserDataRes>> getUserData();
  Future<Either<ApiException, UserSleepRes>> updateSleepData(UserSleepReq userSleepReq);
    Future<Either<ApiException, WeightRecomendationRes>> weightRecomendation();
  Future<Either<ApiException, SocialLoginResponseModel>> socialLogin(SocialLoginRequestModel socialLoginRequestModel);
}
