import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:sweetlifesaver/helpers/base_screen_view.dart';
import 'package:sweetlifesaver/helpers/base_view_model.dart';

final createCustomActivityViewModelProvider =
    ChangeNotifierProvider((ref) => CreateCustomActivityViewModel());

class CreateCustomActivityViewModel extends BaseViewModel<BaseScreenView> {
  final RefreshController _createCustomActivityRefreshController = RefreshController();
  RefreshController get createCustomActivityRefreshController => _createCustomActivityRefreshController;

  
}
