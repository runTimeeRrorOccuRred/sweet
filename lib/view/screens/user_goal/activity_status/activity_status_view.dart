import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sweetlifesaver/data/remote/auth/models/update_question_model.dart';
import 'package:sweetlifesaver/utils/custom_button.dart';
import 'package:sweetlifesaver/utils/utils.dart';
import 'package:sweetlifesaver/view/screens/user_goal/usergoal_view_model.dart';

class ActivityStatusView extends ConsumerStatefulWidget {
  const ActivityStatusView({super.key});

  @override
  ConsumerState<ActivityStatusView> createState() => _ActivityStatusViewState();
}

class _ActivityStatusViewState extends ConsumerState<ActivityStatusView>
    with BaseScreenView {
  List<String> img = [
    "assets/icons/Group 2.png",
    "assets/icons/Frame.png",
    "assets/icons/Frame 2.png",
    "assets/icons/Frame 3.png",
    "assets/icons/Group.png",
  ];

  @override
  Widget build(BuildContext context) {
    final UserGoalViewModel userGoalViewModel =
        ref.watch(userGoalViewModelProvider);
    return userGoalViewModel.isLoadActiveActionRes
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
            //         userGoalViewModel.activeActionans.first.answerId == ""
            //             ? kGrey
            //             : primaryColor,
            //     ontap: () {
            //       HapticFeedback.lightImpact();
            //       if (userGoalViewModel.activeActionans.first.answerId == "") {
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
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: PaddedColumn(
                      children: [
                        ...List.generate(
                          userGoalViewModel
                                  .activeActionRes?.data?.first.answersData?.length ??
                              0,
                          (index) => Padding(
                            padding: EdgeInsets.only(top: 20.h),
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: userGoalViewModel
                                              .activeActionans.first.answer ==
                                          userGoalViewModel.healthGoalRes?.data?.first
                                              .answersData?[index].answer
                                      ? kGreen
                                      : stroke,
                                ),
                                borderRadius: BorderRadius.circular(16.r),
                                color: kWhite,
                              ),
                              child: ListTile(
                                splashColor: Colors.transparent,
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 10.w),
                                onTap: () {
                                  userGoalViewModel.activeActionans.first = Answear(
                                    answerId: userGoalViewModel.activeActionRes?.data
                                            ?.first.answersData?[index].id ??
                                        "",
                                    answer: userGoalViewModel.activeActionRes?.data
                                        ?.first.answersData?[index].answer,
                                    subAnswer: userGoalViewModel.activeActionRes?.data
                                        ?.first.answersData?[index].subAnswer,
                                    slug: userGoalViewModel.activeActionRes?.data
                                        ?.first.answersData?[index].slug,
                                  );
                                  setState(() {});
                                },
                                leading: ImageIcon(
                                  AssetImage(
                                    img[index],
                                  ),
                                  size: 35.w,
                                  color: userGoalViewModel
                                              .activeActionans.first.answer ==
                                          userGoalViewModel.activeActionRes?.data
                                              ?.first.answersData?[index].answer
                                      ? kGreen
                                      : darkGrey,
                                ),
                                title: Text(
                                  userGoalViewModel.activeActionRes?.data?.first
                                          .answersData?[index].answer ??
                                      "",
                                  style: TextStyle(
                                    color: richBalck,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                subtitle: Text(
                                  userGoalViewModel.activeActionRes?.data?.first
                                          .answersData?[index].subAnswer ??
                                      "",
                                  style: TextStyle(
                                    color: darkGrey,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                trailing: Radio(
                                  value: userGoalViewModel.activeActionRes?.data
                                      ?.first.answersData?[index].answer,
                                  groupValue:
                                      userGoalViewModel.activeActionans.first.answer,
                                  activeColor: kGreen,
                                  onChanged: (value) {
                                    userGoalViewModel.activeActionans.first = Answear(
                                      answerId: userGoalViewModel.activeActionRes
                                              ?.data?.first.answersData?[index].id ??
                                          "",
                                      answer: userGoalViewModel.activeActionRes?.data
                                          ?.first.answersData?[index].answer,
                                      subAnswer: userGoalViewModel.activeActionRes
                                          ?.data?.first.answersData?[index].subAnswer,
                                      slug: userGoalViewModel.activeActionRes?.data
                                          ?.first.answersData?[index].slug,
                                    );
                                    setState(() {});
                                    print(userGoalViewModel.activeActionans);
                                  },
                                ),
                              ),
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
                      buttonColor:
                          userGoalViewModel.activeActionans.first.answerId == ""
                              ? kGrey
                              : primaryColor,
                      ontap: () {
                        HapticFeedback.lightImpact();
                        if (userGoalViewModel.activeActionans.first.answerId == "") {
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
    final SnackBar snackBar = SnackBar(
      content: Text(message,
        style: const TextStyle(
          color: kGrey,
        )),
      backgroundColor: kGreen,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
