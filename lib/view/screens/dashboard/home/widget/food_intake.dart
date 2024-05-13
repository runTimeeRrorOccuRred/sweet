import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:showcaseview/showcaseview.dart';
import 'package:sweetlifesaver/data/remote/food/model/update_food_res.dart';
import 'package:sweetlifesaver/utils/utils.dart';
import 'package:sweetlifesaver/view/component/help_Icon/helpicon.dart';
import 'package:sweetlifesaver/view/screens/dashboard/home/food/edit_custom_food_view.dart';
import 'package:sweetlifesaver/view/screens/dashboard/home/home_view_model.dart';

class FoodIntake extends ConsumerStatefulWidget {
  final String heading;
  final String mealslug;
  final GlobalKey showcaseKey;
  final String icon;
  final String recommendedCalories;
  final String recommendedCarb;
  final String recommendedProtein;
  final String recommendedFat;
  final List<FoodIntakeData> foodIntakeList;
  final void Function()? addFood;

  const FoodIntake({
    super.key,
    required this.heading,
    required this.icon,
    required this.recommendedCalories,
    required this.recommendedCarb,
    required this.recommendedProtein,
    required this.recommendedFat,
    required this.foodIntakeList,
    required this.showcaseKey,
    required this.mealslug,
    this.addFood,
  });

  @override
  ConsumerState<FoodIntake> createState() => _FoodIntakeState();
}

class _FoodIntakeState extends ConsumerState<FoodIntake> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          visualDensity: VisualDensity.compact,
          splashColor: Colors.transparent,
          dense: true,
          contentPadding: EdgeInsets.zero,
          leading: Image.network(
            widget.icon,
            height: 25,
            width: 25,
          ),
          title: Text(
            widget.heading,
            style: TextStyle(
              color: richBalck,
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          trailing: HelpIcon(
            color: primaryColor,
            iconName: fintIconName(widget.mealslug),
          ),
        ),
        ...List.generate(
          widget.foodIntakeList.length,
          (index) => Column(
            children: [
              Slidable(
                key: const ValueKey(0),
                endActionPane: ActionPane(
                  motion: const StretchMotion(),
                  children: [
                    SlidableAction(
                      spacing: 2,
                      onPressed: (context) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EditCustomFoodView(
                              id: widget.foodIntakeList[index].id,
                              updateFoodReq: UpdateFoodReq(
                                foodName: widget.foodIntakeList[index].foodName,
                                servingSize:
                                    widget.foodIntakeList[index].servingSize,
                                servingType:
                                    widget.foodIntakeList[index].servingType,
                                carbohydrate:
                                    widget.foodIntakeList[index].carbohydrate,
                                protein: widget.foodIntakeList[index].protein,
                                fat: widget.foodIntakeList[index].fat,
                                calories: widget.foodIntakeList[index].calories,
                                mealType: widget.foodIntakeList[index].mealType,
                              ),
                            ),
                          ),
                        );
                      },
                      backgroundColor: flashWhite,
                      foregroundColor: kGreen,
                      icon: Icons.edit,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12.r),
                        bottomLeft: Radius.circular(12.r),
                      ),
                    ),
                    SlidableAction(
                      onPressed: (context) {
                        iosDialogebox(
                          context,
                          widget.foodIntakeList[index].id,
                          ref.read(homeViewModelProvider),
                        );
                      },
                      backgroundColor: flashWhite,
                      foregroundColor: Colors.red,
                      icon: Icons.delete,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(12.r),
                        bottomRight: Radius.circular(12.r),
                      ),
                    ),
                  ],
                ),
                child: ListTile(
                  dense: true,
                  visualDensity: VisualDensity.compact,
                  contentPadding: EdgeInsets.only(left: 2.w),
                  leading: CachedNetworkImage(
                    imageUrl: widget.foodIntakeList[index].img,
                    // 'https://i.imgur.com/BIFG5U1.png',
                    height: 22.h,
                    placeholder: (context, url) =>
                        const CircularProgressIndicator(),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  ),
                  title: Text(
                    widget.foodIntakeList[index].tittle,
                    style: TextStyle(
                      color: richBalck,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  subtitle: Text(
                    widget.foodIntakeList[index].subtittle,
                    style: TextStyle(
                      color: darkGrey,
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              const Divider(
                color: stroke,
                thickness: 0.8,
              ),
            ],
          ),
        ),
        gapH12,
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
          width: double.infinity,
          decoration: BoxDecoration(
            color: flashWhite,
            borderRadius: BorderRadius.all(Radius.circular(12.r)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Recommended',
                style: TextStyle(
                  color: royalBlue,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              gapH6,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Calories - ${widget.recommendedCalories}',
                          style: TextStyle(
                            color: darkGrey,
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        gapH4,
                        Text(
                          'Carb - ${widget.recommendedCarb}',
                          style: TextStyle(
                            color: darkGrey,
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Protein - ${widget.recommendedProtein}',
                          style: TextStyle(
                            color: darkGrey,
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        gapH4,
                        Text(
                          'Fat - ${widget.recommendedFat}',
                          style: TextStyle(
                            color: darkGrey,
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  gapW10,
                  Expanded(
                    child: Showcase(
                      onTargetClick: () {
                        widget.addFood!();
                      },
                      disposeOnTap: true,
                      key: widget.showcaseKey,
                      title: 'Add Food',
                      description: 'Click here to log the foods you consume, regularly and diligently, preferably soon after you finish your meal.',
                      targetPadding: const EdgeInsets.all(10),
                      targetBorderRadius: BorderRadius.circular(4.r),
                      tooltipBackgroundColor: primaryColor,
                      titleTextStyle: TextStyle(
                        color: kWhite,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                      descTextStyle: TextStyle(
                        color: kWhite,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                      ),
                      textColor: kWhite,
                      child: InkWell(
                        onTap: widget.addFood,
                        child: Container(
                          height: 30.h,
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.r)),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.add,
                                color: kWhite,
                                size: 15.sp,
                              ),
                              gapW4,
                              Text(
                                'Add Food',
                                style: TextStyle(
                                  color: kWhite,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  HelpIconName fintIconName(String mealType) {
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
        return HelpIconName.breakfastIntake;
    }
  }
}

class FoodIntakeData {
  final String id;
  final String tittle;
  final String img;
  final String subtittle;
  final String foodName;
  final String servingSize;
  final String servingType;
  final double carbohydrate;
  final double protein;
  final double fat;
  final double calories;
  final String mealType;

  const FoodIntakeData({
    required this.id,
    required this.tittle,
    required this.img,
    required this.subtittle,
    required this.foodName,
    required this.servingSize,
    required this.servingType,
    required this.carbohydrate,
    required this.protein,
    required this.fat,
    required this.calories,
    required this.mealType,
  });
}

Future<dynamic> iosDialogebox(
  BuildContext context,
  String id,
  HomeViewModel homeViewModel,
) {
  return showCupertinoDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) => CupertinoAlertDialog(
      title: const Text(
        "Are you sure you want to delete this food?",
        textScaleFactor: 1,
         style: TextStyle(fontWeight: FontWeight.normal),
      ),
      content: const Text(
        "This action cannot be undone.",
        textScaleFactor: 1,
         style: TextStyle(fontWeight: FontWeight.normal),
      ),
      actions: [
        CupertinoDialogAction(
          child: const Text(
            "OK",
            style: TextStyle(
              color: primaryColor,
              fontWeight: FontWeight.normal,
            ),
            textScaleFactor: 1,
          ),
          onPressed: () {
            Navigator.of(context).pop();
            homeViewModel.deleteFood(
              context,
              id,
            );
          },
        ),
        CupertinoDialogAction(
          child: const Text(
            "Cancel",
            textScaleFactor: 1,
             style: TextStyle(fontWeight: FontWeight.normal),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    ),
  );
}
