import 'package:flutter/material.dart';
import 'package:sweetlifesaver/data/remote/auth/auth_repo.dart';
import 'package:sweetlifesaver/data/remote/auth/auth_repo_impl.dart';
import 'package:sweetlifesaver/data/remote/auth/models/registration_model.dart';
import 'package:sweetlifesaver/data/remote/auth/models/send_otp_model.dart';
import 'package:sweetlifesaver/data/remote/auth/models/verify_otp_model.dart';
import 'package:sweetlifesaver/helpers/base_view_model.dart';
import 'package:sweetlifesaver/services/shared_preference_service.dart';
import 'package:sweetlifesaver/utils/utils.dart';
import 'package:sweetlifesaver/view/screens/user_goal/usergoal_view_model.dart';

final createYourAccountViewModelProvider =
    ChangeNotifierProvider((ref) => CreateYourAccountViewModel(ref));

class CreateYourAccountViewModel extends BaseViewModel<BaseScreenView> {
  Ref ref;
  CreateYourAccountViewModel(this.ref);
  final AuthRepo _authRepo = AuthRepoImpl();

  //! Register
  final RegisterReq _registerReq = const RegisterReq();
  RegisterReq get registerRequest => _registerReq;

  RegisterRes? _registerRes;
  RegisterRes? get registerRes => _registerRes;

  bool _isReisterLoading = false;
  bool get isReisterLoading => _isReisterLoading;

  Future<void> register(RegisterReq registerReq, BuildContext context) async {
    _isReisterLoading = true;
    notifyListeners();
    await _authRepo.register(registerReq).then((value) {
      _isReisterLoading = false;
      notifyListeners();
      return value.fold((l) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: kGreen,
            content: Text(l.message,
            style: const TextStyle(color: kGrey),)),
        );
      }, (r) {
        _isReisterLoading = false;
        notifyListeners();
        _registerRes = r;
        context.pushNamed(
          AppRoute.verifyView.name,
          pathParameters: {
            'email': registerReq.email ?? "",
          },
        );
        sendOtp(
          SendOtpReq(
            email: registerReq.email,
            role: 'user',
          ),
          context,
        );
      });
    });
  }

  //! send otp
  final SendOtpReq _sendOtpReq = const SendOtpReq();
  SendOtpReq get sendOtpReq => _sendOtpReq;

  SendOtpRes? _sendOtpRes;
  SendOtpRes? get sendOtpRes => _sendOtpRes;

  bool _isSendOtpLoading = false;
  bool get isSendOtpLoading => _isSendOtpLoading;

  Future<void> sendOtp(SendOtpReq sendOtpReq, BuildContext context) async {
    _isSendOtpLoading = true;
    notifyListeners();
    await _authRepo.sendOtp(sendOtpReq).then((value) {
      return value.fold((l) {
        _isSendOtpLoading = false;
        notifyListeners();
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(l.message)),
        );
      }, (r) {
        _isSendOtpLoading = false;
        notifyListeners();
        _sendOtpRes = r;
      });
    });
  }

//! verify otp
  final VerifyOtpReq _verifyOtpReq = const VerifyOtpReq();
  VerifyOtpReq get verifyOtpReq => _verifyOtpReq;

  VerifyOtpRes? _verifyOtpRes;
  VerifyOtpRes? get verifyOtpRes => _verifyOtpRes;

  bool _isVerifyOtpLoading = false;
  bool get isVerifyOtpLoading => _isVerifyOtpLoading;

  Future<void> verifyOtp(
    VerifyOtpReq verifyOtpReq,
    BuildContext context,
  ) async {
    _isVerifyOtpLoading = true;
    notifyListeners();
    await _authRepo.verifyOtp(verifyOtpReq).then((value) {
      return value.fold((l) {
        _isVerifyOtpLoading = false;
        notifyListeners();
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(l.message)),
        );
      }, (r) {
        _isVerifyOtpLoading = false;
        context.goNamed(AppRoute.paymentPlan.name);
        notifyListeners();
        _verifyOtpRes = r;
        SharedPreferenceService.setString(
          'token',
          r.data?.tokens?.access?.token ?? "",
        );
        SharedPreferenceService.setString(
          'uid',
          r.data?.id ?? "",
        );
        SharedPreferenceService.setString(
          'isOldUser',
          "true",
        );
        ref.read(userGoalViewModelProvider).updateUserData(context);
        ref.read(userGoalViewModelProvider).updateQuestionData(context);
      });
    });
  }

  //! Delete user
  Future<void> deleteUser(String id) async {
    await _authRepo.deleteUser(id);
  }
}
