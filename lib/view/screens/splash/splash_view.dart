import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:sweetlifesaver/services/shared_preference_service.dart';
import 'package:sweetlifesaver/utils/utils.dart';

class SplashView extends ConsumerStatefulWidget {
  const SplashView({super.key});

  @override
  ConsumerState<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends ConsumerState<SplashView> with BaseScreenView {
  // late final SplashViewModel _viewModel;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3)).then(
      (value) async => {
        // SharedPreferenceService.clearAll(),
        if (SharedPreferenceService.getString('token') != null)
          context.goNamed(AppRoute.dashboard.name)
        else
          {
            if (SharedPreferenceService.getString('userData') != null &&
                SharedPreferenceService.getString('questionData') != null)
              context.goNamed(AppRoute.signupView.name)
            else
              {
                if (SharedPreferenceService.getString('isOldUser') != null)
                  context.goNamed(
                    AppRoute.loginView.name,
                    pathParameters: {
                      'isBackBtn': "false",
                    },
                  )
                else
                  context.goNamed(
                    AppRoute.onBoarding.name,
                    pathParameters: {
                      'isBackBtn': "false",
                    },
                  ),
              },
          },
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: royalBlue,
      body: RiveAnimation.asset('assets/animation/logo_animation.riv'),
    );
  }

  @override
  void navigateToScreen(AppRoute appRoute, {Map<String, String>? params}) {
    // TODO: implement navigateToScreen

    context.replaceNamed(
      appRoute.name,
      // {"fid": NavBarScreens.data[1].id},
    );
  }

  @override
  void showSnackbar(String message, {Color? color}) {
    final snackBar = SnackBar(
      backgroundColor: color,
      content: Text(message),
      action: SnackBarAction(
        label: 'Close',
        onPressed: () {
          ScaffoldMessenger.of(context).clearSnackBars();
          // Some code to undo the change.
        },
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
    // TODO: implement showSnackbar
  }
}
