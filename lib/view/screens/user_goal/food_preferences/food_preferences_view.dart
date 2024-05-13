import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';
import 'package:sweetlifesaver/data/remote/auth/models/update_question_model.dart';
import 'package:sweetlifesaver/utils/custom_button.dart';
import 'package:sweetlifesaver/utils/forms/checkboxTileForm.dart';
import 'package:sweetlifesaver/utils/utils.dart';
import 'package:sweetlifesaver/view/screens/user_goal/usergoal_view_model.dart';

class FoodPreferencesView extends ConsumerStatefulWidget {
  const FoodPreferencesView({super.key});

  @override
  ConsumerState<FoodPreferencesView> createState() =>
      _FoodPreferencesViewState();
}

class _FoodPreferencesViewState extends ConsumerState<FoodPreferencesView>
    with BaseScreenView {
  @override
  Widget build(BuildContext context) {
    final UserGoalViewModel userGoalViewModel =
        ref.watch(userGoalViewModelProvider);
    return userGoalViewModel.isLoadFoodPreferencesRes
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
            //     buttonColor: userGoalViewModel.foodPreferencesans.isEmpty
            //         ? kGrey
            //         : primaryColor,
            //     buttonText: "Next",
            //     ontap: () {
            //       print(userGoalViewModel.foodPreferencesans);
            //       if (userGoalViewModel.foodPreferencesans.isNotEmpty) {
            //         setState(() {
            //           userGoalViewModel
            //               .setSelectedPage(userGoalViewModel.selectedPage + 1);
            //         });
            //       } else {
            //         showSnackbar("Please select an option");
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
                        ...List.generate(
                          userGoalViewModel.foodPreferencesRes?.data?.first
                                  .answersData?.length ??
                              0,
                          (index) => Padding(
                            padding: EdgeInsets.only(top: 14.h),
                            child: CheckboxTileForm(
                              isSelected: userGoalViewModel.foodPreferencesans.any(
                                (element) =>
                                    element.answer ==
                                    userGoalViewModel.foodPreferencesRes?.data?.first
                                        .answersData?[index].answer,
                              ),
                              ontap: () {
                                if (userGoalViewModel.foodPreferencesans.any(
                                  (element) =>
                                      element.answerId ==
                                      userGoalViewModel.foodPreferencesRes?.data
                                          ?.first.answersData?[index].id,
                                )) {
                                  userGoalViewModel.foodPreferencesans.removeWhere(
                                    (element) =>
                                        element.answerId ==
                                        userGoalViewModel.foodPreferencesRes?.data
                                            ?.first.answersData?[index].id,
                                  );
                                } else {
                                  userGoalViewModel.foodPreferencesans.add(
                                    Answear(
                                      answerId: userGoalViewModel.foodPreferencesRes
                                          ?.data?.first.answersData?[index].id,
                                      answer: userGoalViewModel.foodPreferencesRes
                                          ?.data?.first.answersData?[index].answer,
                                      subAnswer: userGoalViewModel.foodPreferencesRes
                                          ?.data?.first.answersData?[index].subAnswer,
                                      slug: userGoalViewModel.foodPreferencesRes?.data
                                          ?.first.answersData?[index].slug,
                                    ),
                                  );
                                }
                                setState(() {});
                                print(userGoalViewModel.foodPreferencesans);
                              },
                              title: userGoalViewModel.foodPreferencesRes?.data?.first
                                      .answersData?[index].answer ??
                                  "",
                              padding: 2.w,
                            ),
                          ),
                        ),
                        gapH10,
                        if (userGoalViewModel.foodPreferencesans.any(
                          (element) =>
                              element.answerId ==
                              userGoalViewModel.foodPreferencesRes?.data?.first
                                  .answersData?.last.id,
                        ))
                          TextFormField(
                            initialValue: userGoalViewModel
                                .foodPreferencesans[
                                    userGoalViewModel.foodPreferencesans.indexWhere(
                              (element) =>
                                  element.answerId ==
                                  userGoalViewModel.foodPreferencesRes?.data?.first
                                      .answersData?.last.id,
                            )]
                                .subAnswer,
                            onChanged: (value) {
                              final int idex =
                                  userGoalViewModel.foodPreferencesans.indexWhere(
                                (element) =>
                                    element.answerId ==
                                    userGoalViewModel.foodPreferencesRes?.data?.first
                                        .answersData?.last.id,
                              );
                              userGoalViewModel.foodPreferencesans[idex] = Answear(
                                answerId: userGoalViewModel.foodPreferencesRes?.data
                                    ?.first.answersData?.last.id,
                                answer: userGoalViewModel.foodPreferencesRes?.data
                                    ?.first.answersData?.last.answer,
                                subAnswer: value,
                                slug: userGoalViewModel.foodPreferencesRes?.data
                                    ?.first.answersData?.last.slug,
                              );
                              print(userGoalViewModel.foodPreferencesans);
                            },
                            maxLines: 2,
                            keyboardType: TextInputType.multiline,
                            decoration: InputDecoration(
                              hintText:
                                  "Enter any other cultural food preferences you may have.",
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
                SizedBox(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 16.w,
                      right: 16.w,
                      bottom: 16.h,
                      top: 10.h,
                    ),
                    child: CustomButton(
                      buttonColor: userGoalViewModel.foodPreferencesans.isEmpty
                          ? kGrey
                          : primaryColor,
                      buttonText: "Next",
                      ontap: () {
                        print(userGoalViewModel.foodPreferencesans);
                        if (userGoalViewModel.foodPreferencesans.isNotEmpty) {
                          setState(() {
                            userGoalViewModel.setSelectedPage(
                                userGoalViewModel.selectedPage + 1);
                          });
                        } else {
                          showSnackbar("Please select an option");
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
      backgroundColor: kGreen,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
