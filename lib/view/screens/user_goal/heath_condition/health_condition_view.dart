import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sweetlifesaver/data/remote/auth/models/update_question_model.dart';
import 'package:sweetlifesaver/utils/custom_button.dart';
import 'package:sweetlifesaver/utils/forms/sliderForm.dart';
import 'package:sweetlifesaver/utils/utils.dart';
import 'package:sweetlifesaver/view/screens/user_goal/heath_condition/heath_condition_view_model.dart';
import 'package:sweetlifesaver/view/screens/user_goal/usergoal_view_model.dart';
import 'package:wheel_picker/wheel_picker.dart';
 
class HealthConditionView extends ConsumerStatefulWidget {
  const HealthConditionView({super.key});
 
  @override
  ConsumerState<HealthConditionView> createState() =>
      _HealthConditionViewState();
}
 
class _HealthConditionViewState extends ConsumerState<HealthConditionView>
    with BaseScreenView {
  @override
  void initState() {
    conditionCheck();
    super.initState();
  }
 
  void conditionCheck() {}
 
  @override
  Widget build(BuildContext context) {
    final UserGoalViewModel userGoalViewModel =
        ref.watch(userGoalViewModelProvider);
    return userGoalViewModel.isLoadHealthConditionRes
        ? const Center(
            child: CircularProgressIndicator(
              color: primaryColor,
            ),
          )
        : Scaffold(
            bottomNavigationBar: Padding(
              padding: EdgeInsets.only(
                left: 16.w,
                right: 16.w,
                bottom: 16.h,
                top: 10.h,
              ),
              child: CustomButton(
                buttonText: "Next",
                ontap: () {
                  HapticFeedback.lightImpact();
                  setState(() {
                    userGoalViewModel
                        .setSelectedPage(userGoalViewModel.selectedPage + 1);
                  });
                  print(userGoalViewModel.healthConditionans);
                },
              ),
            ),
            body: SmartRefresher(
              enablePullDown: false,
              header: const MaterialClassicHeader(
                color: Colors.white,
                backgroundColor: primaryColor,
              ),
              controller: ref
                  .watch(heathConditionViewModelProvider)
                  .heathConditionRefreshController,
              onRefresh: () async {},
              child: SingleChildScrollView(
                child: Column(
                  children: [
                  PaddedColumn(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      gapH20,
                      if (!((userGoalViewModel.userHealthGoalans.first.answer ??
                                  "")
                              .contains(
                            "Pre-Diabetes",
                          ) ||
                          (userGoalViewModel.userHealthGoalans.first.answer ?? "")
                              .contains(
                            "Gestational",
                          )))
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'What type of diabetes do you have?',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            gapH10,
                            SliderForm(
                              txt1: userGoalViewModel.healthConditionRes?.data
                                      ?.first.answersData?.first.answer ??
                                  "",
                              txt2: userGoalViewModel.healthConditionRes?.data
                                      ?.first.answersData?[1].answer ??
                                  "",
                              onValueChanged: (value) {
                                userGoalViewModel.healthConditionans.first =
                                    Answear(
                                  answerId: value == 1
                                      ? userGoalViewModel.healthConditionRes?.data
                                              ?.first.answersData?.first.id ??
                                          ""
                                      : userGoalViewModel.healthConditionRes?.data
                                              ?.first.answersData?[1].id ??
                                          "",
                                  answer: value == 1
                                      ? userGoalViewModel.healthConditionRes?.data
                                              ?.first.answersData?.first.answer ??
                                          ""
                                      : userGoalViewModel.healthConditionRes?.data
                                              ?.first.answersData?[1].answer ??
                                          "",
                                  subAnswer: value == 1
                                      ? userGoalViewModel
                                              .healthConditionRes
                                              ?.data
                                              ?.first
                                              .answersData
                                              ?.first
                                              .subAnswer ??
                                          ""
                                      : userGoalViewModel.healthConditionRes?.data
                                              ?.first.answersData?[1].subAnswer ??
                                          "",
                                  slug: value == 1
                                      ? userGoalViewModel.healthConditionRes?.data
                                              ?.first.answersData?.first.slug ??
                                          ""
                                      : userGoalViewModel.healthConditionRes?.data
                                              ?.first.answersData?[1].slug ??
                                          "",
                                );
                                setState(() {});
                              },
                              initialValue: userGoalViewModel
                                          .healthConditionans.first.answerId ==
                                      userGoalViewModel.healthConditionRes?.data
                                          ?.first.answersData?.first.id
                                  ? 1
                                  : 2,
                            ),
                            gapH10,
                          ],
                        )
                      else
                        const SizedBox(),
                      gapH10,
                      Text(
                        'Do you have any other health condition(s)? Please list.',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      gapH20,
                      TextFormField(
                        initialValue: userGoalViewModel
                                .healthConditionans.first.subAnswer ??
                            "",
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintText: 'Like High BP, High Cholesterol etc',
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
                        onChanged: (value) {
                          userGoalViewModel.healthConditionans.first = Answear(
                            answerId: userGoalViewModel
                                .healthConditionans.first.answerId,
                            answer:
                                userGoalViewModel.healthConditionans.first.answer,
                            subAnswer: value,
                            slug: userGoalViewModel.healthConditionans.first.slug,
                          );
                          setState(() {});
                          print(userGoalViewModel.healthConditionans);
                        },
                        maxLines: 3,
                      ),
                      gapH20,
                      if ((userGoalViewModel.userHealthGoalans.first.answer ?? "")
                          .contains(
                        "Gestational",
                      ))
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 10.w,
                                  vertical: 12.h,
                                ),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: kGrey,
                                  ),
                                  borderRadius: BorderRadius.circular(8.w),
                                ),
                                child: Text(
                                  userGoalViewModel.healthConditionRes?.data
                                          ?.first.answersData?[2].answer
                                          .toString() ??
                                      "",
                                  style: TextStyle(
                                    color: richBalck,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                            gapW10,
                            InkWell(
                              onTap: () {
                                showModalBottomSheet(
                                  enableDrag: false,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20.r),
                                      topRight: Radius.circular(20.r),
                                    ),
                                  ),
                                  context: context,
                                  builder: (BuildContext context) {
                                    return StatefulBuilder(
                                      builder: (
                                        BuildContext context,
                                        StateSetter setState,
                                      ) {
                                        return PaddedColumn(
                                          padding: EdgeInsets.symmetric(
                                            vertical: 5,
                                            horizontal: 10.w,
                                          ),
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            InkWell(
                                              onTap: () {
                                                Navigator.pop(context);
                                              },
                                              child: Container(
                                                height: 4.h,
                                                width: 35.w,
                                                decoration: BoxDecoration(
                                                  color: richBalck,
                                                  borderRadius:
                                                      BorderRadius.circular(10.r),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 200.h,
                                              child: const WheelPickerExample(),
                                            ),
                                            CustomButton(
                                              buttonText: "Save",
                                              ontap: () {
                                                Navigator.pop(context);
                                              },
                                            ),
                                            gapH10,
                                          ],
                                        );
                                      },
                                    );
                                  },
                                );
                              },
                              child: Container(
                                width: 55.w,
                                padding: EdgeInsets.symmetric(
                                  vertical: 12.h,
                                ),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: kGrey,
                                  ),
                                  borderRadius: BorderRadius.circular(8.w),
                                ),
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        ' ${ref.read(userGoalViewModelProvider).fetusesCount}',
                                        style: TextStyle(
                                          color: richBalck,
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      const Icon(
                                        Icons.arrow_drop_down,
                                        color: richBalck,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                    ],
                  ),
                 
                  ],
                ),
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
    // implement showSnackbar
  }
}
 
//! fetuses wheel
class WheelPickerExample extends ConsumerStatefulWidget {
  const WheelPickerExample({super.key});
 
  @override
  ConsumerState<WheelPickerExample> createState() => _WheelPickerExampleState();
}
 
class _WheelPickerExampleState extends ConsumerState<WheelPickerExample> {
  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = TextStyle(
      fontSize: 16.sp,
      height: 1.5,
    );
    final wheelStyle = WheelPickerStyle(
      size: 200.h,
      itemExtent: textStyle.fontSize! * textStyle.height!, // Text height
      surroundingOpacity: .6,
      magnification: 1.2,
    );
 
    Widget itemBuilder(BuildContext context, int index) {
      return Text(
        "${index + 1}".padLeft(2, '0'),
        style: textStyle,
        textScaleFactor: 1.0,
      );
    }
 
    return SizedBox(
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: [
          _centerBar(context),
          WheelPicker(
            builder: itemBuilder,
            looping: false,
            style: wheelStyle,
            selectedIndexColor: richBalck,
            itemCount: 3,
            initialIndex: int.parse(
              ref
                      .watch(userGoalViewModelProvider)
                      .healthConditionans
                      .first
                      .answer ??
                  "1",
            ),
            onIndexChanged: (index) {
              ref
                  .read(userGoalViewModelProvider)
                  .setFetuses((index + 1).toString());
              ref.watch(userGoalViewModelProvider).healthConditionans.first =
                  Answear(
                answerId: ref
                    .watch(userGoalViewModelProvider)
                    .healthConditionans
                    .first
                    .answerId,
                answer: index.toString(),
                subAnswer: ref
                    .watch(userGoalViewModelProvider)
                    .healthConditionans
                    .first
                    .subAnswer,
                slug: ref
                    .watch(userGoalViewModelProvider)
                    .healthConditionans
                    .first
                    .slug,
              );
              setState(() {});
            },
          ),
        ],
      ),
    );
  }
 
  @override
  void dispose() {
    super.dispose();
  }
 
  Widget _centerBar(BuildContext context) {
    return Center(
      child: Container(
        height: 38.h,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(0, 0, 0, 0.04),
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );
  }
}