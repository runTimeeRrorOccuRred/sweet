// ignore_for_file: avoid_redundant_argument_values

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sweetlifesaver/core/constants.dart';
import 'package:sweetlifesaver/data/remote/food/model/activity/add_activity_temp.dart';
import 'package:sweetlifesaver/utils/json/json_parse.dart';
import 'package:sweetlifesaver/utils/utils.dart';
import 'package:sweetlifesaver/view/component/help_Icon/helpicon.dart';
import 'package:sweetlifesaver/view/screens/dashboard/home/home_view_model.dart';

class CreateCustomActivityView extends ConsumerStatefulWidget {
  const CreateCustomActivityView({super.key});

  @override
  ConsumerState<CreateCustomActivityView> createState() =>
      _CreateCustomActivityViewState();
}

class _CreateCustomActivityViewState
    extends ConsumerState<CreateCustomActivityView> with BaseScreenView {
  String? selectedValue;
  final _formKey = GlobalKey<FormState>();
  TextEditingController activityName = TextEditingController();
  TextEditingController duration = TextEditingController();
  TextEditingController calories = TextEditingController();
  FocusNode activityNameFocusNode = FocusNode();
  FocusNode durationFocusNode = FocusNode();
  FocusNode caloriesFocusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    final HomeViewModel homeViewModel = ref.watch(homeViewModelProvider);
    return GestureDetector(
      onTap: () {
        activityNameFocusNode.unfocus();
        durationFocusNode.unfocus();
        caloriesFocusNode.unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: kWhite,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              context.pop();
            },
          ),
          actions: [
            TextButton(
              onPressed: () {
                if (activityName.text == "" ||
                    duration.text == "" ||
                    calories.text == "" ||
                    selectedValue == "") {
                  showSnackbar("Please fill all the fields");
                  return;
                }
                homeViewModel.tempActivitylist.add(
                  AddActivityTemp(
                    activityName: activityName.text,
                    activityTypeId: selectedValue,
                    activityTypeName:
                        (homeViewModel.getActivityTypeRes?.data ?? [])
                                .firstWhere(
                                  (element) => element.id == selectedValue,
                                )
                                .types ??
                            "",
                    activityTypeIcon:
                        (homeViewModel.getActivityTypeRes?.data ?? [])
                                .firstWhere(
                                  (element) => element.id == selectedValue,
                                )
                                .icon ??
                            AppConstants.activityPlaceholder, // activityType id
                    duration: parseInteger(duration.text),
                    calories: parseDouble(calories.text),
                    types: "custom",
                    level: null,
                    me: null,
                    // activityType name
                    // activityType icon
                  ),
                );
                context.pop();
              },
              child: Text(
                'Save',
                style: TextStyle(color: primaryColor, fontSize: 14.sp),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: PaddedColumn(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            children: [
              ListTile(
                visualDensity: VisualDensity.compact,
                splashColor: Colors.transparent,
                dense: true,
                contentPadding: EdgeInsets.zero,
                title: Text(
                  'Create Custom Activity',
                  style: TextStyle(
                    color: richBalck,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                trailing: InkWell(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () {
                    HapticFeedback.lightImpact();
                  },
                  child: const HelpIcon(
                    color: primaryColor,
                    iconName: HelpIconName.healthGoal,
                  ),
                ),
              ),
              gapH16,
              TextFormField(
                controller: activityName,
                focusNode: activityNameFocusNode,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  hintText: "Enter Activity Name",
                  fillColor: const Color.fromRGBO(248, 248, 248, 1),
                  filled: true,
                  labelText: 'Activity Name*',
                  labelStyle: TextStyle(
                    color: darkGrey,
                    fontSize: 13.sp,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4.w),
                    borderSide: const BorderSide(
                      color: stroke,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4.w),
                    borderSide: const BorderSide(
                      color: stroke,
                    ),
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 16.w,
                    vertical: 12.h,
                  ),
                ),
              ),
              gapH16,
              Form(
                key: _formKey,
                child: SizedBox(
                  height: 48.h,
                  child: DropdownButtonFormField2<String>(
                    value: selectedValue,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: kGrey.withOpacity(0.1),
                      contentPadding: EdgeInsets.symmetric(vertical: 16.w),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                          color: stroke,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                          color: stroke,
                        ),
                      ),
                      // Add more decoration..
                    ),
                    hint: Text(
                      'Pick Activity Type',
                      style: TextStyle(
                        color: kGrey,
                        fontSize: 14.sp,
                      ),
                    ),
                    items: (ref
                                .watch(homeViewModelProvider)
                                .getActivityTypeRes
                                ?.data ??
                            [])
                        .map(
                          (item) => DropdownMenuItem<String>(
                            value: item.id,
                            child: Text(
                              item.types ?? "",
                              style: TextStyle(
                                fontSize: 12.sp,
                              ),
                            ),
                          ),
                        )
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        selectedValue = value;
                      });
                    },
                    iconStyleData: const IconStyleData(
                      icon: Icon(
                        Icons.arrow_drop_down,
                        color: Colors.black45,
                      ),
                    ),
                    dropdownStyleData: DropdownStyleData(
                      elevation: 6,
                      offset: const Offset(0, -5),
                      maxHeight: 370.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    menuItemStyleData: MenuItemStyleData(
                      height: 30.h,
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                    ),
                  ),
                ),
              ),
              gapH16,
              TextFormField(
                controller: duration,
                keyboardType: TextInputType.number,
                focusNode: durationFocusNode,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  suffix: Text(
                    'Minutes Spent',
                    style: TextStyle(
                      color: richBalck,
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  fillColor: kGrey.withOpacity(0.1),
                  filled: true,
                  hintText: '0',
                  labelText: 'Duration*',
                  labelStyle: TextStyle(
                    color: darkGrey,
                    fontSize: 13.sp,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4.w),
                    borderSide: const BorderSide(
                      color: stroke,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4.w),
                    borderSide: const BorderSide(
                      color: stroke,
                    ),
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 16.w,
                    vertical: 12.h,
                  ),
                ),
              ),
              gapH16,
              TextFormField(
                controller: calories,
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.done,
                focusNode: caloriesFocusNode,
                decoration: InputDecoration(
                  suffix: Text(
                    'Cal',
                    style: TextStyle(
                      color: richBalck,
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  fillColor: kGrey.withOpacity(0.1),
                  hintText: '0',
                  filled: true,
                  labelText: 'Calories*',
                  labelStyle: TextStyle(
                    color: darkGrey,
                    fontSize: 13.sp,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4.w),
                    borderSide: const BorderSide(
                      color: stroke,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4.w),
                    borderSide: const BorderSide(
                      color: stroke,
                    ),
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 16.w,
                    vertical: 12.h,
                  ),
                ),
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
