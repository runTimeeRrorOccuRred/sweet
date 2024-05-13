import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:sweetlifesaver/utils/custom_button.dart';
import 'package:sweetlifesaver/utils/forms/sliderForm.dart';
import 'package:sweetlifesaver/utils/utils.dart';
import 'package:sweetlifesaver/view/screens/user_goal/usergoal_view_model.dart';
import 'package:wheel_picker/wheel_picker.dart';

class AboutMoreYourselfView extends ConsumerStatefulWidget {
  const AboutMoreYourselfView({super.key});

  @override
  ConsumerState<AboutMoreYourselfView> createState() =>
      _AboutMoreYourselfViewState();
}

class _AboutMoreYourselfViewState extends ConsumerState<AboutMoreYourselfView>
    with BaseScreenView {
  TextEditingController ageController = TextEditingController();
  bool isCheck(UserGoalViewModel userGoalViewModel) {
    if (userGoalViewModel.dbo != "" && userGoalViewModel.weightValue != "0") {
      if (userGoalViewModel.heightUnitName == '1') {
        if (userGoalViewModel.heightValue != "0" ||
            userGoalViewModel.heightUnit != "0") {
          return true;
        }
      } else {
        if (userGoalViewModel.heightcmValue != "0") {
          return true;
        }
      }
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    final UserGoalViewModel userGoalViewModel =
        ref.watch(userGoalViewModelProvider);
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(
          left: 16.w,
          right: 16.w,
          bottom: 16.h,
          top: 10.h,
        ),
        child: CustomButton(
          buttonText: "Next",
          buttonColor: isCheck(userGoalViewModel) ? primaryColor : kGrey,
          ontap: () {
            HapticFeedback.lightImpact();
            if (!isCheck(userGoalViewModel)) {
              showSnackbar("Please select an option");
            } else {
              ref.read(userGoalViewModelProvider).savelocalStorage(context);
              if (ref.watch(userGoalViewModelProvider).isReStart_afresh) {
                context.pushNamed(
                  AppRoute.loginView.name,
                  pathParameters: {'isBackBtn': "true"},
                );
              } else {
                context.pushNamed(AppRoute.signupView.name);
              }
            }
          },
        ),
      ),
      body: SingleChildScrollView(
        child: PaddedColumn(
          crossAxisAlignment: CrossAxisAlignment.start,
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          children: [
            gapH20,
            Text(
              'What is your Date of Birth?',
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
                color: richBalck,
              ),
            ),
            gapH16,
            TextFormField(
              controller:
                  TextEditingController(text: userGoalViewModel.dbo ?? ''),
              readOnly: true,
              keyboardType: TextInputType.datetime,
              onTap: () {
                showDatePicker(
                  context: context,
                  initialDate: ageController.text.isEmpty
                      ? calculateDate18YearsAgo(DateTime.now())
                      : DateFormat('MM/dd/yyyy').parse(ageController.text),
                  firstDate: DateTime(1900),
                  lastDate: calculateDate18YearsAgo(DateTime.now()),
                  builder: (context, child) {
                    return Theme(
                      data: Theme.of(context).copyWith(
                        colorScheme: const ColorScheme.light(
                          surfaceTint: kWhite,
                          primary: primaryColor, // <-- SEE HERE
                        ),
                        textButtonTheme: TextButtonThemeData(
                          style: TextButton.styleFrom(
                            backgroundColor:
                                Colors.transparent, // button text color
                          ),
                        ),
                      ),
                      child: child!,
                    );
                  },
                  // selectableDayPredicate: (DateTime val) =>
                  //     val.isBefore(DateTime.now()),
                ).then((value) {
                  value == null
                      ? null
                      : setState(() {
                          ageController.text =
                              DateFormat('MM/dd/yyyy').format(value);
                          userGoalViewModel.setDob(ageController.text);
                        });
                });
              },
              decoration: InputDecoration(
                label: Text(
                  "Date",
                  style: TextStyle(
                    fontSize: 14.0.sp,
                    color: kGrey,
                  ),
                ),
                hintStyle: TextStyle(
                  fontSize: 14.sp,
                  color: richBalck,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6.r),
                  borderSide: const BorderSide(
                    color: kGrey,
                  ),
                ),
                suffixIcon: Icon(
                  Icons.calendar_today,
                  color: ageController.text.isNotEmpty ? primaryColor : kGrey,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6.r),
                  borderSide: const BorderSide(
                    color: kGrey,
                  ),
                ),
                hintText: ageController.text == ''
                    ? "mm/dd/yyyy"
                    : ageController.text,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6.r),
                  borderSide: const BorderSide(
                    color: primaryColor,
                  ),
                ),
              ),
            ),
            gapH20,
            Text(
              'What was your gender at birth?',
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
                color: richBalck,
              ),
            ),
            gapH16,
            SliderForm(
              txt1: "Male",
              txt2: "Female",
              onValueChanged: (value) {
                userGoalViewModel.setGender(value == 1 ? "Male" : "Female");
              },
              initialValue: userGoalViewModel.gender == "Male" ? 1 : 2,
            ),
            gapH20,
            Text(
              'What is your Height?',
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
                color: richBalck,
              ),
            ),
            gapH16,
            TextFormField(
              controller: TextEditingController(
                text: userGoalViewModel.heightUnitName == "1"
                    ? "${userGoalViewModel.heightValue} feet ${userGoalViewModel.heightUnit!} inches"
                    : "${userGoalViewModel.heightcmValue} Centimetre",
              ),
              readOnly: true,
              onChanged: (value) {},
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
                  builder: (context) {
                    return StatefulBuilder(
                      builder: (BuildContext context, StateSetter setState) {
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
                                  borderRadius: BorderRadius.circular(10.r),
                                ),
                              ),
                            ),
                            gapH10,
                            Align(
                              alignment: Alignment.topRight,
                              child: CustomSlidingSegmentedControl<int>(
                                padding: 15.w,
                                height: 25.h,
                                initialValue:
                                    int.parse(userGoalViewModel.heightUnitName),
                                onValueChanged: (int value) {
                                  setState(() {});
                                  userGoalViewModel
                                      .setHeightUnitName(value.toString());
                                },
                                children: {
                                  1: Text(
                                    "ft",
                                    style: GoogleFonts.workSans(
                                      color: userGoalViewModel.heightUnitName ==
                                              "1"
                                          ? kBlack
                                          : darkGrey,
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  2: Text(
                                    "cm",
                                    style: GoogleFonts.workSans(
                                      color: userGoalViewModel.heightUnitName ==
                                              "2"
                                          ? kBlack
                                          : darkGrey,
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                },
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6.r),
                                  color: kGrey.withOpacity(0.2),
                                ),
                                duration: const Duration(milliseconds: 150),
                                innerPadding: EdgeInsets.all(4.w),
                                thumbDecoration: BoxDecoration(
                                  color: kGreen,
                                  borderRadius: BorderRadius.circular(6.r),
                                ),
                              ),
                            ),
                            if (userGoalViewModel.heightUnitName == "2")
                              SizedBox(
                                height: 200.h,
                                child: const WheelPickerHeightCm(),
                              )
                            else
                              SizedBox(
                                height: 200.h,
                                child: const WheelPickerHeightExample(),
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
              decoration: InputDecoration(
                label: Text(
                  "Height",
                  style: TextStyle(
                    fontSize: 14.0.sp,
                    color: kGrey,
                  ),
                ),
                hintStyle: TextStyle(
                  fontSize: 14.sp,
                  color: richBalck,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6.r),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6.r),
                  borderSide: const BorderSide(
                    color: kGrey,
                  ),
                ),
                suffixIcon: const Icon(Icons.keyboard_arrow_down_sharp),
              ),
            ),
            gapH20,
            Text(
              'What is your Weight?',
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
                color: richBalck,
              ),
            ),
            gapH16,
            TextFormField(
              controller: TextEditingController(
                text:
                    '${userGoalViewModel.weightValue!} ${(userGoalViewModel.weightUnit! == "Ib") ? "pounds" : "kilograms"}',
              ),
              readOnly: true,
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
                      builder: (BuildContext context, StateSetter setState) {
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
                                  borderRadius: BorderRadius.circular(10.r),
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
              decoration: InputDecoration(
                label: Text(
                  "Weight",
                  style: TextStyle(
                    fontSize: 14.0.sp,
                    color: kGrey,
                  ),
                ),
                hintStyle: TextStyle(
                  fontSize: 14.sp,
                  color: kGrey,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6.r),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6.r),
                  borderSide: const BorderSide(
                    color: kGrey,
                  ),
                ),
                suffixIcon: const Icon(Icons.keyboard_arrow_down_sharp),
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
    final SnackBar snackBar = SnackBar(
      content: Text(
        message,
        style: const TextStyle(color: kGrey),
      ),
      backgroundColor: kGreen,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  String extractNumericValue(String input) {
    final RegExp regex = RegExp(r'\b(\d+)\b');
    final Match? match = regex.firstMatch(input);
    if (match != null) {
      return match.group(0)!;
    } else {
      return ''; // Return empty string if no match found
    }
  }

  DateTime calculateDate18YearsAgo(DateTime currentDate) {
    DateTime date18YearsAgo =
        currentDate.subtract(const Duration(days: 365 * 18));
    int leapYears = 0;
    for (int i = 1; i <= 18; i++) {
      if (DateTime(date18YearsAgo.year + i, 2, 29).day == 29) {
        leapYears++;
      }
    }
    date18YearsAgo = date18YearsAgo.subtract(Duration(days: leapYears));
    return date18YearsAgo;
  }
}

//! weight wheel
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
      squeeze: 1.1,
      surroundingOpacity: .6,
      magnification: 1.2,
    );

    Widget itemBuilder(BuildContext context, int index) {
      return Text(
        "$index".padLeft(2, '0'),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              WheelPicker(
                builder: itemBuilder,
                looping: false,
                style: wheelStyle,
                selectedIndexColor: richBalck,
                itemCount: 401,
                initialIndex: int.parse(
                  ref.watch(userGoalViewModelProvider).weightValue.toString(),
                ),
                onIndexChanged: (index) {
                  ref.read(userGoalViewModelProvider).setWeightValue(
                        index.toString(),
                      );
                  setState(() {});
                },
              ),
              gapW24,
              WheelPicker(
                itemCount: 2,
                builder: (context, index) {
                  return Text(
                    ["Ib", "kg"][index],
                    style: textStyle,
                    textScaleFactor: 1.0,
                  );
                },
                initialIndex:
                    ref.watch(userGoalViewModelProvider).weightUnit == "Ib"
                        ? 0
                        : 1,
                looping: false,
                onIndexChanged: (index) {
                  ref.read(userGoalViewModelProvider).setWeightUnit(
                        index == 0 ? "Ib" : "Kg",
                      );
                  setState(() {});
                },
                selectedIndexColor: richBalck,
                style: wheelStyle.copyWith(
                  shiftAnimationStyle: const WheelShiftAnimationStyle(
                    duration: Duration(seconds: 1),
                    curve: Curves.bounceOut,
                  ),
                ),
              ),
            ],
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

//! height wheel ft
class WheelPickerHeightExample extends ConsumerStatefulWidget {
  const WheelPickerHeightExample({super.key});

  @override
  ConsumerState<WheelPickerHeightExample> createState() =>
      _WheelPickerHeightExampleState();
}

class _WheelPickerHeightExampleState
    extends ConsumerState<WheelPickerHeightExample> {
  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = TextStyle(fontSize: 17.sp, height: 1.5);
    final wheelStyle = WheelPickerStyle(
      size: 200.h,
      itemExtent: textStyle.fontSize! * textStyle.height!, // Text height
      squeeze: 1.1,
      diameterRatio: 0.95,
      surroundingOpacity: .6,
      magnification: 1.2,
    );

    Widget itemBuilder(BuildContext context, int index) {
      return Text(
        "$index".padLeft(2, '0'),
        style: textStyle,
        textScaleFactor: 1.0,
      );
    }

    return SizedBox(
      width: double.infinity,
      child: Stack(
        fit: StackFit.expand,
        children: [
          _centerBar(context),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              WheelPicker(
                builder: itemBuilder,
                looping: false,
                style: wheelStyle,
                selectedIndexColor: richBalck,
                itemCount: 21,
                initialIndex: int.parse(
                  ref.watch(userGoalViewModelProvider).heightValue.toString(),
                ),
                onIndexChanged: (index) {
                  ref.read(userGoalViewModelProvider).setHeightValue(
                        index.toString(),
                      );
                  setState(() {});
                },
              ),
              gapW24,
              Text(
                "ft",
                style: TextStyle(
                  color: richBalck,
                  fontSize: 17.sp,
                ),
                textScaleFactor: 1.0,
              ),
              gapW24,
              WheelPicker(
                itemCount: 12,
                builder: itemBuilder,
                initialIndex: int.parse(
                  ref.watch(userGoalViewModelProvider).heightUnit.toString(),
                ),
                looping: false,
                onIndexChanged: (index) {
                  ref.read(userGoalViewModelProvider).setHeightUnit(
                        index.toString(),
                      );
                  setState(() {});
                },
                selectedIndexColor: richBalck,
                style: wheelStyle.copyWith(
                  shiftAnimationStyle: const WheelShiftAnimationStyle(
                    duration: Duration(seconds: 1),
                    curve: Curves.bounceOut,
                  ),
                ),
              ),
              gapW24,
              Text(
                "in",
                style: TextStyle(color: richBalck, fontSize: 17.sp),
                textScaleFactor: 1.0,
              ),
            ],
          ),
        ],
      ),
    );
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

//! height wheel cm
class WheelPickerHeightCm extends ConsumerStatefulWidget {
  const WheelPickerHeightCm({super.key});

  @override
  ConsumerState<WheelPickerHeightCm> createState() =>
      _WheelPickerHeightCmState();
}

class _WheelPickerHeightCmState extends ConsumerState<WheelPickerHeightCm> {
  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = TextStyle(fontSize: 17.sp, height: 1.5);
    final wheelStyle = WheelPickerStyle(
      size: 200.h,
      itemExtent: textStyle.fontSize! * textStyle.height!, // Text height
      squeeze: 1.1,
      diameterRatio: 0.95,
      surroundingOpacity: .6,
      magnification: 1.2,
    );

    Widget itemBuilder(BuildContext context, int index) {
      return Text(
        "$index".padLeft(2, '0'),
        style: textStyle,
        textScaleFactor: 1.0,
      );
    }

    return SizedBox(
      width: double.infinity,
      child: Stack(
        fit: StackFit.expand,
        children: [
          _centerBar(context),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              WheelPicker(
                builder: itemBuilder,
                looping: false,
                style: wheelStyle,
                selectedIndexColor: richBalck,
                itemCount: 607,
                initialIndex: int.parse(
                  ref.watch(userGoalViewModelProvider).heightcmValue,
                ),
                onIndexChanged: (index) {
                  ref.read(userGoalViewModelProvider).setheightcm(
                        index.toString(),
                      );
                  setState(() {});
                },
              ),
              gapW24,
              Text(
                "cm",
                style: TextStyle(
                  color: richBalck,
                  fontSize: 17.sp,
                ),
                textScaleFactor: 1.0,
              ),
            ],
          ),
        ],
      ),
    );
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
