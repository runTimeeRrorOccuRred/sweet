import 'package:dartz/dartz.dart';
import 'package:sweetlifesaver/core/core.dart';
import 'package:sweetlifesaver/data/remote/questions/model/activeAction_model.dart';
import 'package:sweetlifesaver/data/remote/questions/model/dailyEatingRoutine_model.dart';
import 'package:sweetlifesaver/data/remote/questions/model/foodAllergie_model.dart';
import 'package:sweetlifesaver/data/remote/questions/model/foodPreferences_model.dart';
import 'package:sweetlifesaver/data/remote/questions/model/healthCondition_model.dart';
import 'package:sweetlifesaver/data/remote/questions/model/healthGoal_model.dart';
import 'package:sweetlifesaver/data/remote/questions/model/preferredDiet_model.dart';
import 'package:sweetlifesaver/data/remote/questions/model/questionlist_model.dart';

abstract class QuestionRepo {
  Future<Either<ApiException, QuestionListRes>> questionList();
  Future<Either<ApiException, HealthGoalRes>> healthGoal(String qid);
  Future<Either<ApiException, HealthConditionRes>> healthCondition(String qid);
  Future<Either<ApiException, PreferdDietRes>> preferredDiet(String qid);
  Future<Either<ApiException, FoodAllergieModel>> foodAllergie(String qid);
  Future<Either<ApiException, FoodPreferencesRes>> foodPreferences(String qid);
  Future<Either<ApiException, ActiveActionRes>> activeAction(String qid);
  Future<Either<ApiException, DailyEatingRoutineRes>> dailyEatingRoutine(String qid);

}
