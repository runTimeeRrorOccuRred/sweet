// ignore_for_file: avoid_redundant_argument_values

import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:sweetlifesaver/data/remote/auth/models/update_question_model.dart';
import 'package:sweetlifesaver/utils/custom_button.dart';
import 'package:sweetlifesaver/utils/forms/dateTileForm.dart';
import 'package:sweetlifesaver/utils/utils.dart';
import 'package:sweetlifesaver/view/screens/user_goal/usergoal_view_model.dart';

class DailyEatingRoutineView extends ConsumerStatefulWidget {
  const DailyEatingRoutineView({super.key});

  @override
  ConsumerState<DailyEatingRoutineView> createState() =>
      _DailyEatingRoutineViewState();
}

class _DailyEatingRoutineViewState extends ConsumerState<DailyEatingRoutineView>
    with BaseScreenView {
  @override
  Widget build(BuildContext context) {
    final UserGoalViewModel userGoalViewModel =
        ref.watch(userGoalViewModelProvider);
    return userGoalViewModel.isLoadDailyEatingRoutineRes
        ? const Center(
            child: CircularProgressIndicator(
              color: primaryColor,
            ),
          )
        : SizedBox(
            // bottomNavigationBar: Padding(
            //   padding: EdgeInsets.only(
            //     left: 16.w,
            //     right: 16.w,
            //     bottom: 16.h,
            //     top: 10.h,
            //   ),
            //   child: CustomButton(
            //     buttonText: "Next",
            //     buttonColor: userGoalViewModel.dailyEatingRoutineans.isEmpty
            //         ? kGrey
            //         : primaryColor,
            //     ontap: () {
            //       HapticFeedback.lightImpact();
            //       if (userGoalViewModel.dailyEatingRoutineans.isEmpty) {
            //         showSnackbar("Please select an option");
            //       } else {
            //         print(userGoalViewModel.dailyEatingRoutineans);
            //         setState(() {
            //           userGoalViewModel
            //               .setSelectedPage(userGoalViewModel.selectedPage + 1);
            //         });
            //       }
            //     },
            //   ),
            // ),
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: PaddedColumn(
                      padding: EdgeInsets.symmetric(horizontal: 12.w),
                      children: [
                        ...List.generate(
                          userGoalViewModel.dailyEatingRoutineRes?.data?.first
                                  .answersData?.length ??
                              0,
                          (index) => Padding(
                            padding: EdgeInsets.only(top: 20.h),
                            child: DateTileForm(
                              initialValue: userGoalViewModel.dailyEatingRoutineans
                                      .any(
                                (element) =>
                                    element.answerId ==
                                    userGoalViewModel.dailyEatingRoutineRes?.data
                                        ?.first.answersData?[index].id,
                              )
                                  ? convertTimeStringToDateTime(
                                      userGoalViewModel
                                              .dailyEatingRoutineans[userGoalViewModel
                                                  .dailyEatingRoutineans
                                                  .indexWhere(
                                            (element) =>
                                                element.answerId ==
                                                userGoalViewModel
                                                    .dailyEatingRoutineRes
                                                    ?.data
                                                    ?.first
                                                    .answersData?[index]
                                                    .id,
                                          )]
                                              .subAnswer ??
                                          "",
                                    )
                                  : initialtime(index),
                              isSelected:
                                  !userGoalViewModel.dailyEatingRoutineans.any(
                                (element) =>
                                    element.answer ==
                                    userGoalViewModel.dailyEatingRoutineRes?.data
                                        ?.first.answersData?[index].answer,
                              ),
                              onDateTimeChanged: (datetime) {
                                if (userGoalViewModel.dailyEatingRoutineans.any(
                                  (element) =>
                                      element.answerId ==
                                      userGoalViewModel.dailyEatingRoutineRes?.data
                                          ?.first.answersData?[index].id,
                                )) {
                                  userGoalViewModel.dailyEatingRoutineans[
                                      userGoalViewModel.dailyEatingRoutineans
                                          .indexWhere(
                                    (element) =>
                                        element.answerId ==
                                        userGoalViewModel.dailyEatingRoutineRes?.data
                                            ?.first.answersData?[index].id,
                                  )] = Answear(
                                    answerId: userGoalViewModel.dailyEatingRoutineRes
                                            ?.data?.first.answersData?[index].id ??
                                        "",
                                    answer: userGoalViewModel
                                            .dailyEatingRoutineRes
                                            ?.data
                                            ?.first
                                            .answersData?[index]
                                            .answer ??
                                        "",
                                    subAnswer: convertDateTimeToTimeString(datetime),
                                    slug: userGoalViewModel.dailyEatingRoutineRes
                                            ?.data?.first.answersData?[index].slug ??
                                        "",
                                    image: userGoalViewModel.dailyEatingRoutineRes
                                            ?.data?.first.answersData?[index].icon ??
                                        "",
                                  );
                                } else {
                                  userGoalViewModel.dailyEatingRoutineans.add(
                                    Answear(
                                      answerId: userGoalViewModel
                                          .dailyEatingRoutineRes
                                          ?.data
                                          ?.first
                                          .answersData?[index]
                                          .id,
                                      answer: userGoalViewModel.dailyEatingRoutineRes
                                          ?.data?.first.answersData?[index].answer,
                                      subAnswer:
                                          convertDateTimeToTimeString(datetime),
                                      slug: userGoalViewModel
                                              .dailyEatingRoutineRes
                                              ?.data
                                              ?.first
                                              .answersData?[index]
                                              .slug ??
                                          "",
                                      image: userGoalViewModel
                                              .dailyEatingRoutineRes
                                              ?.data
                                              ?.first
                                              .answersData?[index]
                                              .icon ??
                                          "",
                                    ),
                                  );
                                }
                  
                                print(userGoalViewModel.dailyEatingRoutineans);
                                setState(() {});
                              },
                              title: userGoalViewModel.dailyEatingRoutineRes?.data
                                      ?.first.answersData?[index].answer ??
                                  "",
                              ontap: (date, value) {
                                print(userGoalViewModel.dailyEatingRoutineans);
                                if (!value) {
                                  userGoalViewModel.dailyEatingRoutineans.add(
                                    Answear(
                                      answerId: userGoalViewModel
                                          .dailyEatingRoutineRes
                                          ?.data
                                          ?.first
                                          .answersData?[index]
                                          .id,
                                      answer: userGoalViewModel.dailyEatingRoutineRes
                                          ?.data?.first.answersData?[index].answer,
                                      subAnswer: convertDateTimeToTimeString(date),
                                      slug: userGoalViewModel
                                              .dailyEatingRoutineRes
                                              ?.data
                                              ?.first
                                              .answersData?[index]
                                              .slug ??
                                          "",
                                      image: userGoalViewModel
                                              .dailyEatingRoutineRes
                                              ?.data
                                              ?.first
                                              .answersData?[index]
                                              .icon ??
                                          "",
                                    ),
                                  );
                                } else {
                                  userGoalViewModel.dailyEatingRoutineans.removeWhere(
                                    (element) =>
                                        element.answerId ==
                                        userGoalViewModel.dailyEatingRoutineRes?.data
                                            ?.first.answersData?[index].id,
                                  );
                                }
                                print(userGoalViewModel.dailyEatingRoutineans);
                                setState(() {});
                              },
                              // skipBtn: () {
                              //   if (userGoalViewModel.skipthis.contains(
                              //     userGoalViewModel.dailyEatingRoutineRes?.data?.first
                              //         .answersData?[index].id,
                              //   )) {
                              //     userGoalViewModel.skipthis.remove(
                              //       userGoalViewModel.dailyEatingRoutineRes?.data
                              //           ?.first.answersData?[index].id,
                              //     );
                              //   } else {
                              //     userGoalViewModel.skipthis.add(
                              //       userGoalViewModel.dailyEatingRoutineRes?.data
                              //               ?.first.answersData?[index].id ??
                              //           "",
                              //     );
                              //     userGoalViewModel.dailyEatingRoutineans.removeWhere(
                              //       (element) =>
                              //           element.answerId ==
                              //           userGoalViewModel.dailyEatingRoutineRes?.data
                              //               ?.first.answersData?[index].id,
                              //     );
                              //   }
                              //   setState(() {});
                              // },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              SizedBox(
                child: Padding(
              padding: EdgeInsets.only(
                left: 16.w,
                right: 16.w,
                bottom: 16.h,
                top: 10.h,
              ),
              child: CustomButton(
                buttonText: "Next",
                buttonColor: userGoalViewModel.dailyEatingRoutineans.isEmpty
                    ? kGrey
                    : primaryColor,
                ontap: () {
                  HapticFeedback.lightImpact();
                  if (userGoalViewModel.dailyEatingRoutineans.isEmpty) {
                    showSnackbar("Please select an option");
                  } else {
                    print(userGoalViewModel.dailyEatingRoutineans);
                    setState(() {
                      userGoalViewModel
                          .setSelectedPage(userGoalViewModel.selectedPage + 1);
                    });
                  }
                },
              ),
            ),
              )
              ],
            ),
          );
  }

  @override
  void navigateToScreen(AppRoute appRoute, {Map<String, String>? params}) {
    context.goNamed(appRoute.name);
  }

  @override
  void showSnackbar(String message, {Color? color}) {
    final SnackBar snackBar = SnackBar(
      content: Text(message,
        style:const TextStyle(
        color: kGrey
        )),
      backgroundColor: kGreen,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}

DateTime initialtime(int index) {
  switch (index) {
    case 0:
      return convertTimeStringToDateTime('7:00 AM');
    case 1:
      return convertTimeStringToDateTime('10:00 AM');
    case 2:
      return convertTimeStringToDateTime('12:00 PM');
    case 3:
      return convertTimeStringToDateTime('4:00 PM');
    case 4:
      return convertTimeStringToDateTime('7:00 PM');
    case 5:
      return convertTimeStringToDateTime('10:00 PM');
    default:
      return convertTimeStringToDateTime('7:00 AM');
  }
}

DateTime convertTimeStringToDateTime(String timeString) {
  final DateFormat format = DateFormat('h:mm a');
  final DateTime dateTime = format.parse(timeString);
  return dateTime;
}

// convert datetime to time string
String convertDateTimeToTimeString(DateTime dateTime) {
  final DateFormat format = DateFormat('h:mm a');
  final String timeString = format.format(dateTime);
  return timeString;
}
