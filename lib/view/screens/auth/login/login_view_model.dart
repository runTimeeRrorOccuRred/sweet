// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:sweetlifesaver/data/remote/auth/auth_repo.dart';
import 'package:sweetlifesaver/data/remote/auth/auth_repo_impl.dart';
import 'package:sweetlifesaver/data/remote/auth/models/login_model.dart';
import 'package:sweetlifesaver/data/remote/auth/models/send_otp_model.dart';
import 'package:sweetlifesaver/data/remote/auth/models/update_sleep_model.dart';
import 'package:sweetlifesaver/data/remote/auth/models/user_data_model.dart';
import 'package:sweetlifesaver/helpers/base_view_model.dart';
import 'package:sweetlifesaver/services/shared_preference_service.dart';
import 'package:sweetlifesaver/utils/utils.dart';
import 'package:sweetlifesaver/view/screens/auth/create_your_account/create_your_account_view_model.dart';
import 'package:sweetlifesaver/view/screens/user_goal/usergoal_view_model.dart';

final loginViewModelProvider =
    ChangeNotifierProvider((ref) => LoginViewModel(ref: ref));

class LoginViewModel extends BaseViewModel<BaseScreenView> {
  Ref ref;

  LoginViewModel({required this.ref});
  final AuthRepo _authRepo = AuthRepoImpl();

  LoginReq _loginReq = const LoginReq();
  LoginRes? _loginRes;
  LoginReq? get loginReq => _loginReq;
  LoginRes? get loginRes => _loginRes;

  bool _isLoginLoading = false;
  bool get isLoginLoading => _isLoginLoading;

  Future<void> login(LoginReq loginReq, BuildContext context) async {
    _isLoginLoading = true;
    notifyListeners();
    await _authRepo.login(loginReq).then((value) {
      _isLoginLoading = false;
      notifyListeners();
      value.fold((l) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(l.message)),
        );
      }, (r) {
        // ScaffoldMessenger.of(context).showSnackBar(
        //   SnackBar(
        //     backgroundColor: kGreen,
        //     content: Text(
        //       r.message ?? "Login Success",
        //       style: const TextStyle(color: kGrey),
        //     ),
        //   ),
        // );
        if (r.code == "200") {
          ref.read(userGoalViewModelProvider).setisReStartAfresh(false);
          context.pushNamed(AppRoute.dashboard.name);
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
          if (SharedPreferenceService.getString('questionData') != null &&
              SharedPreferenceService.getString('userData') != null) {
            ref.read(userGoalViewModelProvider).updateQuestionData(context);
            ref.read(userGoalViewModelProvider).updateUserData(context);
          }
        } else if (r.code == "203") {
          context.pushNamed(
            AppRoute.verifyView.name,
            pathParameters: {
              'email': loginReq.email ?? "",
            },
          );
          ref.read(createYourAccountViewModelProvider).sendOtp(
                SendOtpReq(
                  email: loginReq.email,
                  role: 'user',
                ),
                context,
              );
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(r.message ?? "Login Success"),
            ),
          );
        }
        _loginRes = r;
        notifyListeners();
      });
    });
  }

  UserDataRes? _userDataRes;
  UserDataRes? get userDataRes => _userDataRes;

  bool _isUserDataLoading = false;
  bool get isUserDataLoading => _isUserDataLoading;

  // get user data
  Future<void> getUserData(BuildContext context) async {
    _isUserDataLoading = true;
    notifyListeners();
    await _authRepo.getUserData().then((value) {
      value.fold((l) {
        _isUserDataLoading = false;
        notifyListeners();
        Fluttertoast.showToast(
          msg:
              "SocketException: Failed host lookup: 'z2tbmjixu6.us-east-1.awsapprunner.com' -> ${l.message}",
        );
      }, (r) {
        _isUserDataLoading = false;
        _userDataRes = r;

        notifyListeners();
      });
    });
  }

  // update user data @@sleep
  Future<void> updateUserDataSleep(
    BuildContext context,
    UserSleepReq userSleepReq,
  ) async {
    notifyListeners();
    await _authRepo.updateSleepData(userSleepReq).then((value) {
      value.fold((l) {
        getUserData(context);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: kGreen,
            content: Text(
              l.message,
              style: const TextStyle(color: kGrey),
            ),
          ),
        );
      }, (r) {
        Fluttertoast.showToast(
          backgroundColor: kGreen,
          msg: r.message ?? "Your preferences were updated successfully!",
          textColor: kGrey,
          gravity: ToastGravity.BOTTOM,
        );
        getUserData(context);
        notifyListeners();
      });
    });
  }
}
