import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:sweetlifesaver/utils/custom_button.dart';
import 'package:sweetlifesaver/utils/utils.dart';
import 'package:sweetlifesaver/view/component/help_Icon/help_dialogbox/Current_health.dart';
import 'package:sweetlifesaver/view/component/help_Icon/help_dialogbox/afternoon_snack_intake.dart';
import 'package:sweetlifesaver/view/component/help_Icon/help_dialogbox/breakfast_intake.dart';
import 'package:sweetlifesaver/view/component/help_Icon/help_dialogbox/calorie.dart';
import 'package:sweetlifesaver/view/component/help_Icon/help_dialogbox/daily_physical_activities.dart';
import 'package:sweetlifesaver/view/component/help_Icon/help_dialogbox/dinner_intake.dart';
import 'package:sweetlifesaver/view/component/help_Icon/help_dialogbox/health_goals.dart';
import 'package:sweetlifesaver/view/component/help_Icon/help_dialogbox/home_page.dart';
import 'package:sweetlifesaver/view/component/help_Icon/help_dialogbox/late_night.dart';
import 'package:sweetlifesaver/view/component/help_Icon/help_dialogbox/lunch_intake.dart';
import 'package:sweetlifesaver/view/component/help_Icon/help_dialogbox/macro_nutrients.dart';
import 'package:sweetlifesaver/view/component/help_Icon/help_dialogbox/morning_snack_intake.dart';
import 'package:sweetlifesaver/view/component/help_Icon/help_dialogbox/sleep.dart';
import 'package:sweetlifesaver/view/component/help_Icon/help_dialogbox/water_intake.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';


enum HelpIconName {
  healthGoal,
  currentHealth,
  dietaryPreferences,
  foodAllergie,
  foodPreferences,
  activityStatus,
  dailyEatingRoutine,
  aboutMoreYourself,
  homePage,
  calorieGoals,
  macroNutrients,
  breakfastIntake,
  morningSnack,
  lunch,
  afternoonSnack,
  dinnerIntak,
  lateNightSnack,
  dailyPhysicalActivities,
  waterIntak,
  sleep
}

class HelpIcon extends StatelessWidget {
  final Color color;
  final HelpIconName iconName;
  const HelpIcon({super.key, required this.color, required this.iconName});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("HelpIconName: $iconName");
        HapticFeedback.selectionClick();
        if (iconName == HelpIconName.healthGoal) {
          WoltModalSheet.show<void>(
            enableDrag: true,
            useSafeArea: true,
            context: context,
            pageListBuilder: (BuildContext context) {
              return [
                WoltModalSheetPage(
                  backgroundColor: kWhite,
                  enableDrag: true,
                  navBarHeight: 40.h,
                  child: const HealthGoals(),
                  stickyActionBar: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
                    child: CustomButton(
                      buttonText: "GO BACK",
                      ontap: () {
                        context.pop();
                      },
                    ).animate().slideY(
                          begin: 2,
                          end: 0,
                          curve: Curves.easeInOut,
                        ),
                  ),
                ),
              ];
            },
          );
        } else if (iconName == HelpIconName.currentHealth) {
          WoltModalSheet.show<void>(
            enableDrag: true,
            useSafeArea: true,
            context: context,
            pageListBuilder: (BuildContext context) {
              return [
                WoltModalSheetPage(
                  backgroundColor: kWhite,
                  enableDrag: true,
                  navBarHeight: 40.h,
                  child: const CurrentHealth(),
                  stickyActionBar: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
                    child: CustomButton(
                      buttonText: "GO BACK",
                      ontap: () {
                        context.pop();
                      },
                    ).animate().slideY(
                          begin: 2,
                          end: 0,
                          curve: Curves.easeInOut,
                        ),
                  ),
                ),
              ];
            },
          );
        } else if (iconName == HelpIconName.homePage) {
          WoltModalSheet.show<void>(
            enableDrag: true,
            useSafeArea: true,
            context: context,
            pageListBuilder: (BuildContext context) {
              return [
                WoltModalSheetPage(
                  backgroundColor: kWhite,
                  enableDrag: true,
                  navBarHeight: 40.h,
                  child: const Homepage(),
                  stickyActionBar: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
                    child: CustomButton(
                      buttonText: "GO BACK",
                      ontap: () {
                        context.pop();
                      },
                    ).animate().slideY(
                          begin: 2,
                          end: 0,
                          curve: Curves.easeInOut,
                        ),
                  ),
                ),
              ];
            },
          );
        } else if (iconName == HelpIconName.calorieGoals) {
          WoltModalSheet.show<void>(
            enableDrag: true,
            useSafeArea: true,
            context: context,
            pageListBuilder: (BuildContext context) {
              return [
                WoltModalSheetPage(
                  backgroundColor: kWhite,
                  enableDrag: true,
                  navBarHeight: 40.h,
                  child: const Calorie(),
                  stickyActionBar: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
                    child: CustomButton(
                      buttonText: "GO BACK",
                      ontap: () {
                        print("hello");
                        context.pop();
                      },
                    ).animate().slideY(
                          begin: 2,
                          end: 0,
                          curve: Curves.easeInOut,
                        ),
                  ),
                ),
              ];
            },
          );
        } else if (iconName == HelpIconName.macroNutrients) {
          WoltModalSheet.show<void>(
            enableDrag: true,
            useSafeArea: true,
            context: context,
            pageListBuilder: (BuildContext context) {
              return [
                WoltModalSheetPage(
                  backgroundColor: kWhite,
                  enableDrag: true,
                  navBarHeight: 40.h,
                  child: const MacroNutrients(),
                  stickyActionBar: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
                    child: CustomButton(
                      buttonText: "GO BACK",
                      ontap: () {
                        print("hello");
                        context.pop();
                      },
                    ).animate().slideY(
                          begin: 2,
                          end: 0,
                          curve: Curves.easeInOut,
                        ),
                  ),
                ),
              ];
            },
          );
        } else if (iconName == HelpIconName.dailyPhysicalActivities) {
          WoltModalSheet.show<void>(
            enableDrag: true,
            useSafeArea: true,
            context: context,
            pageListBuilder: (BuildContext context) {
              return [
                WoltModalSheetPage(
                  backgroundColor: kWhite,
                  enableDrag: true,
                  navBarHeight: 40.h,
                  child: const DailyPhysicalActivities(),
                  stickyActionBar: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
                    child: CustomButton(
                      buttonText: "GO BACK",
                      ontap: () {
                        context.pop();
                      },
                    ).animate().slideY(
                          begin: 2,
                          end: 0,
                          curve: Curves.easeInOut,
                        ),
                  ),
                ),
              ];
            },
          );
        } else if (iconName == HelpIconName.sleep) {
          WoltModalSheet.show<void>(
            enableDrag: true,
            useSafeArea: true,
            context: context,
            pageListBuilder: (BuildContext context) {
              return [
                WoltModalSheetPage(
                  backgroundColor: kWhite,
                  enableDrag: true,
                  navBarHeight: 40.h,
                  child: const Sleep(),
                  stickyActionBar: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
                    child: CustomButton(
                      buttonText: "GO BACK",
                      ontap: () {
                        context.pop();
                      },
                    ).animate().slideY(
                          begin: 2,
                          end: 0,
                          curve: Curves.easeInOut,
                        ),
                  ),
                ),
              ];
            },
          );
        } else if (iconName == HelpIconName.waterIntak) {
          WoltModalSheet.show<void>(
            enableDrag: true,
            useSafeArea: true,
            context: context,
            pageListBuilder: (BuildContext context) {
              return [
                WoltModalSheetPage(
                  backgroundColor: kWhite,
                  enableDrag: true,
                  navBarHeight: 40.h,
                  child: const WaterIntake(),
                  stickyActionBar: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
                    child: CustomButton(
                      buttonText: "GO BACK",
                      ontap: () {
                        context.pop();
                      },
                    ).animate().slideY(
                          begin: 2,
                          end: 0,
                          curve: Curves.easeInOut,
                        ),
                  ),
                ),
              ];
            },
          );
        } else if (iconName == HelpIconName.breakfastIntake) {
          WoltModalSheet.show<void>(
            enableDrag: true,
            useSafeArea: true,
            context: context,
            pageListBuilder: (BuildContext context) {
              return [
                WoltModalSheetPage(
                  backgroundColor: kWhite,
                  enableDrag: true,
                  navBarHeight: 40.h,
                  child: const BreakfastIntake(),
                  stickyActionBar: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
                    child: CustomButton(
                      buttonText: "GO BACK",
                      ontap: () {
                        context.pop();
                      },
                    ).animate().slideY(
                          begin: 2,
                          end: 0,
                          curve: Curves.easeInOut,
                        ),
                  ),
                ),
              ];
            },
          );
        } else if (iconName == HelpIconName.lunch) {
          WoltModalSheet.show<void>(
            enableDrag: true,
            useSafeArea: true,
            context: context,
            pageListBuilder: (BuildContext context) {
              return [
                WoltModalSheetPage(
                  backgroundColor: kWhite,
                  enableDrag: true,
                  navBarHeight: 40.h,
                  child: const LunchIntake(),
                  stickyActionBar: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
                    child: CustomButton(
                      buttonText: "GO BACK",
                      ontap: () {
                        context.pop();
                      },
                    ).animate().slideY(
                          begin: 2,
                          end: 0,
                          curve: Curves.easeInOut,
                        ),
                  ),
                ),
              ];
            },
          );
        } else if (iconName == HelpIconName.morningSnack) {
          WoltModalSheet.show<void>(
            enableDrag: true,
            useSafeArea: true,
            context: context,
            pageListBuilder: (BuildContext context) {
              return [
                WoltModalSheetPage(
                  backgroundColor: kWhite,
                  enableDrag: true,
                  navBarHeight: 40.h,
                  child: const MorningSnack(),
                  stickyActionBar: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
                    child: CustomButton(
                      buttonText: "GO BACK",
                      ontap: () {
                        context.pop();
                      },
                    ).animate().slideY(
                          begin: 2,
                          end: 0,
                          curve: Curves.easeInOut,
                        ),
                  ),
                ),
              ];
            },
          );
        } else if (iconName == HelpIconName.afternoonSnack) {
          WoltModalSheet.show<void>(
            enableDrag: true,
            useSafeArea: true,
            context: context,
            pageListBuilder: (BuildContext context) {
              return [
                WoltModalSheetPage(
                  backgroundColor: kWhite,
                  enableDrag: true,
                  navBarHeight: 40.h,
                  child: const AfterNoonIntake(),
                  stickyActionBar: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
                    child: CustomButton(
                      buttonText: "GO BACK",
                      ontap: () {
                        context.pop();
                      },
                    ).animate().slideY(
                          begin: 2,
                          end: 0,
                          curve: Curves.easeInOut,
                        ),
                  ),
                ),
              ];
            },
          );
        } else if (iconName == HelpIconName.dinnerIntak) {
          WoltModalSheet.show<void>(
            enableDrag: true,
            useSafeArea: true,
            context: context,
            pageListBuilder: (BuildContext context) {
              return [
                WoltModalSheetPage(
                  backgroundColor: kWhite,
                  enableDrag: true,
                  navBarHeight: 40.h,
                  child: const DinnerIntake(),
                  stickyActionBar: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
                    child: CustomButton(
                      buttonText: "GO BACK",
                      ontap: () {
                        context.pop();
                      },
                    ).animate().slideY(
                          begin: 2,
                          end: 0,
                          curve: Curves.easeInOut,
                        ),
                  ),
                ),
              ];
            },
          );
        } else if (iconName == HelpIconName.lateNightSnack) {
          WoltModalSheet.show<void>(
            enableDrag: true,
            useSafeArea: true,
            context: context,
            pageListBuilder: (BuildContext context) {
              return [
                WoltModalSheetPage(
                  backgroundColor: kWhite,
                  enableDrag: true,
                  navBarHeight: 40.h,
                  child: const LateNightIntake(),
                  stickyActionBar: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
                    child: CustomButton(
                      buttonText: "GO BACK",
                      ontap: () {
                        context.pop();
                      },
                    ).animate().slideY(
                          begin: 2,
                          end: 0,
                          curve: Curves.easeInOut,
                        ),
                  ),
                ),
              ];
            },
          );
        }
      },
      child: Icon(
        Icons.help,
        color: color,
        size: 22.sp,
      ),
    );
  }
}
