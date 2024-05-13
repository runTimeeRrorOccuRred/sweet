import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:sweetlifesaver/helpers/base_screen_view.dart';
import 'package:sweetlifesaver/helpers/base_view_model.dart';

final foodAllergieViewModelProvider =
    ChangeNotifierProvider((ref) => FoodAllergieViewModel());

class FoodAllergieViewModel extends BaseViewModel<BaseScreenView> {
  final RefreshController _foodAllergieRefreshController = RefreshController();
  RefreshController get foodAllergieRefreshController => _foodAllergieRefreshController;

  
}
