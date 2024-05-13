// ignore_for_file: unnecessary_null_in_if_null_operators

import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';
import 'package:sweetlifesaver/core/constants.dart';
import 'package:sweetlifesaver/data/remote/food/model/activity/add_activity_temp.dart';
import 'package:sweetlifesaver/data/remote/food/model/activity/search_activity_alllist_res.dart';
import 'package:sweetlifesaver/utils/json/json_parse.dart';
import 'package:sweetlifesaver/utils/utils.dart';
import 'package:sweetlifesaver/view/screens/dashboard/home/food/add_food/widget/food_tile.dart';
import 'package:sweetlifesaver/view/screens/dashboard/home/home_view_model.dart';

class SearchPage extends ConsumerStatefulWidget {
  final String selectedValue;
  final Function() onSearch;
  const SearchPage({
    Key? key,
    required this.selectedValue,
    required this.onSearch,
  }) : super(key: key);

  @override
  ConsumerState<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends ConsumerState<SearchPage> {
  final searchControler = TextEditingController();
  final searchFocusNode = FocusNode();
  String searchKey = "";
  @override
  Widget build(BuildContext context) {
    final HomeViewModel homeViewModel = ref.watch(homeViewModelProvider);
    return GestureDetector(
      onTap: () {
        searchFocusNode.unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: kWhite,
          surfaceTintColor: kWhite,
        ),
        body: SafeArea(
          child: Material(
            color: Theme.of(context).colorScheme.surface,
            child: PaddedColumn(
              padding: EdgeInsets.symmetric(
                horizontal: 16.w,
                vertical: 0.h,
              ),
              children: [
                TextFormField(
                  autofocus: true,
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.search,
                  focusNode: searchFocusNode,
                  controller: searchControler,
                  onChanged: (value) {
                    // write a function of debouncing here
                    if (value.length < 2) return;
                    searchKey = value.trim();
                    ref.read(homeViewModelProvider).searchActivityAllList(
                          context,
                          SearchActivityAllListReq(
                            activityType: widget.selectedValue,
                            activitykey: searchKey ?? "",
                          ),
                        );
                    setState(() {});
                  },
                  decoration: InputDecoration(
                    fillColor: kGrey.withOpacity(0.1),
                    filled: true,
                    prefixIcon: const Icon(
                      Icons.search,
                      color: kGrey,
                    ),
                    hintText: 'Search for activities',
                    hintStyle: TextStyle(
                      color: kGrey,
                      fontSize: 14.sp,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.w),
                      borderSide: const BorderSide(
                        color: stroke,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.w),
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
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        gapH10,
                        if ((homeViewModel.searchActivityAllListRes?.data
                                    ?.activityTypeListed?.length ??
                                0) ==
                            0)
                          Text(
                            'No activity found.',
                            style: TextStyle(
                              color: kGrey,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        else
                          const SizedBox(),
                        ...List.generate(
                          homeViewModel.searchActivityAllListRes?.data
                                  ?.activityTypeListed?.length ??
                              0,
                          (index) => FoodTile(
                            onTap: () {
                              widget.onSearch();
                              searchKey = "";
                              searchControler.clear();
                              searchFocusNode.unfocus();
                              context.pop();

                              homeViewModel.tempActivitylist.add(
                                AddActivityTemp(
                                  activityName: homeViewModel
                                          .searchActivityAllListRes
                                          ?.data
                                          ?.activityTypeListed?[index]
                                          .activity ??
                                      "",
                                  activityTypeId: homeViewModel
                                          .searchActivityAllListRes
                                          ?.data
                                          ?.activityTypeListed?[index]
                                          .activityType
                                          ?.id ??
                                      "",
                                  activityTypeName: homeViewModel
                                          .searchActivityAllListRes
                                          ?.data
                                          ?.activityTypeListed?[index]
                                          .activityType
                                          ?.types ??
                                      "",
                                  activityTypeIcon: homeViewModel
                                      .searchActivityAllListRes
                                      ?.data
                                      ?.activityTypeListed?[index]
                                      .activityType
                                      ?.icon,
                                  level: homeViewModel
                                          .searchActivityAllListRes
                                          ?.data
                                          ?.activityTypeListed?[index]
                                          .level ??
                                      null,
                                  me: parseDouble(
                                    homeViewModel.searchActivityAllListRes?.data
                                        ?.activityTypeListed?[index].me,
                                  ),
                                  types: homeViewModel
                                          .searchActivityAllListRes
                                          ?.data
                                          ?.activityTypeListed?[index]
                                          .type ??
                                      "",
                                  calories: parseDouble(
                                    homeViewModel
                                            .searchActivityAllListRes
                                            ?.data
                                            ?.activityTypeListed?[index]
                                            .calories ??
                                        0.0,
                                  ),
                                  duration: parseInteger(
                                    homeViewModel
                                            .searchActivityAllListRes
                                            ?.data
                                            ?.activityTypeListed?[index]
                                            .duration ??
                                        0,
                                  ),
                                ),
                              );
                              print(homeViewModel.tempActivitylist);
                              setState(() {});
                            },
                            tittle: homeViewModel
                                    .searchActivityAllListRes
                                    ?.data
                                    ?.activityTypeListed?[index]
                                    .activityType
                                    ?.types ??
                                "",
                            subtitle: homeViewModel
                                    .searchActivityAllListRes
                                    ?.data
                                    ?.activityTypeListed?[index]
                                    .activity ??
                                "",
                            imageUrl: homeViewModel
                                    .searchActivityAllListRes
                                    ?.data
                                    ?.activityTypeListed?[index]
                                    .activityType
                                    ?.icon ??
                                AppConstants.activityPlaceholder,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
