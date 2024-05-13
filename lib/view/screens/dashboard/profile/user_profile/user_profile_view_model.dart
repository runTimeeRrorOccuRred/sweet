import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:sweetlifesaver/data/remote/auth/auth_repo.dart';
import 'package:sweetlifesaver/data/remote/auth/auth_repo_impl.dart';
import 'package:sweetlifesaver/data/remote/auth/models/user_data_model.dart';
import 'package:sweetlifesaver/helpers/base_screen_view.dart';
import 'package:sweetlifesaver/helpers/base_view_model.dart';
import 'package:sweetlifesaver/utils/utils.dart';
import 'package:sweetlifesaver/view/screens/user_goal/usergoal_view_model.dart';

final userProfileViewModelProvider =
    ChangeNotifierProvider((ref) => UserProfileViewModel(ref: ref));

class UserProfileViewModel extends BaseViewModel<BaseScreenView> {
  Ref ref;
  UserProfileViewModel({required this.ref});
  final AuthRepo _authRepo = AuthRepoImpl();

  UserDataRes? _userDataRes;
  UserDataRes? get userDataRes => _userDataRes;

  List<String>? heightValue;
  String? weightValue;
  bool _isUserLoading = false;
  bool get isUserLoading => _isUserLoading;
  // List<String>? splitedPhoneNumber;
  // String? dialCode;
  // String? countryCode;
  // String? phoneNumber;

  Future<void> getUserData(BuildContext context) async {
    _isUserLoading = true;
    notifyListeners();
    await _authRepo.getUserData().then((value) {
      value.fold(
        (l) => {
          _isUserLoading = false,
          notifyListeners(),
          Fluttertoast.showToast(msg: "SocketException: Failed host lookup: 'z2tbmjixu6.us-east-1.awsapprunner.com' -> ${l.message}"),
        },
        (r)  {
          _userDataRes = r;
          Logger.printInfo(r.toString());
          
            // ref.read(editUserProfileViewModelProvider).setNameControllerValue(r.data?.name ?? '');
            // ref.read(editUserProfileViewModelProvider).setEmailControllerValue(r.data?.email ?? '');
            // ref.read(editUserProfileViewModelProvider).setAgeControllerValue(DateFormat('MM/dd/yyyy').format( DateTime.parse(  r.data?.dob ?? DateTime.now().toString(), ), ),);
            // ref.read(editUserProfileViewModelProvider).setPhoneControllerValue(r.data?.phone?.split(" ").last ?? '');
            // ref.read(editUserProfileViewModelProvider).setCountryCodeNameValue(r.data?.phone?.isNotEmpty ?? false? r.data?.phone?.split(" ").first ?? "": "US");
            // ref.read(editUserProfileViewModelProvider).setCountryDialCodeValue(r.data?.phone?.isNotEmpty ?? false? r.data?.phone?.split(" ").elementAt(1) ?? "": "US");
            // ref.read(editUserProfileViewModelProvider).setImageLink(r.data?.image ?? AppConstants.noimglink);


            heightValue = (r.data?.height).toString().split(".");
            if((heightValue?.isNotEmpty ?? false) && (heightValue?.length ?? 0) == 2) {
              ref.read(userGoalViewModelProvider).setHeightValue(heightValue?[0] ?? '0');
              ref.read(userGoalViewModelProvider).setHeightUnit(heightValue?[1] ?? '0');
            }
            
            weightValue=r.data?.weight.toString();
            ref.read(userGoalViewModelProvider).setWeightValue(weightValue ?? '0');

          _isUserLoading = false;
          notifyListeners();
        },
      );
    });
  }
}
