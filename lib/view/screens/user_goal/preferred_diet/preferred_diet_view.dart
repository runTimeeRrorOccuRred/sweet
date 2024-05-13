import 'package:flextras/flextras.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sweetlifesaver/data/remote/auth/models/update_question_model.dart';
import 'package:sweetlifesaver/utils/custom_button.dart';
import 'package:sweetlifesaver/utils/forms/listForm.dart';
import 'package:sweetlifesaver/utils/utils.dart';
import 'package:sweetlifesaver/view/screens/user_goal/usergoal_view_model.dart';

class PreferredDietView extends ConsumerStatefulWidget {
  const PreferredDietView({super.key});

  @override
  ConsumerState<PreferredDietView> createState() => _PreferredDietViewState();
}

class _PreferredDietViewState extends ConsumerState<PreferredDietView>
    with BaseScreenView {
  @override
  Widget build(BuildContext context) {
    final UserGoalViewModel userGoalViewModel =
        ref.watch(userGoalViewModelProvider);
    return userGoalViewModel.isLoadPreferdDietRes
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
            //     buttonColor:
            //         userGoalViewModel.preferdDietans.first.answerId == ""
            //             ? kGrey
            //             : primaryColor,
            //     ontap: () {
            //       print(userGoalViewModel.preferdDietans);
            //       HapticFeedback.lightImpact();
            //       if (userGoalViewModel.preferdDietans.first.answerId == "") {
            //         showSnackbar("Please select an option");
            //       } else {
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
                    physics: const BouncingScrollPhysics(),
                    child: PaddedColumn(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      children: [
                        gapH20,
                        ...List.generate(
                          userGoalViewModel
                                  .preferdDietRes?.data?.first.answersData?.length ??
                              0,
                          (index) => Padding(
                            padding: EdgeInsets.only(bottom: 12.h),
                            child: ListTileForm(
                              subtitleWeight: FontWeight.w400,
                              titleWeight: FontWeight.bold,
                              subtitleSize: 12.sp,
                              isSelected:
                                  userGoalViewModel.preferdDietans.first.answer ==
                                      userGoalViewModel.preferdDietRes?.data?.first
                                          .answersData?[index].answer,
                              ontap: () {
                                userGoalViewModel.preferdDietans.first = Answear(
                                  answerId: userGoalViewModel.preferdDietRes?.data
                                          ?.first.answersData?[index].id ??
                                      "",
                                  answer: userGoalViewModel.preferdDietRes?.data
                                      ?.first.answersData?[index].answer,
                                  subAnswer: userGoalViewModel.preferdDietRes?.data
                                      ?.first.answersData?[index].subAnswer,
                                  slug: userGoalViewModel.preferdDietRes?.data?.first
                                      .answersData?[index].slug,
                                );
                                setState(() {});
                              },
                              title: userGoalViewModel.preferdDietRes?.data?.first
                                      .answersData?[index].answer ??
                                  "",
                              subtitle: userGoalViewModel.preferdDietRes?.data?.first
                                      .answersData?[index].subAnswer ??
                                  "",
                            ),
                          ),
                        ),
                        gapH10,
                        if (userGoalViewModel.preferdDietans.first.answer ==
                            userGoalViewModel
                                .preferdDietRes?.data?.first.answersData?.last.answer)
                          TextFormField(
                            autofocus: true,
                            maxLines: 2,
                            keyboardType: TextInputType.multiline,
                            initialValue:
                                userGoalViewModel.preferdDietans.first.subAnswer,
                            onChanged: (value) {
                              userGoalViewModel.preferdDietans.first = Answear(
                                answerId:
                                    userGoalViewModel.preferdDietans.first.answerId,
                                answer:
                                    userGoalViewModel.preferdDietans.first.answer ??
                                        "",
                                subAnswer: value,
                                slug: userGoalViewModel.preferdDietans.first.slug,
                              );
                              setState(() {});
                              print(userGoalViewModel.preferdDietans);
                            },
                            decoration: InputDecoration(
                              hintText: 'Type here',
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
                        buttonText: "Next",
                        buttonColor:
                            userGoalViewModel.preferdDietans.first.answerId == ""
                                ? kGrey
                                : primaryColor,
                        ontap: () {
                          print(userGoalViewModel.preferdDietans);
                          HapticFeedback.lightImpact();
                          if (userGoalViewModel.preferdDietans.first.answerId == "") {
                            showSnackbar("Please select an option");
                          } else {
                            setState(() {
                              userGoalViewModel
                                  .setSelectedPage(userGoalViewModel.selectedPage + 1);
                            });
                          }
                        },
                      ),
                    ),
              ),
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
