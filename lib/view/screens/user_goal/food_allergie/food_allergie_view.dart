// ignore_for_file: prefer_is_empty

import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sweetlifesaver/data/remote/auth/models/update_question_model.dart';
import 'package:sweetlifesaver/utils/custom_button.dart';
import 'package:sweetlifesaver/utils/forms/checkboxTileFoodAllergiesForm.dart';
import 'package:sweetlifesaver/utils/utils.dart';
import 'package:sweetlifesaver/view/screens/user_goal/food_allergie/food_allergie_view_model.dart';
import 'package:sweetlifesaver/view/screens/user_goal/usergoal_view_model.dart';

class FoodAllergieView extends ConsumerStatefulWidget {
  const FoodAllergieView({super.key});

  @override
  ConsumerState<FoodAllergieView> createState() => _FoodAllergieViewState();
}

class _FoodAllergieViewState extends ConsumerState<FoodAllergieView>
    with BaseScreenView {
  @override
  Widget build(BuildContext context) {
    final UserGoalViewModel userGoalViewModel =
        ref.watch(userGoalViewModelProvider);
    return userGoalViewModel.isLoadFoodAllergieModel
        ? const Center(
            child: CircularProgressIndicator(
              color: primaryColor,
            ),
          )
        : SizedBox(
            child: SmartRefresher(
              enablePullDown: false,
              header: const MaterialClassicHeader(
                color: Colors.white,
                backgroundColor: primaryColor,
              ),
              controller: ref
                  .watch(foodAllergieViewModelProvider)
                  .foodAllergieRefreshController,
              onRefresh: () async {},
              child: Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: PaddedColumn(
                        padding: EdgeInsets.symmetric(horizontal: 16.w),
                        children: [
                          ...List.generate(
                            userGoalViewModel.foodAllergieModel?.data?.first
                                    .answersData?.length ??
                                0,
                            (index) => Padding(
                              padding: EdgeInsets.only(top: 14.h),
                              child: CheckboxTileFoodAllergieForm(
                                isDisabled: userGoalViewModel
                                            .foodAllergieModel
                                            ?.data
                                            ?.first
                                            .answersData?[index]
                                            .slug ==
                                        'none'
                                    ? false
                                    : userGoalViewModel.foodAllergieans.any(
                                        (element) => element.slug == 'none',
                                      ),
                                isSelected:
                                    userGoalViewModel.foodAllergieans.any(
                                  (element) =>
                                      element.answer ==
                                      userGoalViewModel.foodAllergieModel?.data
                                          ?.first.answersData?[index].answer,
                                ),
                                ontap: () {
                                  if (userGoalViewModel.foodAllergieans.any(
                                    (element) =>
                                        element.answerId ==
                                        userGoalViewModel
                                            .foodAllergieModel
                                            ?.data
                                            ?.first
                                            .answersData?[index]
                                            .id,
                                  )) {
                                    userGoalViewModel.foodAllergieans
                                        .removeWhere(
                                      (element) =>
                                          element.answerId ==
                                          userGoalViewModel
                                              .foodAllergieModel
                                              ?.data
                                              ?.first
                                              .answersData?[index]
                                              .id,
                                    );
                                  } else {
                                    if (userGoalViewModel
                                            .foodAllergieModel
                                            ?.data
                                            ?.first
                                            .answersData?[index]
                                            .slug ==
                                        'none') {
                                      userGoalViewModel.foodAllergieans.clear();
                                      userGoalViewModel.foodAllergieans.add(
                                        Answear(
                                          answerId: userGoalViewModel
                                              .foodAllergieModel
                                              ?.data
                                              ?.first
                                              .answersData?[index]
                                              .id,
                                          answer: userGoalViewModel
                                              .foodAllergieModel
                                              ?.data
                                              ?.first
                                              .answersData?[index]
                                              .answer,
                                          subAnswer: userGoalViewModel
                                              .foodAllergieModel
                                              ?.data
                                              ?.first
                                              .answersData?[index]
                                              .subAnswer,
                                          slug: userGoalViewModel
                                              .foodAllergieModel
                                              ?.data
                                              ?.first
                                              .answersData?[index]
                                              .slug,
                                        ),
                                      );
                                    } else {
                                      userGoalViewModel.foodAllergieans.add(
                                        Answear(
                                          answerId: userGoalViewModel
                                              .foodAllergieModel
                                              ?.data
                                              ?.first
                                              .answersData?[index]
                                              .id,
                                          answer: userGoalViewModel
                                              .foodAllergieModel
                                              ?.data
                                              ?.first
                                              .answersData?[index]
                                              .answer,
                                          subAnswer: userGoalViewModel
                                              .foodAllergieModel
                                              ?.data
                                              ?.first
                                              .answersData?[index]
                                              .subAnswer,
                                          slug: userGoalViewModel
                                              .foodAllergieModel
                                              ?.data
                                              ?.first
                                              .answersData?[index]
                                              .slug,
                                        ),
                                      );
                                    }
                                  }
                                  setState(() {});
                                  print(userGoalViewModel.foodAllergieans);
                                },
                                title: userGoalViewModel.foodAllergieModel?.data
                                        ?.first.answersData?[index].answer ??
                                    "",
                                padding: 2.w,
                              ),
                            ),
                          ),
                          gapH10,
                          if (userGoalViewModel.foodAllergieans.any(
                            (element) =>
                                element.answerId ==
                                userGoalViewModel.foodAllergieModel?.data?.first
                                    .answersData?.last.id,
                          ))
                            TextFormField(
                              initialValue: userGoalViewModel
                                  .foodAllergieans[userGoalViewModel
                                      .foodAllergieans
                                      .indexWhere(
                                (element) =>
                                    element.answerId ==
                                    userGoalViewModel.foodAllergieModel?.data
                                        ?.first.answersData?.last.id,
                              )]
                                  .subAnswer,
                              onChanged: (value) {
                                final int idex = userGoalViewModel
                                    .foodAllergieans
                                    .indexWhere(
                                  (element) =>
                                      element.answerId ==
                                      userGoalViewModel.foodAllergieModel?.data
                                          ?.first.answersData?.last.id,
                                );
                                userGoalViewModel.foodAllergieans[idex] =
                                    Answear(
                                  answerId: userGoalViewModel.foodAllergieModel
                                      ?.data?.first.answersData?.last.id,
                                  answer: userGoalViewModel.foodAllergieModel
                                      ?.data?.first.answersData?.last.answer,
                                  subAnswer: value,
                                  slug: userGoalViewModel.foodAllergieModel
                                      ?.data?.first.answersData?.last.slug,
                                );
                                print(userGoalViewModel.foodAllergieans);
                              },
                              autofocus: true,
                              maxLines: 2,
                              keyboardType: TextInputType.multiline,
                              decoration: InputDecoration(
                                hintText:
                                    "If 'Other', type your food allergies and restrictions.",
                                hintStyle: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.w),
                                  borderSide: const BorderSide(
                                    color: Colors.grey,
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.w),
                                  borderSide: const BorderSide(
                                    color: kGrey,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.w),
                                  borderSide: const BorderSide(
                                    color: kGrey,
                                  ),
                                ),
                              ),
                            )
                          else
                            const SizedBox(),
                          gapH16,
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 16.w,
                        right: 16.w,
                        bottom: 16.h,
                        top: 10.h,
                      ),
                      child: CustomButton(
                        buttonColor:
                            userGoalViewModel.foodAllergieans.length == 0
                                ? kGrey
                                : primaryColor,
                        buttonText: "Next",
                        ontap: () {
                          if (userGoalViewModel.foodAllergieans.length == 0) {
                            showSnackbar("Please select at least one option");
                          } else {
                            print(userGoalViewModel.foodAllergieans);
                            HapticFeedback.lightImpact();
                            setState(() {
                              userGoalViewModel.setSelectedPage(
                                userGoalViewModel.selectedPage + 1,
                              );
                            });
                          }
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
  }

  @override
  void navigateToScreen(AppRoute appRoute, {Map<String, String>? params}) {
    context.goNamed(appRoute.name);
  }

  @override
  void showSnackbar(String message, {Color? color}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: const TextStyle(
            color: kGrey,
          ),
        ),
        backgroundColor: kGreen,
        behavior: SnackBarBehavior.fixed,
      ),
    );
  }
}
