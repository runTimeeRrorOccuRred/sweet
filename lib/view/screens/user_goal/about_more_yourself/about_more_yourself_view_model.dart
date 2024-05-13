import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:sweetlifesaver/helpers/base_screen_view.dart';
import 'package:sweetlifesaver/helpers/base_view_model.dart';

final aboutMoreYourselfViewModelProvider =
    ChangeNotifierProvider((ref) => AboutMoreYourselfViewModel());

class AboutMoreYourselfViewModel extends BaseViewModel<BaseScreenView> {
  final RefreshController _aboutMoreYourselfRefreshController = RefreshController();
  RefreshController get aboutMoreYourselfRefreshController => _aboutMoreYourselfRefreshController;

  
}
