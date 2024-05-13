import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sweetlifesaver/data/remote/auth/auth_repo.dart';
import 'package:sweetlifesaver/data/remote/auth/auth_repo_impl.dart';
import 'package:sweetlifesaver/data/remote/auth/models/weight_recomendation_model.dart';
import 'package:sweetlifesaver/data/remote/food/food_repo.dart';
import 'package:sweetlifesaver/data/remote/food/food_repo_impl.dart';
import 'package:sweetlifesaver/data/remote/food/model/activity/add_activity_res.dart';
import 'package:sweetlifesaver/data/remote/food/model/activity/add_activity_temp.dart';
import 'package:sweetlifesaver/data/remote/food/model/activity/calory_calculation_res.dart';
import 'package:sweetlifesaver/data/remote/food/model/activity/get_activity_res.dart';
import 'package:sweetlifesaver/data/remote/food/model/activity/get_activitytype_res.dart';
import 'package:sweetlifesaver/data/remote/food/model/activity/recommendation_res.dart';
import 'package:sweetlifesaver/data/remote/food/model/activity/search_activity_alllist_res.dart';
import 'package:sweetlifesaver/data/remote/food/model/activity/update_activity_res.dart';
import 'package:sweetlifesaver/data/remote/food/model/create_food_res.dart';
import 'package:sweetlifesaver/data/remote/food/model/get_food_list_res.dart';
import 'package:sweetlifesaver/data/remote/food/model/search_food_res.dart';
import 'package:sweetlifesaver/data/remote/food/model/update_food_res.dart';
import 'package:sweetlifesaver/helpers/base_view_model.dart';
import 'package:sweetlifesaver/utils/utils.dart';
import 'package:sweetlifesaver/view/screens/dashboard/home/home_view.dart';

final homeViewModelProvider = ChangeNotifierProvider((ref) => HomeViewModel());

class HomeViewModel extends BaseViewModel<BaseScreenView> {
  final FoodRepo _foodRepo = FoodRepoImpl();
  final AuthRepo _authRepo = AuthRepoImpl();
  final RefreshController _homeRefreshController = RefreshController();
  RefreshController get homeRefreshController => _homeRefreshController;

  GetFoodlistRes? _getFoodlistRes;
  GetFoodlistRes? get getFoodlistRes => _getFoodlistRes;
  bool _getFoodListLoading = false;
  bool get getFoodListLoading => _getFoodListLoading;

  SearchFoodRes? _searchFoodRes;
  SearchFoodRes? get searchFoodRes => _searchFoodRes;
  bool _searchFoodLoading = false;
  bool get searchFoodLoading => _searchFoodLoading;

  bool _isCreateFoodLoading = false;
  bool get isCreateFoodLoading => _isCreateFoodLoading;

  WeightRecomendationRes? _weightRecomendationRes;
  WeightRecomendationRes? get weightRecomendationRes => _weightRecomendationRes;
//! Get Food List
  Future<void> getFoodList(BuildContext context) async {
    _getFoodListLoading = true;
    notifyListeners();
    await _foodRepo.getFoodlist().then((value) {
      value.fold((l) {
        _getFoodListLoading = false;
        notifyListeners();
      }, (r) {
        _getFoodListLoading = false;
        _getFoodlistRes = r;
        notifyListeners();
      });
    });
  }

//! Search Food
  Future<void> searchFood(
    BuildContext context,
    SearchFoodReq searchFoodReq,
    String key,
  ) async {
    _searchFoodLoading = true;
    notifyListeners();
    await _foodRepo.searchFood(searchFoodReq, key).then((value) {
      value.fold((l) {
        _searchFoodLoading = false;
        notifyListeners();
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(l.message)),
        );
      }, (r) {
        _searchFoodLoading = false;
        _searchFoodRes = r;
        notifyListeners();
      });
    });
  }

//! Create Food
  final List<CreateFoodReq> _foodlist = [];
  List<CreateFoodReq> get foodlist => _foodlist;

  Future<void> createFood(
    BuildContext context,
    List<CreateFoodReq> createFoodReq,
  ) async {
    BuildContext? dcontext;
    showCupertinoDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        dcontext = context;
        return SizedBox(
          width: 100,
          height: 100,
          child: CupertinoDialogAction(
            child: Container(
              height: 60,
              width: 80,
              decoration: BoxDecoration(
                color: const Color.fromARGB(246, 237, 237, 237),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const CupertinoActivityIndicator(
                radius: 13,
              ),
            ),
          ),
        );
      },
    );
    _isCreateFoodLoading = true;
    notifyListeners();
    await _foodRepo.createFood(createFoodReq).then((value) {
      Navigator.pop(dcontext!);
      value.fold((l) {
        _isCreateFoodLoading = false;
        notifyListeners();
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(l.message)),
        );
      }, (r) {
        _isCreateFoodLoading = true;
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(r.message ?? "Food Created")),
        );

        getFoodList(context);
        _foodlist.clear();
        context.pop();
      });
    });
  }

//! update food
  Future<void> updateFood(
    BuildContext context,
    UpdateFoodReq updateFoodReq,
    String id,
  ) async {
    BuildContext? dcontext;
    showCupertinoDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        dcontext = context;
        return SizedBox(
          width: 100,
          height: 100,
          child: CupertinoDialogAction(
            child: Container(
              height: 60,
              width: 80,
              decoration: BoxDecoration(
                color: const Color.fromARGB(246, 237, 237, 237),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const CupertinoActivityIndicator(
                radius: 13,
              ),
            ),
          ),
        );
      },
    );
    notifyListeners();
    await _foodRepo.updateFood(updateFoodReq, id).then((value) {
      value.fold((l) {
        getFoodList(context);
        Navigator.pop(dcontext!);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(l.message)),
        );
      }, (r) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(r.message ?? "Updated successfully")),
        );
        getFoodList(context);
        Navigator.pop(dcontext!);
        context.pop();
        notifyListeners();
      });
    });
  }

//! delete food
  Future<void> deleteFood(BuildContext context, String id) async {
    BuildContext? dcontext;
    showCupertinoDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        dcontext = context;
        return SizedBox(
          width: 100,
          height: 100,
          child: CupertinoDialogAction(
            child: Container(
              height: 60,
              width: 80,
              decoration: BoxDecoration(
                color: const Color.fromARGB(246, 237, 237, 237),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const CupertinoActivityIndicator(
                radius: 13,
              ),
            ),
          ),
        );
      },
    );
    await _foodRepo.deleteFood(id).then((value) {
      Navigator.pop(dcontext!);
      getFoodList(context);
    });
  }

//* Activity Section ============================================================= >>>>

//! Get Activity-Type
  GetActivityTypeRes? _getActivityTypeRes;
  GetActivityTypeRes? get getActivityTypeRes => _getActivityTypeRes;
  bool _isLoadgetActivityTypeRes = false;
  bool get isLoadgetActivityTypeRes => _isLoadgetActivityTypeRes;

  Future<void> activityType(BuildContext context) async {
    _isLoadgetActivityTypeRes = true;
    notifyListeners();
    await _foodRepo.getActivityType().then((value) {
      value.fold((l) {
        _isLoadgetActivityTypeRes = false;
        notifyListeners();
      }, (r) {
        _isLoadgetActivityTypeRes = false;
        _getActivityTypeRes = r;
        notifyListeners();
      });
    });
  }

//! temp added items to the list
  final List<AddActivityTemp> _tempActivitylist = [];
  List<AddActivityTemp> get tempActivitylist => _tempActivitylist;

//! Create Activity
  final List<AddActivityReq> _activitylist = [];
  Future<void> createActivity(BuildContext context) async {
    _activitylist.clear();
    BuildContext? dcontexti;
    showCupertinoDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        dcontexti = context;
        return SizedBox(
          width: 100,
          height: 100,
          child: CupertinoDialogAction(
            child: Container(
              height: 60,
              width: 80,
              decoration: BoxDecoration(
                color: const Color.fromARGB(246, 237, 237, 237),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const CupertinoActivityIndicator(
                radius: 13,
              ),
            ),
          ),
        );
      },
    );
    _activitylist.addAll(
      _tempActivitylist.map((e) {
        return AddActivityReq(
          activityName: e.activityName,
          activityType: e.activityTypeId,
          me: e.me,
          calories: e.calories,
          duration: e.duration,
          types: e.types,
          level: e.level,
        );
      }),
    );
    notifyListeners();
    await _foodRepo.createActivity(_activitylist).then((value) {
      value.fold((l) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(l.message)),
        );
        Navigator.pop(dcontexti!);
      }, (r) {
        Navigator.pop(dcontexti!);
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Activity Created")),
        );
        getActivityList(
          context,
          GetActivityReq(
            date: DateFormat('yyyy-MM-dd').format(DateTime.now()),
          ),
        );
        _activitylist.clear();
        _tempActivitylist.clear();
        context.pop();
      });
    });
  }

//! Delete Activity
  Future<void> deleteActivity(BuildContext context, String id) async {
    BuildContext? dcontext;
    showCupertinoDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        dcontext = context;
        return SizedBox(
          width: 100,
          height: 100,
          child: CupertinoDialogAction(
            child: Container(
              height: 60,
              width: 80,
              decoration: BoxDecoration(
                color: const Color.fromARGB(246, 237, 237, 237),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const CupertinoActivityIndicator(
                radius: 13,
              ),
            ),
          ),
        );
      },
    );
    await _foodRepo.deleteActivity(id).then((value) {
      Navigator.pop(dcontext!);
      getActivityList(
        context,
        GetActivityReq(
          date: DateFormat('yyyy-MM-dd').format(DateTime.now()),
        ),
      );
    });
  }

  //! Get your Activity-List
  GetActivityRes? _getActivityRes;
  GetActivityRes? get getActivityRes => _getActivityRes;
  bool _getActivityLoading = false;
  bool get getActivityLoading => _getActivityLoading;
  Future<void> getActivityList(
    BuildContext context,
    GetActivityReq getActivityReq,
  ) async {
    _getActivityLoading = true;
    notifyListeners();
    await _foodRepo.getActivityList(getActivityReq).then((value) {
      value.fold((l) {
        _getActivityLoading = false;
        notifyListeners();
      }, (r) {
        _getActivityLoading = false;
        _getActivityRes = r;
        notifyListeners();
      });
    });
  }

//! Activity history
  GetActivityRes? _getActivityHistoryRes;
  GetActivityRes? get getActivityHistoryRes => _getActivityHistoryRes;
  bool _getActivityLoadingHistory = false;
  bool get getActivityLoadingHistory => _getActivityLoadingHistory;
  Future<void> getActivityListHistory(
    BuildContext context,
    GetActivityReq getActivityReq,
  ) async {
    _getActivityLoadingHistory = true;
    notifyListeners();
    await _foodRepo.getActivityList(getActivityReq).then((value) {
      value.fold((l) {
        _getActivityLoadingHistory = false;
        notifyListeners();
      }, (r) {
        _getActivityLoadingHistory = false;
        _getActivityHistoryRes = r;
        notifyListeners();
      });
    });
  }

//! recomended activity
  RecommendedRes? _recommendedRes;
  RecommendedRes? get recommendedRes => _recommendedRes;
  bool _recommendedLoading = false;
  bool get recommendedLoading => _recommendedLoading;
  Future<void> recommendedActivity(BuildContext context) async {
    _recommendedLoading = true;
    notifyListeners();
    await _foodRepo.recomendedActivity().then((value) {
      value.fold((l) {
        _recommendedLoading = false;
        notifyListeners();
      }, (r) {
        _recommendedLoading = false;
        _recommendedRes = r;
        notifyListeners();
      });
    });
  }

//! update Activity
  Future<void> updateActivity(
    BuildContext context,
    UpdateActivityReq updateActivityReq,
    String id,
  ) async {
    BuildContext? dcontext;
    showCupertinoDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        dcontext = context;
        return SizedBox(
          width: 100,
          height: 100,
          child: CupertinoDialogAction(
            child: Container(
              height: 60,
              width: 80,
              decoration: BoxDecoration(
                color: const Color.fromARGB(246, 237, 237, 237),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const CupertinoActivityIndicator(
                radius: 13,
              ),
            ),
          ),
        );
      },
    );
    notifyListeners();
    await _foodRepo.updateActivity(updateActivityReq, id).then((value) {
      value.fold((l) {
        getActivityList(
          context,
          GetActivityReq(
            date: DateFormat('yyyy-MM-dd').format(DateTime.now()),
          ),
        );
        Navigator.pop(dcontext!);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(l.message)),
        );
      }, (r) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(r.message ?? "Updated successfully")),
        );
        getActivityList(
          context,
          GetActivityReq(
            date: DateFormat('yyyy-MM-dd').format(DateTime.now()),
          ),
        );
        Navigator.pop(dcontext!);
        context.pop();
        notifyListeners();
      });
    });
  }

//! search activity
  SearchActivityAllListRes? _searchActivityAllListRes;
  SearchActivityAllListRes? get searchActivityAllListRes =>
      _searchActivityAllListRes;
  bool _searchActivityLoading = false;
  bool get searchActivityLoading => _searchActivityLoading;
  Future<void> searchActivityAllList(
    BuildContext context,
    SearchActivityAllListReq searchActivityAllListReq,
  ) async {
    _searchActivityLoading = true;
    notifyListeners();
    await _foodRepo
        .searchActivityAllList(searchActivityAllListReq)
        .then((value) {
      value.fold((l) {
        _searchActivityLoading = false;
        notifyListeners();
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(l.message)),
        );
      }, (r) {
        _searchActivityLoading = false;
        _searchActivityAllListRes = r;
        notifyListeners();
      });
    });
  }

  //! calory calculation
  CaloryCalculationRes? _caloryCalculationRes;
  CaloryCalculationRes? get caloryCalculationRes => _caloryCalculationRes;
  final bool _caloryCalculationLoading = false;
  bool get caloryCalculationLoading => _caloryCalculationLoading;
  int? _caloryCalculationLoadingindex;
  int? get caloryCalculationLoadingindex => _caloryCalculationLoadingindex;

  Future<void> caloryCalculation(
    int index,
    BuildContext context,
    CaloryCalculationReq caloryCalculationReq,
  ) async {
    _caloryCalculationLoadingindex = index;
    notifyListeners();
    _foodRepo.caloryCalculation(caloryCalculationReq).then((value) {
      value.fold((l) {
        _caloryCalculationLoadingindex = null;
        notifyListeners();
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(l.message)),
        );
      }, (r) {
        _caloryCalculationLoadingindex = null;
        _caloryCalculationRes = r;
        tempActivitylist[index] = tempActivitylist[index].copyWith(
          calories: r.data?.calories,
        );

        notifyListeners();
      });
    });
  }

  //! calory calculation update-page
  CaloryCalculationRes? _updateCaloryCalculationRes;
  CaloryCalculationRes? get updateCaloryCalculationRes =>
      _updateCaloryCalculationRes;
  double? _calories;
  double? get calories => _calories;
  void setCalories(double value) {
    _calories = value;
    notifyListeners();
  }

  Future<void> updateCaloryCalculation(
    BuildContext context,
    CaloryCalculationReq caloryCalculationReq,
  ) async {
    notifyListeners();
    _foodRepo.caloryCalculation(caloryCalculationReq).then((value) {
      value.fold((l) {
        notifyListeners();
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(l.message)),
        );
      }, (r) {
        _updateCaloryCalculationRes = r;
        _calories = r.data?.calories;
        notifyListeners();
      });
    });
  }

//! weight recomendation
  Future<void> weightRecomedation(BuildContext context) async {
    notifyListeners();
    await _authRepo.weightRecomendation().then((value) {
      value.fold((l) {}, (r) {
        _weightRecomendationRes = r;
        if (_weightRecomendationRes?.data?.healthGoalOptionChoosen ?? false) {
          showDialog(
            barrierDismissible: false,
            context: context,
            builder: (context) {
              return Dialog(
                backgroundColor: const Color.fromARGB(245, 243, 243, 240),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: CustomAlertDialog(),
              );
            },
          );
        }

        notifyListeners();
      });
    });
  }
}
