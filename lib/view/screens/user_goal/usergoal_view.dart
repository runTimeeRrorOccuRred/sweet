import 'package:flutter/material.dart';
import 'package:sweetlifesaver/utils/utils.dart';
import 'package:sweetlifesaver/view/screens/user_goal/about_more_yourself/about_more_yourself_view.dart';
import 'package:sweetlifesaver/view/screens/user_goal/activity_status/activity_status_view.dart';
import 'package:sweetlifesaver/view/screens/user_goal/daily_eating_routine/daily_eating_routine_view.dart';
import 'package:sweetlifesaver/view/screens/user_goal/food_allergie/food_allergie_view.dart';
import 'package:sweetlifesaver/view/screens/user_goal/food_preferences/food_preferences_view.dart';
import 'package:sweetlifesaver/view/screens/user_goal/health_goal/health_goal_view.dart';
import 'package:sweetlifesaver/view/screens/user_goal/heath_condition/health_condition_view.dart';
import 'package:sweetlifesaver/view/screens/user_goal/preferred_diet/preferred_diet_view.dart';
import 'package:sweetlifesaver/view/screens/user_goal/usergoal_view_model.dart';
import 'package:sweetlifesaver/view/screens/user_goal/widget/appbar.dart';

class UserGoalView extends ConsumerStatefulWidget {
  const UserGoalView({super.key});

  @override
  ConsumerState<UserGoalView> createState() => _UserGoalPageState();
}

class _UserGoalPageState extends ConsumerState<UserGoalView> {
  @override
  void initState() {
    super.initState();
  }

  final List<Widget> _pages = [
    const HealthGoalView(),
    const HealthConditionView(),
    const PreferredDietView(),
    const FoodAllergieView(),
    const FoodPreferencesView(),
    const ActivityStatusView(),
    const DailyEatingRoutineView(),
    const AboutMoreYourselfView(),
  ];

  Color btnColor(int pageindex) {
    return primaryColor;
  }

  @override
  Widget build(BuildContext context) {
    final UserGoalViewModel userGoalViewModel =
        ref.watch(userGoalViewModelProvider);
    return Scaffold(
      body: Column(
        children: [
          UserGoalAppbar(
            progressIndex: userGoalViewModel.selectedPage,
            tittle: userGoalViewModel.selectedPage == 7
                ? "Tell us about more yourself."
                : ref
                        .watch(userGoalViewModelProvider)
                        .questionListRes
                        ?.data?[userGoalViewModel.selectedPage]
                        .question ??
                    "",
            subTitle: userGoalViewModel.selectedPage == 7
                ? "Accurate responses are key to realizing your goals."
                : ref
                        .watch(userGoalViewModelProvider)
                        .questionListRes
                        ?.data?[userGoalViewModel.selectedPage]
                        .subQuestion ??
                    "",
            onTAp: (pageindex) {
              if (pageindex > 0) {
                setState(() {
                  userGoalViewModel
                      .setSelectedPage(userGoalViewModel.selectedPage - 1);
                });
              } else {
                context.pop();
              }
              setState(() {});
            },
          ),
          Expanded(
            child: _pages[userGoalViewModel.selectedPage],
          ),
        ],
      ),
    );
  }

  void showSnackbar(String message, {Color? color}) {
    final SnackBar snackBar = SnackBar(
      content: Text(message),
      backgroundColor: color ?? kBlack,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  // create a switch case for the height of the appbar
  double getHeightForAppBar(int selectedPage) {
    switch (selectedPage) {
      case 0:
        return MediaQuery.of(context).size.height * 0.23;
      case 1:
        return MediaQuery.of(context).size.height * 0.23;
      case 2:
        return MediaQuery.of(context).size.height * 0.23;
      case 3:
        return MediaQuery.of(context).size.height * 0.23;
      case 4:
        return MediaQuery.of(context).size.height * 0.23;
      case 5:
        return MediaQuery.of(context).size.height * 0.24;
      case 6:
        return MediaQuery.of(context).size.height * 0.23;
      case 7:
        return MediaQuery.of(context).size.height * 0.23;

      default:
        return 155.h;
    }
  }
}
