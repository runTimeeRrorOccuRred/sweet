import 'package:dartz/dartz.dart';
import 'package:sweetlifesaver/core/core.dart';
import 'package:sweetlifesaver/core/endpoints.dart';
import 'package:sweetlifesaver/data/remote/food/food_repo.dart';
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
import 'package:sweetlifesaver/utils/logger.dart';

class FoodRepoImpl implements FoodRepo {
  final ApiClient _apiClient = ApiClient();

  @override
  Future<Either<ApiException, CreateFoodRes>> createFood(
    List<CreateFoodReq> createFoodReq,
  ) async {
    try {
      final response = await _apiClient.post(
        "${AppConstants.baseUrl}$createFoodItems",
        createFoodReqToJson(createFoodReq),
      );
      Logger.write(response.toString());
      return Right(CreateFoodRes.fromJson(response.data!));
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, dynamic>> deleteFood(String id) async {
    try {
      final response = await _apiClient.delete(
        "${AppConstants.baseUrl}${deleteFoodItems(id)}",
      );
      Logger.write(response.toString());
      return Right(response.data);
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, GetFoodlistRes>> getFoodlist() async {
    try {
      final response = await _apiClient.get(
        "${AppConstants.baseUrl}$getfoodListEndpoint",
      );
      Logger.write(response.toString());
      return Right(GetFoodlistRes.fromJson(response.data!));
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, SearchFoodRes>> searchFood(
    SearchFoodReq searchFoodReq,
    String key,
  ) async {
    try {
      final response = await _apiClient.post(
        "${AppConstants.baseUrl}${searchfood(key)}",
        searchFoodReqToJson(searchFoodReq),
      );
      Logger.write(response.toString());
      return Right(SearchFoodRes.fromJson(response.data!));
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, UpdateFoodRes>> updateFood(
    UpdateFoodReq updateFoodReq,
    String id,
  ) async {
    try {
      final response = await _apiClient.put(
        "${AppConstants.baseUrl}${updateFoodItems(id)}",
        updateFoodReqToJson(updateFoodReq),
      );
      Logger.write(response.toString());
      return Right(UpdateFoodRes.fromJson(response.data!));
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

//! Activity == >

  @override
  Future<Either<ApiException, dynamic>> deleteActivity(String id) async {
    try {
      final response = await _apiClient.delete(
        "${AppConstants.baseUrl}${deleteActivityItems(id)}",
      );
      Logger.write(response.toString());
      return Right(response.data);
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, GetActivityRes>> getActivityList(
    GetActivityReq getActivityReq,
  ) async {
    try {
      final response = await _apiClient.post(
        "${AppConstants.baseUrl}$getActivityListEndpoint",
        getActivityReqToJson(getActivityReq),
      );
      Logger.write(response.toString());
      return Right(GetActivityRes.fromJson(response.data!));
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, AddActivityRes>> createActivity(
    List<AddActivityReq> addActivityReq,
  ) async {
    try {
      final response = await _apiClient.post(
        "${AppConstants.baseUrl}$createActivityItems",
        addActivityReqToJson(addActivityReq),
      );
      Logger.write(response.toString());
      return Right(AddActivityRes.fromJson(response.data!));
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, UpdateActivityRes>> updateActivity(
    UpdateActivityReq updateActivityReq,
    String id,
  ) async {
    try {
      final response = await _apiClient.put(
        "${AppConstants.baseUrl}${updateActivityItems(id)}",
        updateActivityReqToJson(updateActivityReq),
      );
      Logger.write(response.toString());
      return Right(UpdateActivityRes.fromJson(response.data!));
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, GetActivityTypeRes>> getActivityType() async {
    try {
      final response = await _apiClient.get(
        "${AppConstants.baseUrl}$getActivityTypeurl",
      );
      Logger.write(response.toString());
      return Right(GetActivityTypeRes.fromJson(response.data!));
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, SearchActivityAllListRes>> searchActivityAllList(
    SearchActivityAllListReq searchActivityAllListReq,
  ) async {
    try {
      final response = await _apiClient.post(
        "${AppConstants.baseUrl}$searchActivityAllListUrl",
        searchActivityAllListReqToJson(searchActivityAllListReq),
      );
      Logger.write(response.toString());
      return Right(SearchActivityAllListRes.fromJson(response.data!));
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, CaloryCalculationRes>> caloryCalculation(
    CaloryCalculationReq caloryCalculationReq,
  ) async {
    try {
      final response = await _apiClient.post(
        "${AppConstants.baseUrl}$caloryCalculationUrl",
        caloryCalculationReqToJson(caloryCalculationReq),
      );
      Logger.write(response.toString());
      return Right(CaloryCalculationRes.fromJson(response.data!));
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, RecommendedRes>> recomendedActivity() async {
    try {
      final response = await _apiClient.get(
        "${AppConstants.baseUrl}$recomendedActivityUrl",
      );
      Logger.write(response.toString());
      return Right(RecommendedRes.fromJson(response.data!));
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }
}
