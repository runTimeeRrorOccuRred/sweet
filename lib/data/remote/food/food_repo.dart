import 'package:dartz/dartz.dart';
import 'package:sweetlifesaver/core/core.dart';
import 'package:sweetlifesaver/data/remote/food/model/activity/add_activity_res.dart';
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

abstract class FoodRepo {
  //! food
  Future<Either<ApiException, GetFoodlistRes>> getFoodlist();
  Future<Either<ApiException, CreateFoodRes>> createFood(
    List<CreateFoodReq> createFoodReq,
  );
  Future<Either<ApiException, UpdateFoodRes>> updateFood(
    UpdateFoodReq updateFoodReq,
    String id,
  );
  Future<Either<ApiException, dynamic>> deleteFood(String id);
  Future<Either<ApiException, SearchFoodRes>> searchFood(
    SearchFoodReq searchFoodReq,
    String key,
  );
//! Activity
  Future<Either<ApiException, GetActivityRes>> getActivityList(GetActivityReq getActivityReq);
  Future<Either<ApiException, dynamic>> createActivity(List<AddActivityReq> addActivityReq);
  Future<Either<ApiException, UpdateActivityRes>> updateActivity(UpdateActivityReq updateActivityReq,String id);
  Future<Either<ApiException, dynamic>> deleteActivity(String id);
  Future<Either<ApiException, GetActivityTypeRes>> getActivityType();
  Future<Either<ApiException, SearchActivityAllListRes>> searchActivityAllList(SearchActivityAllListReq searchActivityAllListReq);
  Future<Either<ApiException, CaloryCalculationRes>> caloryCalculation(CaloryCalculationReq caloryCalculationRes);
  Future<Either<ApiException, RecommendedRes>> recomendedActivity();
}
