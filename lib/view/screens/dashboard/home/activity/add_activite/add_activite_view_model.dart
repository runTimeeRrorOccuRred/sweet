import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:sweetlifesaver/helpers/base_screen_view.dart';
import 'package:sweetlifesaver/helpers/base_view_model.dart';

final addActiviteViewModelProvider =
    ChangeNotifierProvider((ref) => AddActiviteViewModel());

class AddActiviteViewModel extends BaseViewModel<BaseScreenView> {
  final RefreshController _addActiviteRefreshController = RefreshController();
  RefreshController get addActiviteRefreshController => _addActiviteRefreshController;

  
}
