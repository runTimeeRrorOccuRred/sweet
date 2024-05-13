import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:sweetlifesaver/data/remote/auth/auth_repo.dart';
import 'package:sweetlifesaver/data/remote/auth/auth_repo_impl.dart';
import 'package:sweetlifesaver/data/remote/auth/models/update_question_model.dart';
import 'package:sweetlifesaver/data/remote/auth/models/update_userdata_model.dart';
import 'package:sweetlifesaver/data/remote/questions/model/activeAction_model.dart';
import 'package:sweetlifesaver/data/remote/questions/model/dailyEatingRoutine_model.dart';
import 'package:sweetlifesaver/data/remote/questions/model/foodAllergie_model.dart';
import 'package:sweetlifesaver/data/remote/questions/model/foodPreferences_model.dart';
import 'package:sweetlifesaver/data/remote/questions/model/healthCondition_model.dart';
import 'package:sweetlifesaver/data/remote/questions/model/healthGoal_model.dart';
import 'package:sweetlifesaver/data/remote/questions/model/preferredDiet_model.dart';
import 'package:sweetlifesaver/data/remote/questions/model/questionlist_model.dart';
import 'package:sweetlifesaver/data/remote/questions/question_repo.dart';
import 'package:sweetlifesaver/data/remote/questions/question_repo_impl.dart';
import 'package:sweetlifesaver/helpers/base_screen_view.dart';
import 'package:sweetlifesaver/helpers/base_view_model.dart';
import 'package:sweetlifesaver/services/shared_preference_service.dart';
import 'package:sweetlifesaver/utils/colors.dart';

final userGoalViewModelProvider =
    ChangeNotifierProvider((ref) => UserGoalViewModel(ref: ref));

class UserGoalViewModel extends BaseViewModel<BaseScreenView> {
  Ref ref;
  UserGoalViewModel({required this.ref});
  final QuestionRepo _questionRepo = QuestionRepoImpl();
  final AuthRepo _authRepo = AuthRepoImpl();
  int _selectedPage = 0;
  int get selectedPage => _selectedPage;
  QuestionListRes? _questionListRes;
  HealthGoalRes? _healthGoalRes;
  HealthConditionRes? _healthConditionRes;
  PreferdDietRes? _preferdDietRes;
  FoodAllergieModel? _foodAllergieModel;
  FoodPreferencesRes? _foodPreferencesRes;
  ActiveActionRes? _activeActionRes;
  DailyEatingRoutineRes? _dailyEatingRoutineRes;

  QuestionListRes? get questionListRes => _questionListRes;
  HealthGoalRes? get healthGoalRes => _healthGoalRes;
  HealthConditionRes? get healthConditionRes => _healthConditionRes;
  PreferdDietRes? get preferdDietRes => _preferdDietRes;
  FoodAllergieModel? get foodAllergieModel => _foodAllergieModel;
  FoodPreferencesRes? get foodPreferencesRes => _foodPreferencesRes;
  ActiveActionRes? get activeActionRes => _activeActionRes;
  DailyEatingRoutineRes? get dailyEatingRoutineRes => _dailyEatingRoutineRes;

  bool _LoadQuestionListRes = false;
  bool get isLoadQuestionListRes => _LoadQuestionListRes;

  bool _LoadHealthGoalRes = false;
  bool get isLoadHealthGoalRes => _LoadHealthGoalRes;

  bool _LoadHealthConditionRes = false;
  bool get isLoadHealthConditionRes => _LoadHealthConditionRes;

  bool _LoadPreferdDietRes = false;
  bool get isLoadPreferdDietRes => _LoadPreferdDietRes;

  bool _LoadFoodAllergieModel = false;
  bool get isLoadFoodAllergieModel => _LoadFoodAllergieModel;

  bool _LoadFoodPreferencesRes = false;
  bool get isLoadFoodPreferencesRes => _LoadFoodPreferencesRes;

  bool _LoadActiveActionRes = false;
  bool get isLoadActiveActionRes => _LoadActiveActionRes;

  bool _LoadDailyEatingRoutineRes = false;
  bool get isLoadDailyEatingRoutineRes => _LoadDailyEatingRoutineRes;

  //** local question ans managment  */
  final List<Answear> _userHealthGoalans = [];
  List<Answear> get userHealthGoalans => _userHealthGoalans;

  final List<Answear> _healthConditionans = [];
  List<Answear> get healthConditionans => _healthConditionans;

  final List<Answear> _preferdDietans = [];
  List<Answear> get preferdDietans => _preferdDietans;

  final List<Answear> _foodAllergieans = [];
  List<Answear> get foodAllergieans => _foodAllergieans;

  final List<Answear> _foodPreferencesans = [];
  List<Answear> get foodPreferencesans => _foodPreferencesans;

  final List<Answear> _activeActionans = [];
  List<Answear> get activeActionans => _activeActionans;

  final List<Answear> _dailyEatingRoutineans = [];
  List<Answear> get dailyEatingRoutineans => _dailyEatingRoutineans;

  final List<String> _Skipthis = [];
  List<String> get skipthis => _Skipthis;

  bool _isReStart_afresh = false;
  bool get isReStart_afresh => _isReStart_afresh;

  void setisReStartAfresh(bool isRefresh) {
    _isReStart_afresh = isRefresh;
    notifyListeners();
  }

  //** local question ans managment  */

  String _dbo = "";
  String? get dbo => _dbo;
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
  String? _weightUnit = "Ib";
  String? get weightUnit => _weightUnit;
  String? _fetusesCount = "1";
  String? get fetusesCount => _fetusesCount;

  void setDob(String value) {
    _dbo = value;
    notifyListeners();
  }

  // setter for user data
  void setSelectedPage(int value) {
    _selectedPage = value;
    notifyListeners();
  }

  void setGender(String value) {
    _gender = value;
    notifyListeners();
  }

  void setHeightValue(String value) {
    _heightValue = value;
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

  void setFetuses(String count) {
    _fetusesCount = count;
    notifyListeners();
  }

  //clear all data from local
  void clearAllData() {
    _selectedPage = 0;
    _userHealthGoalans.clear();
    _healthConditionans.clear();
    _preferdDietans.clear();
    _foodAllergieans.clear();
    _foodPreferencesans.clear();
    _activeActionans.clear();
    _dailyEatingRoutineans.clear();
    _dbo = "";
    _gender = "Male";
    _heightValue = "0";
    _heightUnit = "0";
    _heightcmValue = "0";
    _heightUnitName = "1";
    _weightValue = "0";
    _weightUnit = "Ib";
    _fetusesCount = "1";
    SharedPreferenceService.remove("token");
    SharedPreferenceService.remove("uid");
    SharedPreferenceService.remove("questionData");
    SharedPreferenceService.remove("userData");
    notifyListeners();
  }

  Future<void> questionList(BuildContext context) async {
    _LoadQuestionListRes = true;
    notifyListeners();
    await _questionRepo.questionList().then((value) {
      return value.fold((l) {
        _LoadQuestionListRes = false;
        notifyListeners();
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(l.message)),
        );
      }, (r) {
        _questionListRes = r;
        notifyListeners();
        if (r.data != null) {
          for (int i = 0; i < r.data!.length; i++) {
            if (i == 0) {
              healthGoal(context, r.data![i].id ?? "");
            }
            if (i == 1) {
              healthCondition(context, r.data![i].id ?? "");
            }
            if (i == 2) {
              preferdDiet(context, r.data![i].id ?? "");
            }
            if (i == 3) {
              foodAllergie(context, r.data![i].id ?? "");
            }
            if (i == 4) {
              foodPreferences(context, r.data![i].id ?? "");
            }
            if (i == 5) {
              activeAction(context, r.data![i].id ?? "");
            }
            if (i == 6) {
              dailyEatingRoutine(context, r.data![i].id ?? "");
            }
          }
          _LoadQuestionListRes = false;
          notifyListeners();
        }
      });
    });
  }

  Future<void> healthGoal(BuildContext context, String qid) async {
    _LoadHealthGoalRes = true;
    notifyListeners();
    await _questionRepo.healthGoal(qid).then((value) {
      return value.fold((l) {
        _LoadHealthGoalRes = false;
        notifyListeners();
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(l.message)),
        );
      }, (r) {
        _userHealthGoalans.clear();
        _LoadHealthGoalRes = false;
        _healthGoalRes = r;
        _userHealthGoalans.add(
          const Answear(
            answerId: "",
            answer: "",
            subAnswer: "",
            slug: "",
          ),
        );
        notifyListeners();
      });
    });
  }

  void healthConditionPreData() {
    if ((_userHealthGoalans.first.answer ?? "").contains("Pre-Diabetes")) {
      _healthConditionans.first = const Answear(
        answerId: "",
        answer: "",
        subAnswer: "",
        slug: "",
      );
    } else if ((_userHealthGoalans.first.answer ?? "")
        .contains("Gestational")) {
      _healthConditionans.first = Answear(
        answerId: _healthConditionRes?.data?.first.answersData?[2].id,
        answer: "1",
        subAnswer: "",
        slug: _healthConditionRes?.data?.first.answersData?[2].slug,
      );
    } else {
      _healthConditionans.first = Answear(
        answerId: _healthConditionRes?.data?.first.answersData?.first.id,
        answer: _healthConditionRes?.data?.first.answersData?.first.answer,
        subAnswer:
            _healthConditionRes?.data?.first.answersData?.first.subAnswer,
        slug: _healthConditionRes?.data?.first.answersData?.first.slug,
      );
    }
    notifyListeners();
  }

  Future<void> healthCondition(BuildContext context, String qid) async {
    _LoadHealthConditionRes = true;
    notifyListeners();
    await _questionRepo.healthCondition(qid).then((value) {
      return value.fold((l) {
        _LoadHealthConditionRes = false;
        notifyListeners();
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(l.message)),
        );
      }, (r) {
        _healthConditionans.clear();
        _LoadHealthConditionRes = false;
        _healthConditionRes = r;
        _healthConditionans.add(
          Answear(
            answerId: r.data?.first.answersData?.first.id,
            answer: r.data?.first.answersData?.first.answer,
            subAnswer: r.data?.first.answersData?.first.subAnswer,
            slug: r.data?.first.answersData?.first.slug,
          ),
        );

        notifyListeners();
      });
    });
  }

  Future<void> preferdDiet(BuildContext context, String qid) async {
    _LoadPreferdDietRes = true;
    notifyListeners();
    await _questionRepo.preferredDiet(qid).then((value) {
      return value.fold((l) {
        _LoadPreferdDietRes = false;
        notifyListeners();
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(l.message)),
        );
      }, (r) {
        _preferdDietans.clear();
        _LoadPreferdDietRes = false;
        notifyListeners();
        _preferdDietRes = r;
        _preferdDietans.add(
          const Answear(
            answerId: "",
            answer: "",
            subAnswer: "",
            slug: "",
          ),
        );
        notifyListeners();
      });
    });
  }

  Future<void> foodAllergie(BuildContext context, String qid) async {
    _LoadFoodAllergieModel = true;
    notifyListeners();
    await _questionRepo.foodAllergie(qid).then((value) {
      return value.fold((l) {
        _LoadFoodAllergieModel = false;
        notifyListeners();
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(l.message)),
        );
      }, (r) {
        _foodAllergieans.clear();
        _LoadFoodAllergieModel = false;
        notifyListeners();
        _foodAllergieModel = r;
      });
    });
  }

  Future<void> foodPreferences(BuildContext context, String qid) async {
    _LoadFoodPreferencesRes = true;
    notifyListeners();
    await _questionRepo.foodPreferences(qid).then((value) {
      return value.fold((l) {
        _LoadFoodPreferencesRes = false;
        notifyListeners();
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(l.message)),
        );
      }, (r) {
        _foodPreferencesans.clear();
        _LoadFoodPreferencesRes = false;
        notifyListeners();
        _foodPreferencesRes = r;
        // _foodPreferencesans.add(
        //   const Answear(
        //     answerId: "",
        //     answer: "",
        //     subAnswer: "",
        //     slug: "",
        //   ),
        // );
      });
    });
  }

  Future<void> activeAction(BuildContext context, String qid) async {
    _LoadActiveActionRes = true;
    notifyListeners();
    await _questionRepo.activeAction(qid).then((value) {
      return value.fold((l) {
        _LoadActiveActionRes = false;
        notifyListeners();
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(l.message)),
        );
      }, (r) {
        _activeActionans.clear();
        _LoadActiveActionRes = false;
        notifyListeners();
        _activeActionRes = r;
        _activeActionans.add(
          const Answear(
            answerId: "",
            answer: "",
            subAnswer: "",
          ),
        );
      });
    });
  }

  Future<void> dailyEatingRoutine(BuildContext context, String qid) async {
    _LoadDailyEatingRoutineRes = true;
    notifyListeners();
    await _questionRepo.dailyEatingRoutine(qid).then((value) {
      return value.fold((l) {
        _LoadDailyEatingRoutineRes = false;
        notifyListeners();
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(l.message)),
        );
      }, (r) {
        _dailyEatingRoutineans.clear();
        _LoadDailyEatingRoutineRes = false;
        for (int i = 0; i < (r.data?.first.answersData?.length ?? 0); i++) {
          _dailyEatingRoutineans.add(
            Answear(
              answerId: r.data?.first.answersData?[i].id,
              answer: r.data?.first.answersData?[i].answer,
              subAnswer: convertDateTimeToTimeString(initialtime(i)),
              slug: r.data?.first.answersData?[i].slug,
              image: r.data?.first.answersData?[i].icon,
            ),
          );
        }
        notifyListeners();
        _dailyEatingRoutineRes = r;
      });
    });
  }

  //! update question ans using shared pref
  Future<void> savelocalStorage(BuildContext context) async {
    final List<UpdateQuestionReq> updateQuestionlist = [
      UpdateQuestionReq(
        questionId: _questionListRes?.data?[0].id,
        answear: _userHealthGoalans,
      ),
      UpdateQuestionReq(
        questionId: _questionListRes?.data?[1].id,
        answear: _healthConditionans,
      ),
      UpdateQuestionReq(
        questionId: _questionListRes?.data?[2].id,
        answear: _preferdDietans,
      ),
      UpdateQuestionReq(
        questionId: _questionListRes?.data?[3].id,
        answear: _foodAllergieans,
      ),
      UpdateQuestionReq(
        questionId: _questionListRes?.data?[4].id,
        answear: _foodPreferencesans,
      ),
      UpdateQuestionReq(
        questionId: _questionListRes?.data?[5].id,
        answear: _activeActionans,
      ),
      UpdateQuestionReq(
        questionId: _questionListRes?.data?[6].id,
        answear: _dailyEatingRoutineans,
      ),
    ];
    final UpdateUserDataReq updateUserDataReq = UpdateUserDataReq(
      dob: _dbo,
      height:
          _heightUnitName == "1" ? "$heightValue.$heightUnit" : _heightcmValue,
      unitOfHeight: _heightUnitName == "1" ? "ft" : "cm",
      weight: _weightValue,
      unitOfweight: _weightUnit,
      gender: _gender,
    );
    notifyListeners();
    SharedPreferenceService.setString(
      "questionData",
      updateQuestionReqToJson(updateQuestionlist),
    );
    SharedPreferenceService.setString(
      "userData",
      UpdateUserDataReqToJson(updateUserDataReq),
    );
  }

  Future<void> updateQuestionData(BuildContext context) async {
    final String? value = SharedPreferenceService.getString("questionData");
    if (value != null) {
      final List<UpdateQuestionReq> updateQuestionReq =
          updateQuestionReqFromJson(value);
      await _authRepo.updateQuestion(updateQuestionReq).then((value) {
        return value.fold((l) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(l.message)),
          );
        }, (r) {
          SharedPreferenceService.remove("questionData");
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              backgroundColor: kGreen,
              content: Text(
                "Your preferences were updated successfully!",
                style: TextStyle(color: kGrey),
              ),
            ),
          );
        });
      });
    }
  }

  Future<void> updateUserData(BuildContext context) async {
    final String? value = SharedPreferenceService.getString("userData");
    if (value != null) {
      await _authRepo
          .updateUserData(
        UpdateUserDataReqFromJson(value),
      )
          .then((value) {
        return value.fold((l) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(l.message)),
          );
        }, (r) {
          SharedPreferenceService.remove("userData");
          // ScaffoldMessenger.of(context).showSnackBar(
          //   SnackBar(content: Text(r.message ?? "Data Updated")),
          // );
          notifyListeners();
        });
      });
    }
  }

  Future<void> editProfileData(
    BuildContext context,
    UpdateUserDataReq updateUserDataReq,
  ) async {
    await _authRepo
        .updateUserData(
      updateUserDataReq,
    )
        .then((value) {
      return value.fold((l) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(l.message)),
        );
      }, (r) {
        SharedPreferenceService.remove("userData");
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(r.message ?? "Data Updated")),
        );
        notifyListeners();
      });
    });
  }

  DateTime initialtime(int index) {
    switch (index) {
      case 0:
        return convertTimeStringToDateTime('7:00 AM');
      case 1:
        return convertTimeStringToDateTime('10:00 AM');
      case 2:
        return convertTimeStringToDateTime('12:00 PM');
      case 3:
        return convertTimeStringToDateTime('4:00 PM');
      case 4:
        return convertTimeStringToDateTime('7:00 PM');
      case 5:
        return convertTimeStringToDateTime('10:00 PM');
      default:
        return convertTimeStringToDateTime('7:00 AM');
    }
  }

  DateTime convertTimeStringToDateTime(String timeString) {
    final DateFormat format = DateFormat('h:mm a');
    final DateTime dateTime = format.parse(timeString);
    return dateTime;
  }

// convert datetime to time string
  String convertDateTimeToTimeString(DateTime dateTime) {
    final DateFormat format = DateFormat('h:mm a');
    final String timeString = format.format(dateTime);
    return timeString;
  }
}
