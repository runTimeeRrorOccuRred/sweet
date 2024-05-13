import 'package:flutter/material.dart';
import 'package:sweetlifesaver/data/remote/auth/auth_repo.dart';
import 'package:sweetlifesaver/data/remote/auth/auth_repo_impl.dart';
import 'package:sweetlifesaver/data/remote/auth/models/forget_password_model.dart';
import 'package:sweetlifesaver/helpers/base_view_model.dart';
import 'package:sweetlifesaver/utils/utils.dart';

final forgotPasswordViewModelProvider =
    ChangeNotifierProvider((ref) => ForgotPasswordViewModel());

class ForgotPasswordViewModel extends BaseViewModel<BaseScreenView> {
  final AuthRepo _authRepo = AuthRepoImpl();
  bool? _isforgotPasswordSendOtp = false;
  bool? get isforgotPasswordSendOtp => _isforgotPasswordSendOtp;

  // forgot password send otp  ==>
  Future<void> forgotPasswordSendOtp(
    ForgotSendOtpReq forgotSendOtpReq,
    BuildContext context,
  ) async {
    _isforgotPasswordSendOtp = true;
    notifyListeners();
    await _authRepo.forgotPasswordSendOtp(forgotSendOtpReq).then((value) {
      _isforgotPasswordSendOtp = false;
      notifyListeners();
      value.fold((l) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(l.message)),
        );
      }, (r) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(r.message ?? "Forgot Password Success")),
        );
        context.pushNamed(
          AppRoute.forgotverifyPassword.name,
          pathParameters: {
            'email': forgotSendOtpReq.email ?? "",
          },
        );
        notifyListeners();
      });
    });
  }

  // forgot password verify otp  ==>
  bool? _isforgotPasswordVerifyOtp = false;
  bool? get isforgotPasswordVerifyOtp => _isforgotPasswordVerifyOtp;

  Future<void> forgotPasswordVerifyOtp(
    ForgotVerifyOtpReq forgotVerifyOtpReq,
    BuildContext context,
  ) async {
    _isforgotPasswordVerifyOtp = true;
    notifyListeners();
    await _authRepo.forgotPasswordVerifyOtp(forgotVerifyOtpReq).then((value) {
      _isforgotPasswordVerifyOtp = false;
      notifyListeners();
      value.fold((l) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(l.message)),
        );
      }, (r) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(r.message ?? "Forgot Password Success")),
        );
        context.goNamed(AppRoute.loginView.name);
        notifyListeners();
      });
    });
  }
}
