// ignore_for_file: unused_local_variable

import 'package:flextras/flextras.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:sweetlifesaver/data/remote/auth/models/update_question_model.dart';
import 'package:sweetlifesaver/utils/custom_button.dart';
import 'package:sweetlifesaver/utils/forms/listForm.dart';
import 'package:sweetlifesaver/utils/utils.dart';
import 'package:sweetlifesaver/view/screens/user_goal/usergoal_view_model.dart';

class HealthGoalView extends ConsumerStatefulWidget {
  const HealthGoalView({super.key});

  @override
  ConsumerState<HealthGoalView> createState() => _HealthGoalViewState();
}

class _HealthGoalViewState extends ConsumerState<HealthGoalView>
    with BaseScreenView {
  @override
  Widget build(BuildContext context) {
    final UserGoalViewModel userGoalViewModel =
        ref.watch(userGoalViewModelProvider);
    return userGoalViewModel.isLoadHealthGoalRes
        ? const Center(
            child: CircularProgressIndicator(
              color: primaryColor,
            ),
          )
        : Container(
            // bottomNavigationBar: Padding(
            //   padding: EdgeInsets.only(
            //     left: 16.w,
            //     right: 16.w,
            //     bottom: 16.h,
            //     top: 10.h,
            //   ),
            //   child: CustomButton(
            //     buttonText: "Next",
            //     buttonColor:
            //         userGoalViewModel.userHealthGoalans.first.answerId == ""
            //             ? kGrey
            //             : primaryColor,
            //     ontap: () {
            //       HapticFeedback.lightImpact();
            //       if (userGoalViewModel.userHealthGoalans.first.answerId ==
            //           "") {
            //         showSnackbar("Please select an option");
            //       } else {
            //         setState(() {
            //           userGoalViewModel
            //               .setSelectedPage(userGoalViewModel.selectedPage + 1);
            //           ref.read(userGoalViewModelProvider).healthConditionPreData();
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
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      children: [
                        gapH20,
                        ...List.generate(
                          userGoalViewModel
                                  .healthGoalRes?.data?.first.answersData?.length ??
                              0,
                          (index) => Padding(
                            padding: EdgeInsets.only(bottom: 12.h),
                            child: ListTileForm(
                              isCenterAlign: true,
                              titleWeight: FontWeight.w700,
                              subtitleSize: 14.sp,
                              titleSize: 14.sp,
                              subtitleWeight: FontWeight.w700,
                              isSelected:
                                  userGoalViewModel.userHealthGoalans.first.answer ==
                                      userGoalViewModel.healthGoalRes?.data?.first
                                          .answersData?[index].answer,
                              ontap: () {
                                userGoalViewModel.userHealthGoalans.first = Answear(
                                  answerId: userGoalViewModel.healthGoalRes?.data?.first.answersData?[index].id ?? "",
                                  answer: userGoalViewModel.healthGoalRes?.data?.first
                                      .answersData?[index].answer,
                                  subAnswer: userGoalViewModel.healthGoalRes?.data
                                      ?.first.answersData?[index].subAnswer,
                                  slug: userGoalViewModel.healthGoalRes?.data?.first
                                      .answersData?[index].slug,
                                );
                                setState(() {});
                                print(userGoalViewModel.userHealthGoalans);
                              },
                              title: (userGoalViewModel.healthGoalRes?.data?.first
                                          .answersData?[index].answer
                                          ?.contains('+') ??
                                      false)
                                  ? "${(userGoalViewModel.healthGoalRes?.data?.first.answersData?[index].answer ?? "").split('+').first}+"
                                  : (userGoalViewModel.healthGoalRes?.data?.first
                                              .answersData?[index].answer ??
                                          "")
                                      .split('+')
                                      .first,
                              subtitle: (userGoalViewModel.healthGoalRes?.data?.first
                                          .answersData?[index].answer
                                          ?.contains('+') ??
                                      false)
                                  ? (userGoalViewModel.healthGoalRes?.data?.first
                                              .answersData?[index].answer ??
                                          "")
                                      .split('+')
                                      .last
                                  : "",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 70.h,
                  child: Padding(
                  padding: EdgeInsets.only(
                  left: 16.w,
                  right: 16.w,
                  bottom: 16.h,
                  top: 10.h,
                                ),
                                child: CustomButton(
                  buttonText: "Next",
                  buttonColor:
                      userGoalViewModel.userHealthGoalans.first.answerId == ""
                          ? kGrey
                          : primaryColor,
                  ontap: () {
                    HapticFeedback.lightImpact();
                    if (userGoalViewModel.userHealthGoalans.first.answerId ==
                        "") {
                      showSnackbar("Please select an option",
                      color: kGreen);
                    } else {
                      setState(() {
                        userGoalViewModel
                            .setSelectedPage(userGoalViewModel.selectedPage + 1);
                        ref.read(userGoalViewModelProvider).healthConditionPreData();
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
      style: const TextStyle(color: kGrey),),
      backgroundColor: color,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
