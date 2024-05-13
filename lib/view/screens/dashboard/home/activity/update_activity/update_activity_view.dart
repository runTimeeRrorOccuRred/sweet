import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sweetlifesaver/data/remote/food/model/activity/calory_calculation_res.dart';
import 'package:sweetlifesaver/data/remote/food/model/activity/update_activity_res.dart';
import 'package:sweetlifesaver/utils/json/json_parse.dart';
import 'package:sweetlifesaver/utils/utils.dart';
import 'package:sweetlifesaver/view/component/help_Icon/helpicon.dart';
import 'package:sweetlifesaver/view/screens/dashboard/home/home_view_model.dart';

class UpdateActivityView extends ConsumerStatefulWidget {
  final String id;
  final UpdateActivityReq updateActivityReq;
  final String activityTypeName;
  const UpdateActivityView(
    this.id,
    this.updateActivityReq,
    this.activityTypeName, {
    super.key,
  });

  @override
  ConsumerState<UpdateActivityView> createState() => _UpdateActivityViewState();
}

class _UpdateActivityViewState extends ConsumerState<UpdateActivityView>
    with BaseScreenView {
  String? selectedValue;
  TextEditingController activityName = TextEditingController();
  TextEditingController duration = TextEditingController();
  TextEditingController calories = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    selectedValue = widget.updateActivityReq.activityType ?? "";
    activityName.text = widget.updateActivityReq.activityName ?? "";
    duration.text = widget.updateActivityReq.duration.toString();
    calories.text = widget.updateActivityReq.calories.toString();
    Future.delayed(const Duration(milliseconds: 300), () {
      ref
          .read(homeViewModelProvider)
          .setCalories(widget.updateActivityReq.calories ?? 0.0);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              print("activityTypeName: ${widget.updateActivityReq.types}");
              if (widget.updateActivityReq.types == "normal") {
                if (parseInteger(duration.text) != 0 &&
                    duration.text.isNotEmpty) {
                  ref.read(homeViewModelProvider).updateActivity(
                        context,
                        UpdateActivityReq(
                          activityName: activityName.text,
                          activityType: selectedValue,
                          duration: parseInteger(duration.text),
                          calories: parseDouble(
                            ref.read(homeViewModelProvider).calories,
                          ),
                          me: widget.updateActivityReq.me,
                          level: widget.updateActivityReq.level,
                          types: widget.updateActivityReq.types,
                          userId: widget.updateActivityReq.userId,
                        ),
                        widget.id,
                      );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        'Duration should not be empty or zero',
                      ),
                      backgroundColor: kGreen,
                    ),
                  );
                }
              } else {
                if (activityName.text.isNotEmpty &&
                    selectedValue != null &&
                    duration.text.isNotEmpty &&
                    calories.text.isNotEmpty &&
                    parseInteger(duration.text) != 0 &&
                    parseDouble(calories.text) != 0.0) {
                  ref.read(homeViewModelProvider).updateActivity(
                        context,
                        UpdateActivityReq(
                          activityName: activityName.text,
                          activityType: selectedValue,
                          duration: parseInteger(duration.text),
                          calories: parseDouble(calories.text),
                          me: widget.updateActivityReq.me,
                          level: widget.updateActivityReq.level,
                          types: widget.updateActivityReq.types,
                          userId: widget.updateActivityReq.userId,
                        ),
                        widget.id,
                      );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        'All fields are required',
                      ),
                      backgroundColor: kGreen,
                    ),
                  );
                }
              }
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
                'Update  Activity',
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
              readOnly:
                  widget.updateActivityReq.types == "custom" ? false : true,
              controller: activityName,
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
            if (widget.updateActivityReq.types == "normal")
              TextFormField(
                controller: TextEditingController(
                  text: widget.activityTypeName,
                ),
                readOnly: true,
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                  suffix: const Icon(
                    Icons.arrow_drop_down,
                    color: Colors.black45,
                  ),
                  fillColor: kGrey.withOpacity(0.1),
                  hintText: '0',
                  filled: true,
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
              )
            else
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
              onFieldSubmitted: (value) {
                if (widget.updateActivityReq.types == "normal") {
                  ref
                      .read(homeViewModelProvider)
                      .updateCaloryCalculation(
                        context,
                        CaloryCalculationReq(
                          me: widget.updateActivityReq.me,
                          level: widget.updateActivityReq.level,
                          time: parseInteger(duration.text),
                        ),
                      )
                      .then((value) {
                    calories.text = ref
                            .watch(homeViewModelProvider)
                            .updateCaloryCalculationRes
                            ?.data
                            ?.calories
                            .toString() ??
                        "";
                    setState(() {});
                  });
                }
              },
              onTapOutside: (event) {},
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              textInputAction: TextInputAction.done,
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
            if (widget.updateActivityReq.types == "normal")
              TextFormField(
                controller: TextEditingController(
                  text: ref.watch(homeViewModelProvider).calories.toString(),
                ),
                readOnly: true,
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                  suffix: Text(
                    'Kcal',
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
              )
            else
              TextFormField(
                controller: calories,
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                  suffix: Text(
                    'Kcal',
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
            gapH16,
            if (widget.updateActivityReq.types == "normal")
              Text(
                'Note: Calories are calculated based on the duration of the activity',
                style: TextStyle(
                  color: kGrey,
                  fontSize: 12.sp,
                ),
              ),
            gapH16,
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
    // implement showSnackbar
  }
}
