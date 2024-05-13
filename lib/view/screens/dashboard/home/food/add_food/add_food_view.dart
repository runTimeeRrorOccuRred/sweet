// ignore_for_file: avoid_redundant_argument_values

import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:showcaseview/showcaseview.dart';
import 'package:sweetlifesaver/data/remote/food/model/create_food_res.dart';
import 'package:sweetlifesaver/data/remote/food/model/search_food_res.dart';
import 'package:sweetlifesaver/utils/custom_button.dart';
import 'package:sweetlifesaver/utils/utils.dart';
import 'package:sweetlifesaver/view/component/help_Icon/helpicon.dart';
import 'package:sweetlifesaver/view/screens/dashboard/home/food/add_food/add_food_view_model.dart';
import 'package:sweetlifesaver/view/screens/dashboard/home/food/add_food/widget/food_details_tile.dart';
import 'package:sweetlifesaver/view/screens/dashboard/home/food/add_food/widget/food_tile.dart';
import 'package:sweetlifesaver/view/screens/dashboard/home/home_view_model.dart';

class AddFoodView extends ConsumerStatefulWidget {
  final String foodType;
  const AddFoodView(this.foodType, {super.key});

  @override
  ConsumerState<AddFoodView> createState() => _AddFoodViewState();
}

class _AddFoodViewState extends ConsumerState<AddFoodView> with BaseScreenView {
  List<String> heading = [
    'Your consumption history',
    'Commonly tracked foods',
    'Branded foods',
  ];
  final GlobalKey _one = GlobalKey();
  final GlobalKey _two = GlobalKey();
  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 100), () {
      ref.read(homeViewModelProvider).searchFood(
            context,
            const SearchFoodReq(foodName: ""),
            widget.foodType,
          );
    });
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => ShowCaseWidget.of(context).startShowCase([
        _one,
        _two,
      ]),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final HomeViewModel homeViewModel = ref.watch(homeViewModelProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kWhite,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            ref.read(homeViewModelProvider).foodlist.clear();
            context.pop();
          },
        ),
        actions: [
          TextButton(
            onPressed: () {
              homeViewModel.foodlist.isEmpty
                  ? null
                  : homeViewModel.createFood(
                      context,
                      homeViewModel.foodlist,
                    );
            },
            child: Text(
              'Save',
              style: TextStyle(
                color: homeViewModel.foodlist.isEmpty ? kGrey : primaryColor,
                fontSize: 14.sp,
              ),
            ),
          ),
        ],
      ),
      body: SmartRefresher(
        enablePullDown: false,
        header: const MaterialClassicHeader(
          color: Colors.white,
          backgroundColor: primaryColor,
        ),
        controller:
            ref.watch(addFoodViewModelProvider).addFoodRefreshController,
        onRefresh: () async {},
        child: SingleChildScrollView(
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
                  findTittle(widget.foodType),
                  style: TextStyle(
                    color: richBalck,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                trailing: Showcase(
                  key: _one,
                  title: 'Help',
                  description:
                      "You can search for food items, create custom food items, and add food items from your consumption history, commonly tracked foods, and branded foods.",
                  targetBorderRadius: BorderRadius.circular(10.r),
                  tooltipBackgroundColor: primaryColor,
                  textColor: kWhite,
                  disposeOnTap: true,
                  onTargetClick: () {
                    HapticFeedback.lightImpact();
                  },
                  child: InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () {
                      HapticFeedback.lightImpact();
                    },
                    child: HelpIcon(
                      color: primaryColor,
                      iconName: findHelpiconName(widget.foodType),
                    ),
                  ),
                ),
              ),
              gapH10,
              TextFormField(
                onChanged: (value) {
                  ref.read(homeViewModelProvider).searchFood(
                        context,
                        SearchFoodReq(foodName: value),
                        widget.foodType,
                      );
                },
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.search,
                decoration: InputDecoration(
                  fillColor: kGrey.withOpacity(0.1),
                  filled: true,
                  prefixIcon: const Icon(
                    Icons.search,
                    color: kGrey,
                  ),
                  hintText: 'Search for food',
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
              gapH20,
              Text(
                'Do not find what you are looking for?',
                style: TextStyle(
                  color: richBalck,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              gapH16,
              Showcase(
                key: _two,
                title: 'Create Custom Food',
                description:
                    "If you can't find the food you are looking for, you can create a custom food item.",
                targetPadding: const EdgeInsets.all(5),
                targetBorderRadius: BorderRadius.circular(30.r),
                tooltipBackgroundColor: primaryColor,
                textColor: kWhite,
                disposeOnTap: true,
                onTargetClick: () {
                  context.pushNamed(
                    AppRoute.createCustomFoodView.name,
                    pathParameters: {
                      "foodType": widget.foodType,
                    },
                  );
                },
                child: CustomButton(
                  buttonText: 'Create Custom Food',
                  ontap: () {
                    context.pushNamed(
                      AppRoute.createCustomFoodView.name,
                      pathParameters: {
                        "foodType": widget.foodType,
                      },
                    );
                  },
                ),
              ),
              gapH16,
              Text(
                'Items added',
                style: TextStyle(
                  color: richBalck,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              gapH6,
              //* selected Items list
              if (homeViewModel.foodlist.isEmpty)
                const Text("No Data Found")
              else
                ...List.generate(
                  homeViewModel.foodlist.length,
                  (index) => Column(
                    children: [
                      FoodDetailsTile(
                        tittle: homeViewModel.foodlist[index].foodName ?? "",
                        subtitle:
                            "${ref.watch(homeViewModelProvider).foodlist[index].servingSize} ${ref.watch(homeViewModelProvider).foodlist[index].servingType}, ${ref.watch(homeViewModelProvider).foodlist[index].calories} Cal, ${ref.watch(homeViewModelProvider).foodlist[index].carbohydrate}g Carbs, ${ref.watch(homeViewModelProvider).foodlist[index].protein}g Protein, ${ref.watch(homeViewModelProvider).foodlist[index].fat}g Fat",
                        imageUrl: "https://i.imgur.com/BIFG5U1.png",
                        description:
                            "${ref.watch(homeViewModelProvider).foodlist[index].servingSize} ${ref.watch(homeViewModelProvider).foodlist[index].servingType}, ${ref.watch(homeViewModelProvider).foodlist[index].calories} Cal, ${ref.watch(homeViewModelProvider).foodlist[index].carbohydrate}g Carbs, ${ref.watch(homeViewModelProvider).foodlist[index].protein}g Protein, ${ref.watch(homeViewModelProvider).foodlist[index].fat}g Fat",
                        onRemove: () {
                          HapticFeedback.mediumImpact();
                          ref
                              .read(homeViewModelProvider)
                              .foodlist
                              .removeAt(index);
                          setState(() {});
                        },
                        qty: (String value) {
                          homeViewModel.foodlist[index] = CreateFoodReq(
                            foodName: homeViewModel.foodlist[index].foodName,
                            servingSize: value,
                            servingType:
                                homeViewModel.foodlist[index].servingType,
                            calories: homeViewModel.foodlist[index].calories,
                            carbohydrate:
                                homeViewModel.foodlist[index].carbohydrate,
                            protein: homeViewModel.foodlist[index].protein,
                            fat: homeViewModel.foodlist[index].fat,
                            types: homeViewModel.foodlist[index].types,
                            imag: homeViewModel.foodlist[index].imag,
                            image: homeViewModel.foodlist[index].image,
                            ingredients:
                                homeViewModel.foodlist[index].ingredients,
                            mealType: homeViewModel.foodlist[index].mealType,
                          );
                        },
                        unit: (String value) {
                          homeViewModel.foodlist[index] = CreateFoodReq(
                            foodName: homeViewModel.foodlist[index].foodName,
                            servingSize:
                                homeViewModel.foodlist[index].servingSize,
                            servingType: value,
                            calories: homeViewModel.foodlist[index].calories,
                            carbohydrate:
                                homeViewModel.foodlist[index].carbohydrate,
                            protein: homeViewModel.foodlist[index].protein,
                            fat: homeViewModel.foodlist[index].fat,
                            types: homeViewModel.foodlist[index].types,
                            imag: homeViewModel.foodlist[index].imag,
                            image: homeViewModel.foodlist[index].image,
                            ingredients:
                                homeViewModel.foodlist[index].ingredients,
                            mealType: homeViewModel.foodlist[index].mealType,
                          );
                        },
                        inqty: homeViewModel.foodlist[index].servingSize ?? "0",
                        inunit: homeViewModel.foodlist[index].servingType ?? "",
                      ),
                      gapH16,
                    ],
                  ),
                ),
              gapH10,
              //* Comsumption history
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    heading[0],
                    style: TextStyle(
                      color: richBalck,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  gapH6,
                  if ((homeViewModel.searchFoodRes?.data?[0].consumptionHistory
                              ?.length ??
                          0) ==
                      0)
                    const Text("No Data Found")
                  else
                    Column(
                      children: [
                        ...List.generate(
                          homeViewModel.searchFoodRes?.data?[0]
                                  .consumptionHistory?.length ??
                              0,
                          (i) => FoodTile(
                            onTap: () {
                              ref.read(homeViewModelProvider).foodlist.add(
                                    CreateFoodReq(
                                      foodName: homeViewModel
                                              .searchFoodRes
                                              ?.data?[0]
                                              .consumptionHistory?[i]
                                              .foodName ??
                                          "",
                                      servingSize: homeViewModel
                                              .searchFoodRes
                                              ?.data?[0]
                                              .consumptionHistory?[i]
                                              .servingSize ??
                                          "",
                                      servingType: homeViewModel
                                              .searchFoodRes
                                              ?.data?[0]
                                              .consumptionHistory?[i]
                                              .servingType ??
                                          "",
                                      calories: (homeViewModel
                                                  .searchFoodRes
                                                  ?.data?[0]
                                                  .consumptionHistory?[i]
                                                  .calories ??
                                              0)
                                          .toString(),
                                      carbohydrate: (homeViewModel
                                                  .searchFoodRes
                                                  ?.data?[0]
                                                  .consumptionHistory?[i]
                                                  .carbohydrate ??
                                              0)
                                          .toString(),
                                      protein: (homeViewModel
                                                  .searchFoodRes
                                                  ?.data?[0]
                                                  .consumptionHistory?[i]
                                                  .protein ??
                                              0)
                                          .toString(),
                                      fat: (homeViewModel
                                                  .searchFoodRes
                                                  ?.data?[0]
                                                  .consumptionHistory?[i]
                                                  .fat ??
                                              0)
                                          .toString(),
                                      types: homeViewModel
                                              .searchFoodRes
                                              ?.data?[0]
                                              .consumptionHistory?[i]
                                              .types ??
                                          "",
                                      imag: homeViewModel
                                              .searchFoodRes
                                              ?.data?[0]
                                              .consumptionHistory?[i]
                                              .image ??
                                          "",
                                      image: homeViewModel
                                              .searchFoodRes
                                              ?.data?[0]
                                              .consumptionHistory?[i]
                                              .image ??
                                          "",
                                      ingredients: [],
                                      mealType: widget.foodType,
                                    ),
                                  );
                              setState(() {});
                            },
                            tittle: homeViewModel.searchFoodRes?.data?[0]
                                    .consumptionHistory?[i].foodName ??
                                "",
                            subtitle:
                                "${homeViewModel.searchFoodRes?.data?[0].consumptionHistory?[i].servingSize} ${homeViewModel.searchFoodRes?.data?[0].consumptionHistory?[i].servingType}, ${homeViewModel.searchFoodRes?.data?[0].consumptionHistory?[i].calories} Cal, ${homeViewModel.searchFoodRes?.data?[0].consumptionHistory?[i].carbohydrate}g Carbs, ${homeViewModel.searchFoodRes?.data?[0].consumptionHistory?[i].protein}g Protein, ${homeViewModel.searchFoodRes?.data?[0].consumptionHistory?[i].fat}g Fat",
                            imageUrl: 'https://i.imgur.com/BIFG5U1.png',
                          ),
                        ),
                      ],
                    ),
                ],
              ),
              gapH10,
              //* Commonly tracked foods
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    heading[1],
                    style: TextStyle(
                      color: richBalck,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  gapH6,
                  if ((homeViewModel.searchFoodRes?.data?[1].commonlyTrackedFood
                              ?.length ??
                          0) ==
                      0)
                    const Text("No Data Found")
                  else
                    Column(
                      children: [
                        ...List.generate(
                          homeViewModel.searchFoodRes?.data?[1]
                                  .commonlyTrackedFood?.length ??
                              0,
                          (i) => FoodTile(
                            onTap: () {
                              ref.read(homeViewModelProvider).foodlist.add(
                                    CreateFoodReq(
                                      foodName: homeViewModel
                                              .searchFoodRes
                                              ?.data?[1]
                                              .commonlyTrackedFood?[i]
                                              .foodName ??
                                          "",
                                      servingSize: homeViewModel
                                              .searchFoodRes
                                              ?.data?[1]
                                              .commonlyTrackedFood?[i]
                                              .servingSize ??
                                          "",
                                      servingType: homeViewModel
                                              .searchFoodRes
                                              ?.data?[1]
                                              .commonlyTrackedFood?[i]
                                              .servingType ??
                                          "",
                                      calories: (homeViewModel
                                                  .searchFoodRes
                                                  ?.data?[1]
                                                  .commonlyTrackedFood?[i]
                                                  .calories ??
                                              0)
                                          .toString(),
                                      carbohydrate: (homeViewModel
                                                  .searchFoodRes
                                                  ?.data?[1]
                                                  .commonlyTrackedFood?[i]
                                                  .carbohydrate ??
                                              0)
                                          .toString(),
                                      protein: (homeViewModel
                                                  .searchFoodRes
                                                  ?.data?[1]
                                                  .commonlyTrackedFood?[i]
                                                  .protein ??
                                              0)
                                          .toString(),
                                      fat: (homeViewModel
                                                  .searchFoodRes
                                                  ?.data?[1]
                                                  .commonlyTrackedFood?[i]
                                                  .fat ??
                                              0)
                                          .toString(),
                                      types: homeViewModel
                                              .searchFoodRes
                                              ?.data?[1]
                                              .commonlyTrackedFood?[i]
                                              .types ??
                                          "",
                                      imag: homeViewModel
                                              .searchFoodRes
                                              ?.data?[1]
                                              .commonlyTrackedFood?[i]
                                              .image ??
                                          "",
                                      image: homeViewModel
                                              .searchFoodRes
                                              ?.data?[1]
                                              .commonlyTrackedFood?[i]
                                              .image ??
                                          "",
                                      ingredients: [],
                                      mealType: widget.foodType,
                                    ),
                                  );
                              setState(() {});
                            },
                            tittle: homeViewModel.searchFoodRes?.data?[1]
                                    .commonlyTrackedFood?[i].foodName ??
                                "",
                            subtitle:
                                "${homeViewModel.searchFoodRes?.data?[1].commonlyTrackedFood?[i].servingSize} ${homeViewModel.searchFoodRes?.data?[1].commonlyTrackedFood?[i].servingType}, ${homeViewModel.searchFoodRes?.data?[1].commonlyTrackedFood?[i].calories} Cal, ${homeViewModel.searchFoodRes?.data?[1].commonlyTrackedFood?[i].carbohydrate}g Carbs, ${homeViewModel.searchFoodRes?.data?[1].commonlyTrackedFood?[i].protein}g Protein, ${homeViewModel.searchFoodRes?.data?[1].commonlyTrackedFood?[i].fat}g Fat",
                            imageUrl: 'https://i.imgur.com/BIFG5U1.png',
                          ),
                        ),
                      ],
                    ),
                ],
              ),
              gapH10,
              //* Branded foods
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    heading[2],
                    style: TextStyle(
                      color: richBalck,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  gapH6,
                  if ((homeViewModel
                              .searchFoodRes?.data?[2].brandedFood?.length ??
                          0) ==
                      0)
                    const Text("No Data Found")
                  else
                    Column(
                      children: [
                        ...List.generate(
                          homeViewModel.searchFoodRes?.data?[2].brandedFood
                                  ?.length ??
                              0,
                          (i) => FoodTile(
                            onTap: () {
                              ref.read(homeViewModelProvider).foodlist.add(
                                    CreateFoodReq(
                                      foodName: homeViewModel
                                              .searchFoodRes
                                              ?.data?[2]
                                              .brandedFood?[i]
                                              .foodName ??
                                          "",
                                      servingSize: homeViewModel
                                              .searchFoodRes
                                              ?.data?[2]
                                              .brandedFood?[i]
                                              .servingSize ??
                                          "",
                                      servingType: homeViewModel
                                              .searchFoodRes
                                              ?.data?[2]
                                              .brandedFood?[i]
                                              .servingType ??
                                          "",
                                      calories: (homeViewModel
                                                  .searchFoodRes
                                                  ?.data?[2]
                                                  .brandedFood?[i]
                                                  .calories ??
                                              0)
                                          .toString(),
                                      carbohydrate: (homeViewModel
                                                  .searchFoodRes
                                                  ?.data?[2]
                                                  .brandedFood?[i]
                                                  .carbohydrate ??
                                              0)
                                          .toString(),
                                      protein: (homeViewModel
                                                  .searchFoodRes
                                                  ?.data?[2]
                                                  .brandedFood?[i]
                                                  .protein ??
                                              0)
                                          .toString(),
                                      fat: (homeViewModel
                                                  .searchFoodRes
                                                  ?.data?[2]
                                                  .brandedFood?[i]
                                                  .fat ??
                                              0)
                                          .toString(),
                                      types: homeViewModel
                                              .searchFoodRes
                                              ?.data?[2]
                                              .brandedFood?[i]
                                              .types ??
                                          "",
                                      imag: homeViewModel
                                              .searchFoodRes
                                              ?.data?[2]
                                              .brandedFood?[i]
                                              .image ??
                                          "",
                                      image: homeViewModel
                                              .searchFoodRes
                                              ?.data?[2]
                                              .brandedFood?[i]
                                              .image ??
                                          "",
                                      ingredients: [],
                                      mealType: widget.foodType,
                                    ),
                                  );
                              setState(() {});
                            },
                            tittle: homeViewModel.searchFoodRes?.data?[2]
                                    .brandedFood?[i].foodName ??
                                "",
                            subtitle:
                                "${homeViewModel.searchFoodRes?.data?[2].brandedFood?[i].servingSize} ${homeViewModel.searchFoodRes?.data?[2].brandedFood?[i].servingType}, ${homeViewModel.searchFoodRes?.data?[2].brandedFood?[i].calories} Cal, ${homeViewModel.searchFoodRes?.data?[2].brandedFood?[i].carbohydrate}g Carbs, ${homeViewModel.searchFoodRes?.data?[2].brandedFood?[i].protein}g Protein, ${homeViewModel.searchFoodRes?.data?[2].brandedFood?[i].fat}g Fat",
                            imageUrl: 'https://i.imgur.com/BIFG5U1.png',
                          ),
                        ),
                      ],
                    ),
                ],
              ),
              gapH16,
            ],
          ),
        ),
      ),
    );
  }

  String findTittle(String mealType) {
    switch (mealType) {
      case 'select-breakfast-time':
        return 'Add Breakfast Items';
      case 'select-morning-snack-time':
        return 'Add Morning Snack Items';
      case 'select-lunch-time':
        return 'Add Lunch Items';
      case 'select-afternoon-snack-time':
        return 'Add Afternoon Snack Items';
      case 'select-dinner-time':
        return 'Add Dinner Items';
      case 'select-late-night-snack-time':
        return 'Add Late Night Snack Items';
      default:
        return 'Add Breakfast Items';
    }
  }

  HelpIconName findHelpiconName(String mealType) {
    switch (mealType) {
      case 'select-breakfast-time':
        return HelpIconName.breakfastIntake;
      case 'select-morning-snack-time':
        return HelpIconName.morningSnack;
      case 'select-lunch-time':
        return HelpIconName.lunch;
      case 'select-afternoon-snack-time':
        return HelpIconName.afternoonSnack;
      case 'select-dinner-time':
        return HelpIconName.dinnerIntak;
      case 'select-late-night-snack-time':
        return HelpIconName.lateNightSnack;
      default:
        return HelpIconName.healthGoal;
    }
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
