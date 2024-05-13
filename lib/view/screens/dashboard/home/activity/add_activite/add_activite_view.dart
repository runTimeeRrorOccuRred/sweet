// ignore_for_file: unnecessary_null_in_if_null_operators

import 'package:animations/animations.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sweetlifesaver/core/constants.dart';
import 'package:sweetlifesaver/data/remote/food/model/activity/add_activity_temp.dart';
import 'package:sweetlifesaver/data/remote/food/model/activity/calory_calculation_res.dart';
import 'package:sweetlifesaver/data/remote/food/model/activity/get_activity_res.dart';
import 'package:sweetlifesaver/data/remote/food/model/activity/search_activity_alllist_res.dart';
import 'package:sweetlifesaver/utils/custom_button.dart';
import 'package:sweetlifesaver/utils/json/json_parse.dart';
import 'package:sweetlifesaver/utils/utils.dart';
import 'package:sweetlifesaver/view/component/help_Icon/helpicon.dart';
import 'package:sweetlifesaver/view/component/search_activity/search_activity_view.dart';
import 'package:sweetlifesaver/view/screens/dashboard/home/activity/add_activite/widget/activity_details_tile.dart';
import 'package:sweetlifesaver/view/screens/dashboard/home/food/add_food/widget/food_tile.dart';
import 'package:sweetlifesaver/view/screens/dashboard/home/home_view_model.dart';

class AddActiviteView extends ConsumerStatefulWidget {
  const AddActiviteView({super.key});

  @override
  ConsumerState<AddActiviteView> createState() => _AddActiviteViewState();
}

class _AddActiviteViewState extends ConsumerState<AddActiviteView>
    with BaseScreenView {
  String? selectedValue;
  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 300), () {
      ref.read(homeViewModelProvider).searchActivityAllList(
            context,
            const SearchActivityAllListReq(
              activityType: "",
              activitykey: "bi",
            ),
          );
      ref.read(homeViewModelProvider).getActivityListHistory(
            context,
            const GetActivityReq(),
          );
      ref.read(homeViewModelProvider).recommendedActivity(context);
    });
    super.initState();
  }

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final HomeViewModel homeViewModel = ref.watch(homeViewModelProvider);
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: kWhite,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              homeViewModel.tempActivitylist.clear();
              context.pop();
            },
          ),
          actions: [
            TextButton(
              onPressed: () {
                if (homeViewModel.tempActivitylist.isNotEmpty) {
                  Logger.write(
                    "Activity List: ${homeViewModel.tempActivitylist}",
                  );
                  homeViewModel.createActivity(context);
                }
              },
              child: Text(
                'Save',
                style: TextStyle(
                  color: homeViewModel.tempActivitylist.isEmpty
                      ? kGrey
                      : primaryColor,
                  fontSize: 14.sp,
                ),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: PaddedColumn(
            crossAxisAlignment: CrossAxisAlignment.start,
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            children: [
              ListTile(
                visualDensity: VisualDensity.compact,
                splashColor: Colors.transparent,
                dense: true,
                contentPadding: EdgeInsets.zero,
                title: Text(
                  'Add Activities',
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
                    iconName: HelpIconName.dailyPhysicalActivities,
                  ),
                ),
              ),
              gapH10,
              Text(
                'Choose an activity type.',
                style: TextStyle(
                  color: richBalck,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              gapH12,
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
                    items: (homeViewModel.getActivityTypeRes?.data ?? [])
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
                      selectedValue = value;
                      ref.read(homeViewModelProvider).searchActivityAllList(
                            context,
                            SearchActivityAllListReq(
                              activityType: selectedValue ?? "",
                              activitykey: "",
                            ),
                          );
                      setState(() {});
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
              gapH10,
              OpenContainer(
                openElevation: 5,
                closedElevation: 0,
                closedBuilder: (context, openBuilder) {
                  return Container(
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: kGrey.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: stroke,
                      ),
                    ),
                    child: Row(
                      children: [
                        IconButton(
                          icon: const Icon(
                            Icons.search,
                            color: kGrey,
                          ),
                          onPressed: () {
                            openBuilder();
                          },
                        ),
                        Text(
                          'Search for activities',
                          style: TextStyle(
                            color: kGrey,
                            fontSize: 14.sp,
                          ),
                        ),
                      ],
                    ),
                  );
                },
                openBuilder: (context, builder) {
                  return SearchPage(
                    selectedValue: selectedValue ?? "",
                    onSearch: () {
                      setState(() {});
                    },
                  );
                },
              ),
              
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  gapH32,
                  Text(
                    'Do not find what you are looking for?',
                    style: TextStyle(
                      color: richBalck,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  gapH12,
                  CustomButton(
                    buttonText: 'Create Custom Activity',
                    ontap: () {
                      context
                          .pushNamed(AppRoute.createCustomActivity.name)
                          .then((value) => setState(() {}));
                    },
                  ),
                  gapH20,
                  Text(
                    'Items added',
                    style: TextStyle(
                      color: richBalck,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  gapH10,
                  //! added items
                  if (homeViewModel.tempActivitylist.isEmpty)
                    Padding(
                      padding: EdgeInsets.only(bottom: 6.h, top: 2.h),
                      child: const Text("No Data"),
                    )
                  else
                    Column(
                      children: [
                        ...List.generate(
                          homeViewModel.tempActivitylist.length,
                          (index) => Padding(
                            padding: EdgeInsets.only(bottom: 12.h),
                            child: ActivityDetailsTile(
                              tittle: homeViewModel.tempActivitylist[index]
                                      .activityTypeName ??
                                  "",
                              subtitle: homeViewModel
                                      .tempActivitylist[index].activityName ??
                                  "",
                              type:
                                  homeViewModel.tempActivitylist[index].types ??
                                      "",
                              imageUrl: homeViewModel.tempActivitylist[index]
                                      .activityTypeIcon ??
                                  AppConstants.activityPlaceholder,
                              duration: (homeViewModel
                                          .tempActivitylist[index].duration ??
                                      "")
                                  .toString(),
                              calorie: (homeViewModel
                                          .tempActivitylist[index].calories ??
                                      "")
                                  .toString(),
                              onRemove: () {
                                homeViewModel.tempActivitylist.removeAt(index);
                                setState(() {});
                              },
                              durationTap: (String value) {
                                if (homeViewModel
                                        .tempActivitylist[index].types ==
                                    "custom") {
                                  homeViewModel.tempActivitylist[index] =
                                      homeViewModel.tempActivitylist[index]
                                          .copyWith(
                                    duration: parseInteger(value),
                                  );
                                } else {
                                  homeViewModel
                                      .caloryCalculation(
                                    index,
                                    context,
                                    CaloryCalculationReq(
                                      me: homeViewModel
                                              .tempActivitylist[index].me ??
                                          0,
                                      level: homeViewModel
                                          .tempActivitylist[index].level,
                                      time: value.isNotEmpty
                                          ? parseInteger(value)
                                          : 0,
                                    ),
                                  )
                                      .then((valuei) {
                                    homeViewModel.tempActivitylist[index] =
                                        homeViewModel.tempActivitylist[index]
                                            .copyWith(
                                      duration: value.isNotEmpty
                                          ? parseInteger(value)
                                          : 0,
                                    );
                                  });
                                  setState(() {});
                                }
                                setState(() {});
                              },
                              calorieTap: (String value) {
                                homeViewModel.tempActivitylist[index] =
                                    homeViewModel.tempActivitylist[index]
                                        .copyWith(
                                  calories:
                                      value.isNotEmpty ? parseDouble(value) : 0,
                                );
                                setState(() {});
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  gapH10, 
                  //! history list
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Your activity history',
                        style: TextStyle(
                          color: richBalck,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      gapH6,
                      if ((homeViewModel.getActivityHistoryRes?.data?.length ??
                              0) ==
                          0)
                        const Text("No Data")
                      else
                        ...List.generate(
                          homeViewModel.getActivityHistoryRes?.data?.length ??
                              0,
                          (index) => FoodTile(
                            onTap: () {
                              homeViewModel.tempActivitylist.add(
                                AddActivityTemp(
                                  activityName: homeViewModel
                                          .getActivityHistoryRes
                                          ?.data?[index]
                                          .activityName ??
                                      "",
                                  activityTypeId: homeViewModel
                                          .getActivityHistoryRes
                                          ?.data?[index]
                                          .activityType
                                          ?.id ??
                                      "",
                                  activityTypeName: homeViewModel
                                          .getActivityHistoryRes
                                          ?.data?[index]
                                          .activityType
                                          ?.types ??
                                      "",
                                  activityTypeIcon: homeViewModel
                                          .getActivityHistoryRes
                                          ?.data?[index]
                                          .activityType
                                          ?.icon ??
                                      AppConstants.activityPlaceholder,
                                  duration: parseInteger(
                                    homeViewModel.getActivityHistoryRes
                                            ?.data?[index].duration
                                            .toString() ??
                                        "0",
                                  ),
                                  calories: parseDouble(
                                    homeViewModel.getActivityHistoryRes
                                            ?.data?[index].calories ??
                                        "0",
                                  ),
                                  types: homeViewModel.getActivityHistoryRes
                                          ?.data?[index].types ??
                                      "",
                                  me: homeViewModel.getActivityHistoryRes
                                          ?.data?[index].me ??
                                      null,
                                  level: homeViewModel.getActivityHistoryRes
                                          ?.data?[index].level ??
                                      null,
                                ),
                              );
                              setState(() {});
                            },
                            tittle: homeViewModel.getActivityHistoryRes
                                    ?.data?[index].activityType?.types ??
                                "",
                            subtitle:
                                "${homeViewModel.getActivityHistoryRes?.data?[index].activityName}, ${homeViewModel.getActivityHistoryRes?.data?[index].duration ?? ""}min, ${homeViewModel.getActivityHistoryRes?.data?[index].calories ?? ""}cal ",
                            imageUrl: homeViewModel.getActivityHistoryRes
                                    ?.data?[index].activityType?.icon ??
                                AppConstants.activityPlaceholder,
                          ),
                        ),
                    ],
                  ),
                  gapH16,
                  //! Recommended activities
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Recommended activities',
                        style: TextStyle(
                          color: richBalck,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      gapH6,
                      if ((homeViewModel.recommendedRes?.data?.length ?? 0) ==
                          0)
                        const Text("No Data")
                      else
                        ...List.generate(
                          homeViewModel.recommendedRes?.data?.length ?? 0,
                          (index) => FoodTile(
                            onTap: () {
                              homeViewModel.tempActivitylist.add(
                                AddActivityTemp(
                                  activityName: homeViewModel.recommendedRes
                                          ?.data?[index].activity ??
                                      "",
                                  activityTypeId: homeViewModel.recommendedRes
                                          ?.data?[index].activityType?.id ??
                                      "",
                                  activityTypeName: homeViewModel.recommendedRes
                                          ?.data?[index].activityType?.types ??
                                      "",
                                  activityTypeIcon: homeViewModel.recommendedRes
                                          ?.data?[index].activityType?.icon ??
                                      AppConstants.activityPlaceholder,
                                  duration: parseInteger(
                                    homeViewModel.recommendedRes?.data?[index]
                                            .duration
                                            .toString() ??
                                        "0",
                                  ),
                                  calories: parseDouble(
                                    homeViewModel.recommendedRes?.data?[index]
                                            .calories ??
                                        "0",
                                  ),
                                  types: homeViewModel
                                          .recommendedRes?.data?[index].type ??
                                      "",
                                  me: homeViewModel
                                          .recommendedRes?.data?[index].me ??
                                      null,
                                  level: homeViewModel
                                          .recommendedRes?.data?[index].level ??
                                      null,
                                ),
                              );
                              setState(() {});
                            },
                            tittle: homeViewModel.recommendedRes?.data?[index]
                                    .activityType?.types ??
                                "",
                            subtitle:
                                "${homeViewModel.recommendedRes?.data?[index].activity}, ${homeViewModel.recommendedRes?.data?[index].duration ?? ""}min, ${homeViewModel.recommendedRes?.data?[index].calories ?? ""}cal ",
                            imageUrl: homeViewModel.recommendedRes?.data?[index]
                                    .activityType?.icon ??
                                AppConstants.activityPlaceholder,
                          ),
                        ),
                    ],
                  ),
                  gapH16,
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
