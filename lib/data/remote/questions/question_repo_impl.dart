import 'package:dartz/dartz.dart';
import 'package:sweetlifesaver/core/core.dart';
import 'package:sweetlifesaver/core/endpoints.dart';
import 'package:sweetlifesaver/data/remote/questions/model/activeAction_model.dart';
import 'package:sweetlifesaver/data/remote/questions/model/dailyEatingRoutine_model.dart';
import 'package:sweetlifesaver/data/remote/questions/model/foodAllergie_model.dart';
import 'package:sweetlifesaver/data/remote/questions/model/foodPreferences_model.dart';
import 'package:sweetlifesaver/data/remote/questions/model/healthCondition_model.dart';
import 'package:sweetlifesaver/data/remote/questions/model/healthGoal_model.dart';
import 'package:sweetlifesaver/data/remote/questions/model/preferredDiet_model.dart';
import 'package:sweetlifesaver/data/remote/questions/model/questionlist_model.dart';
import 'package:sweetlifesaver/data/remote/questions/question_repo.dart';
import 'package:sweetlifesaver/utils/logger.dart';

class QuestionRepoImpl implements QuestionRepo {
  final ApiClient _apiClient = ApiClient();

  @override
  Future<Either<ApiException, QuestionListRes>> questionList() async {
    try {
      final response = await _apiClient.get(
        "${AppConstants.baseUrl}$getQuestion",
      );
      Logger.write(response.toString());
      return Right(QuestionListRes.fromJson(response.data!));
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, HealthGoalRes>> healthGoal(String qid) async {
    try {
      final response = await _apiClient.get(
        "${AppConstants.baseUrl}${getans(qid)}",
      );
      Logger.write(response.toString());
      return Right(HealthGoalRes.fromJson(response.data!));
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, HealthConditionRes>> healthCondition(
    String qid,
  ) async {
    try {
      final response = await _apiClient.get(
        "${AppConstants.baseUrl}${getans(qid)}",
      );
      Logger.write(response.toString());
      return Right(HealthConditionRes.fromJson(response.data!));
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, PreferdDietRes>> preferredDiet(String qid) async {
    try {
      final response = await _apiClient.get(
        "${AppConstants.baseUrl}${getans(qid)}",
      );
      Logger.write(response.toString());
      return Right(PreferdDietRes.fromJson(response.data!));
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, FoodAllergieModel>> foodAllergie(
    String qid,
  ) async {
    try {
      final response = await _apiClient.get(
        "${AppConstants.baseUrl}${getans(qid)}",
      );
      Logger.write(response.toString());
      return Right(FoodAllergieModel.fromJson(response.data!));
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, FoodPreferencesRes>> foodPreferences(
    String qid,
  ) async {
    try {
      final response = await _apiClient.get(
        "${AppConstants.baseUrl}${getans(qid)}",
      );
      Logger.write(response.toString());
      return Right(FoodPreferencesRes.fromJson(response.data!));
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, ActiveActionRes>> activeAction(String qid) async {
    try {
      final response = await _apiClient.get(
        "${AppConstants.baseUrl}${getans(qid)}",
      );
      Logger.write(response.toString());
      return Right(ActiveActionRes.fromJson(response.data!));
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, DailyEatingRoutineRes>> dailyEatingRoutine(
    String qid,
  ) async {
    try {
      final response = await _apiClient.get(
        "${AppConstants.baseUrl}${getans(qid)}",
      );
      Logger.write(response.toString());
      return Right(DailyEatingRoutineRes.fromJson(response.data!));
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }
}
