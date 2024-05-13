import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:sweetlifesaver/data/remote/auth/auth_repo.dart';
import 'package:sweetlifesaver/data/remote/auth/auth_repo_impl.dart';
import 'package:sweetlifesaver/data/remote/auth/models/update_userdata_model.dart';
import 'package:sweetlifesaver/helpers/base_screen_view.dart';
import 'package:sweetlifesaver/helpers/base_view_model.dart';
import 'package:sweetlifesaver/services/shared_preference_service.dart';
import 'package:sweetlifesaver/utils/colors.dart';

final editUserProfileViewModelProvider = ChangeNotifierProvider((ref) => EditUserProfileViewModel(ref: ref ));

class EditUserProfileViewModel extends BaseViewModel<BaseScreenView> {
  Ref ref;
  EditUserProfileViewModel({required this.ref});  
  final RefreshController _editUserProfileRefreshController = RefreshController();
  RefreshController get editUserProfileRefreshController => _editUserProfileRefreshController;
   final AuthRepo _authRepo = AuthRepoImpl();


  bool _isLoading = false;
  bool get isLoading => _isLoading;

  TextEditingController _nameController =TextEditingController();
  TextEditingController _emailController =TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _ageController = TextEditingController();

  String? _selectedCountryCodeName ;
  String? _selectedCountryDialCode ;


  TextEditingController get nameController => _nameController;
  TextEditingController get emailController => _emailController;
  TextEditingController get phoneController => _phoneController;
  TextEditingController get ageController => _ageController;

  String? get selectedCountryCodeName => _selectedCountryCodeName;
  String? get selectedCountryDialCode => _selectedCountryDialCode;

  String? _gender = "Male";
  String? get gender => _gender;
  // height ft
  String? _heightValue = "0";
  String? get heightValue => _heightValue;
  String? _heightUnit = "0";
  String? get heightUnit => _heightUnit;
  // height cm
  String _heightcmValue = "0";
  String get heightcmValue => _heightcmValue;
  String _heightUnitName = "1";
  String get heightUnitName => _heightUnitName;
  // weight
  String? _weightValue = "0";
  String? get weightValue => _weightValue;
  String? _weightUnit = "kg";
  String? get weightUnit => _weightUnit;


  String? _imageLink;
  String? get imageLink => _imageLink; 

  void setHeightValue(String value) {
    _heightValue = value;
    notifyListeners();
  }

  void setNameControllerValue(String value) {
    _nameController = TextEditingController(text: value);
    notifyListeners();
  }

  void setAgeControllerValue(String value) {
    _ageController = TextEditingController(text: value);
    notifyListeners();
  }

  void setPhoneControllerValue(String value) {
    _phoneController = TextEditingController(text: value);
    notifyListeners();
  }

  void setEmailControllerValue(String value) {
    _emailController = TextEditingController(text: value);
    notifyListeners();
  }

  void setCountryCodeNameValue(String value) {
    _selectedCountryCodeName = value;
    notifyListeners();
  }

  void setCountryDialCodeValue(String value) {
    _selectedCountryDialCode = value;
    notifyListeners();
  }

  void setHeightUnit(String value) {
    _heightUnit = value;
    notifyListeners();
  }

  void setheightcm(String value) {
    _heightcmValue = value;
    notifyListeners();
  }

  void setHeightUnitName(String value) {
    _heightUnitName = value;
    notifyListeners();
  }

  void setWeightValue(String value) {
    _weightValue = value;
    notifyListeners();
  }

  void setWeightUnit(String value) {
    _weightUnit = value;
    notifyListeners();
  }


    void setGender(String value) {
    _gender = value;
    notifyListeners();
  }


    void setImageLink(String img) {
    _imageLink = img;
    notifyListeners();
  }



    //==Edit User profile data
      Future<void> editUserProfile(BuildContext context, UpdateUserDataReq updateUserDataReq) async {
      _isLoading = true;
      notifyListeners(); 
      await   _authRepo.updateUserData( updateUserDataReq,).then((value) {
          _isLoading = false;
          notifyListeners();
        return value.fold((l) {
          Fluttertoast.showToast(msg: "SocketException: Failed host lookup: 'z2tbmjixu6.us-east-1.awsapprunner.com' -> ${l.message}");
        }, (r) {
          SharedPreferenceService.remove("userData");
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: kGreen,
              content: Text(r.message ?? "Data Updated",
            style:const TextStyle(color: kGrey),)),
          );
          notifyListeners();
        });
      });
    notifyListeners();
  }



  
}
