import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:sweetlifesaver/helpers/base_screen_view.dart';
import 'package:sweetlifesaver/helpers/base_view_model.dart';

final verifyViewModelProvider =
    ChangeNotifierProvider((ref) => VerifyViewModel());

class VerifyViewModel extends BaseViewModel<BaseScreenView> {
  final RefreshController _verifyRefreshController = RefreshController();
  RefreshController get verifyRefreshController => _verifyRefreshController;

  
}
