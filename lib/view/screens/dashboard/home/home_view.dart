// ignore_for_file: avoid_redundant_argument_values, unnecessary_null_in_if_null_operators

import 'package:flextras/flextras.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:intl/intl.dart';
import 'package:showcaseview/showcaseview.dart';
import 'package:sweetlifesaver/core/constants.dart';
import 'package:sweetlifesaver/data/remote/auth/models/update_sleep_model.dart';
import 'package:sweetlifesaver/data/remote/food/model/activity/get_activity_res.dart';
import 'package:sweetlifesaver/data/remote/food/model/activity/update_activity_res.dart';
import 'package:sweetlifesaver/utils/custom_button.dart';
import 'package:sweetlifesaver/utils/forms/sliderForm.dart';
import 'package:sweetlifesaver/utils/json/json_parse.dart';
import 'package:sweetlifesaver/utils/utils.dart';
import 'package:sweetlifesaver/view/component/help_Icon/helpicon.dart';
import 'package:sweetlifesaver/view/screens/auth/login/login_view_model.dart';
import 'package:sweetlifesaver/view/screens/dashboard/home/activity/add_activite/widget/activity_tile.dart';
import 'package:sweetlifesaver/view/screens/dashboard/home/home_view_model.dart';
import 'package:sweetlifesaver/view/screens/dashboard/home/widget/food_intake.dart';
import 'package:sweetlifesaver/view/screens/dashboard/home/widget/icon_tittle.dart';
import 'package:sweetlifesaver/view/screens/dashboard/home/widget/progress_bar.dart';
import 'package:sweetlifesaver/view/screens/dashboard/home/widget/pychart.dart';

class HomeView extends ConsumerStatefulWidget {
  const HomeView({super.key});

  @override
  ConsumerState<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<HomeView> with BaseScreenView {
  List<String> foodIntake = [
    'Breakfast Intake',
    'Morning Snack Intake',
    'Lunch Intake',
    'Afternoon Snack Intake',
    'Dinner Intake',
    'Late Night Snack Intake',
  ];
  // List<String> foodIntakeIcon = [
  //   'assets/icons/home/breakfast.png',
  //   'assets/icons/home/morning_snack.png',
  //   'assets/icons/home/lunch.png',
  //   'assets/icons/home/afternoon.png',
  //   'assets/icons/home/dinner.png',
  //   'assets/icons/home/night.png',
  // ];
  String _selectedFeel = "";
  String _waterIntake = "0.0";
  int _selectedSleephrs = 0;
  int _selectedSleepmin = 0;
  final GlobalKey _one = GlobalKey();
  final GlobalKey _two = GlobalKey();

  final scrollController = ScrollController();

  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 100), () {
      getData();
    });
    // WidgetsBinding.instance.addPostFrameCallback(
    //   (_) => ShowCaseWidget.of(context).startShowCase([
    //     _one,
    //     _two,
    //   ]),
    // );

    super.initState();
  }

  void getData() {
    ref.read(loginViewModelProvider).getUserData(context).then(
          (value) => {
            _selectedFeel =
                ref.watch(loginViewModelProvider).userDataRes?.data?.mode ?? "",
            _waterIntake = ref
                        .watch(loginViewModelProvider)
                        .userDataRes
                        ?.data
                        ?.waterIntake ==
                    ""
                ? "0.0"
                : ref
                        .watch(loginViewModelProvider)
                        .userDataRes
                        ?.data
                        ?.waterIntake ??
                    "0.0",
            _selectedSleephrs =
                ref.watch(loginViewModelProvider).userDataRes?.data?.sleep == ""
                    ? 0
                    : int.parse(
                        ref
                                .watch(loginViewModelProvider)
                                .userDataRes
                                ?.data
                                ?.sleep
                                ?.split('.')[0] ??
                            "0",
                      ),
            _selectedSleepmin =
                ref.watch(loginViewModelProvider).userDataRes?.data?.sleep == ""
                    ? 0
                    : int.parse(
                        ref
                                .watch(loginViewModelProvider)
                                .userDataRes
                                ?.data
                                ?.sleep
                                ?.split('.')[1] ??
                            "0",
                      ),
          },
        );
    ref.read(homeViewModelProvider).getFoodList(context);
    ref.read(homeViewModelProvider).getActivityList(
          context,
          GetActivityReq(
            date: DateFormat('yyyy-MM-dd').format(DateTime.now()),
          ),
        );
    ref.read(homeViewModelProvider).activityType(context);
    ref.read(homeViewModelProvider).weightRecomedation(context);
  }

  @override
  Widget build(BuildContext context) {
    final LoginViewModel loginViewModel = ref.watch(loginViewModelProvider);
    final HomeViewModel homeViewModel = ref.watch(homeViewModelProvider);
    return Scaffold(
      body: SmartRefresher(
        enablePullDown: true,
        header: const MaterialClassicHeader(
          color: Colors.white,
          backgroundColor: primaryColor,
        ),
        controller: ref.watch(homeViewModelProvider).homeRefreshController,
        onRefresh: () async {
          getData();
          Future.delayed(const Duration(seconds: 3), () {
            ref
                .read(homeViewModelProvider)
                .homeRefreshController
                .refreshCompleted();
          });
        },
        child: SingleChildScrollView(
          child: PaddedColumn(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              gapH16,
              //* welcome section [
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: getGreeting(),
                      style: TextStyle(
                        color: richBalck,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextSpan(
                      text:
                          'Welcome to the home screen! Your daily goals, meal-wise goals, and daily meal distribution are recommended below. Start Logging! ',
                      style: TextStyle(
                        color: richBalck,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ),
              //* welcome section ]
              gapH10,
              //* graph section [
              const IconTittle(
                isLast: false,
                tittle: 'Daily Health Goals',
                icon: 'assets/icons/home/health_goal.png',
                intakeSlug: HelpIconName.currentHealth,
              ),
              gapH10,
              Showcase(
                key: _one,
                title: 'Health Goals',
                description:
                    'These are your automatically calculated daily Calorie and Macro Nutrient goals. These will automatically revise as your health and lifestyle conditions change. Please track and meet your daily goals!',
                targetPadding: const EdgeInsets.all(5),
                targetBorderRadius: BorderRadius.circular(10.r),
                tooltipBackgroundColor: primaryColor,
                textColor: kWhite,
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(248, 248, 248, 1),
                    borderRadius: BorderRadius.all(Radius.circular(12.r)),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromRGBO(53, 75, 141, 0.2),
                        spreadRadius: 2,
                        blurRadius: 20,
                        offset: Offset(0, 6),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      const CustomPieChat(
                        circularValue: 0.75,
                        circulartittle: '1550 Cal',
                        circularsubTitle: '70% Completed',
                        pieFat: 40,
                        pieCarbs: 30,
                        pieProtein: 30,
                      ),
                      gapH16,
                      const CustomProgressBar(
                        start: 'Carbs',
                        end: '121.8 of 174g',
                        value: 0.9,
                        colors: [success, success],
                        backgroundColor: stroke,
                      ),
                      const CustomProgressBar(
                        start: 'Protein',
                        end: '68 of 97g',
                        value: 0.5,
                        colors: [
                          Color(0xFF8CE5BB),
                          Color(0xFF8CE5BB),
                        ],
                        backgroundColor: stroke,
                      ),
                      const CustomProgressBar(
                        start: 'Fat',
                        end: '36 of 52g',
                        value: 0.9,
                        colors: [
                          Color(0xFF60DB98),
                          Color(0xFF60DB98),
                        ],
                        backgroundColor: stroke,
                      ),
                      const CustomProgressBar(
                        start: 'Calories',
                        end: '1085 of 1550 Cal',
                        value: 0.7,
                        colors: [
                          Color(0xFFEC4899),
                          Color(0xFFA855F7),
                          Color(0xFF3B82F6),
                        ],
                        backgroundColor: stroke,
                      ),
                    ],
                  ),
                ),
              ),
              //* graph section ]
              gapH20,
              //* meal section [
              ...List.generate(
                homeViewModel.getFoodlistRes?.data?.length ?? 0,
                (index) => Padding(
                  padding: EdgeInsets.only(bottom: 16.h),
                  child: FoodIntake(
                    mealslug:
                        homeViewModel.getFoodlistRes?.data?[index].mealType ??
                            "",
                    showcaseKey: index == 0
                        ? _two
                        : GlobalKey(
                            debugLabel: 'foodIntake$index',
                          ),
                    addFood: () {
                      HapticFeedback.selectionClick();
                      context.pushNamed(
                        AppRoute.addFoodView.name,
                        pathParameters: {
                          "foodtype": homeViewModel
                                  .getFoodlistRes?.data?[index].mealType ??
                              "",
                        },
                      );
                    },
                    heading: foodIntake[findIndex(
                      homeViewModel.getFoodlistRes?.data?[index].mealType ?? "",
                    )],
                    icon:
                        homeViewModel.getFoodlistRes?.data?[index].image ?? "",
                    recommendedCalories: "300 Cal",
                    recommendedCarb: "43.5 g",
                    recommendedProtein: "13 g",
                    recommendedFat: "24.34 g",
                    foodIntakeList: [
                      ...List.generate(
                        homeViewModel
                                .getFoodlistRes?.data?[index].data?.length ??
                            0,
                        (i) => FoodIntakeData(
                          id: homeViewModel
                                  .getFoodlistRes?.data?[index].data?[i].id ??
                              "",
                          tittle: homeViewModel.getFoodlistRes?.data?[index]
                                  .data?[i].foodName ??
                              "",
                          img: 'https://i.imgur.com/BIFG5U1.png',
                          subtittle:
                              "${homeViewModel.getFoodlistRes?.data?[index].data?[i].servingSize} ${homeViewModel.getFoodlistRes?.data?[index].data?[i].servingType}, ${homeViewModel.getFoodlistRes?.data?[index].data?[i].calories} Cal, ${homeViewModel.getFoodlistRes?.data?[index].data?[i].carbohydrate}g Carbs, ${homeViewModel.getFoodlistRes?.data?[index].data?[i].protein}g Protein, ${homeViewModel.getFoodlistRes?.data?[index].data?[i].fat}g Fat",
                          foodName: homeViewModel.getFoodlistRes?.data?[index]
                                  .data?[i].foodName ??
                              "",
                          servingSize: homeViewModel.getFoodlistRes
                                  ?.data?[index].data?[i].servingSize ??
                              "",
                          servingType: homeViewModel.getFoodlistRes
                                  ?.data?[index].data?[i].servingType ??
                              "",
                          carbohydrate: homeViewModel.getFoodlistRes
                                  ?.data?[index].data?[i].carbohydrate ??
                              0.0,
                          protein: homeViewModel.getFoodlistRes?.data?[index]
                                  .data?[i].protein ??
                              0.0,
                          fat: homeViewModel
                                  .getFoodlistRes?.data?[index].data?[i].fat ??
                              0.0,
                          calories: homeViewModel.getFoodlistRes?.data?[index]
                                  .data?[i].calories ??
                              0.0,
                          mealType: homeViewModel
                                  .getFoodlistRes?.data?[index].mealType ??
                              "",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //* meal section ]

              //* activity section [
              const IconTittle(
                isLast: true,
                tittle: 'Daily Physical Activities',
                icon: 'assets/icons/home/physical_activity.png',
                intakeSlug: HelpIconName.dailyPhysicalActivities,
              ),
              gapH10,
              ...List.generate(
                homeViewModel.getActivityRes?.data?.length ?? 0,
                (index) => ActivityTile(
                  id: homeViewModel.getActivityRes?.data?[index].id ?? "",
                  tittle: homeViewModel
                          .getActivityRes?.data?[index].activityType?.types ??
                      "",
                  subtitle:
                      "${homeViewModel.getActivityRes?.data?[index].activityName}, ${homeViewModel.getActivityRes?.data?[index].duration}min, ${homeViewModel.getActivityRes?.data?[index].calories}cal",
                  imageUrl: homeViewModel
                          .getActivityRes?.data?[index].activityType?.icon ??
                      AppConstants.activityPlaceholder,
                  updateActivityReq: UpdateActivityReq(
                    userId:
                        homeViewModel.getActivityRes?.data?[index].userId ?? "",
                    activityName: homeViewModel
                            .getActivityRes?.data?[index].activityName ??
                        "",
                    activityType: homeViewModel
                            .getActivityRes?.data?[index].activityType?.id ??
                        "",
                    duration: parseInteger(
                      homeViewModel.getActivityRes?.data?[index].duration,
                    ),
                    calories: parseDouble(
                      homeViewModel.getActivityRes?.data?[index].calories,
                    ),
                    types:
                        homeViewModel.getActivityRes?.data?[index].types ?? "",
                    me: homeViewModel.getActivityRes?.data?[index].me ?? null,
                    level: homeViewModel.getActivityRes?.data?[index].level ??
                        null,
                  ),
                  activityTypeName: homeViewModel
                          .getActivityRes?.data?[index].activityType?.types ??
                      "",
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: flashWhite,
                  borderRadius: BorderRadius.all(Radius.circular(12.r)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const CustomProgressBar(
                      start: 'Calories',
                      end: '1085 of 1550 Cal',
                      value: 0.75,
                      colors: [
                        Color(0xFFEC4899),
                        Color(0xFFA855F7),
                        Color(0xFF3B82F6),
                      ],
                      backgroundColor: stroke,
                    ),
                    gapH4,
                    const Divider(
                      color: stroke,
                      thickness: 0.8,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Text(
                                'Calories Burned',
                                style: TextStyle(
                                  color: richBalck,
                                  fontSize: 10.5.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              gapW6,
                              Text(
                                '1085 Cal',
                                style: TextStyle(
                                  color: darkGrey,
                                  fontSize: 10.5.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'Hours',
                                style: TextStyle(
                                  color: richBalck,
                                  fontSize: 10.5.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              gapW6,
                              Text(
                                '00:00 Hrs',
                                style: TextStyle(
                                  color: darkGrey,
                                  fontSize: 10.5.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    gapH6,
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            'Add Exercises and Physical Activities',
                            style: TextStyle(
                              color: richBalck,
                              fontSize: 10.5.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            HapticFeedback.lightImpact();
                            context.pushNamed(AppRoute.addActivity.name);
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10.w,
                            ),
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
                                  'Add Activity',
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
                      ],
                    ),
                  ],
                ),
              ),
              //* activity section ]
              gapH20,
              //* water section [
              const IconTittle(
                isLast: true,
                tittle: 'Water Intake',
                icon: 'assets/icons/home/water.png',
                intakeSlug: HelpIconName.waterIntak,
              ),
              gapH10,
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: flashWhite,
                  borderRadius: BorderRadius.all(Radius.circular(12.r)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Recommended',
                          style: TextStyle(
                            color: royalBlue,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          ' - 8 glasses of water per day.',
                          style: TextStyle(
                            color: darkGrey,
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    gapH10,
                    RatingBar(
                      initialRating: double.parse(_waterIntake),
                      glow: false,
                      minRating: 0,
                      itemSize: 22.sp,
                      direction: Axis.horizontal,
                      itemCount: 11,
                      tapOnlyMode: true,
                      allowHalfRating: false,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 2.0),
                      ratingWidget: RatingWidget(
                        full: const ImageIcon(
                          AssetImage('assets/icons/home/water_full.png'),
                          color: kGreen,
                        ),
                        half: const ImageIcon(
                          AssetImage('assets/icons/home/water_full.png'),
                        ),
                        empty: const ImageIcon(
                          AssetImage('assets/icons/home/water.png'),
                        ),
                      ),
                      onRatingUpdate: (rating) {
                        _waterIntake = rating.toString();
                        setState(() {});
                        loginViewModel.updateUserDataSleep(
                          context,
                          UserSleepReq(
                            waterIntake: _waterIntake,
                            mode: _selectedFeel,
                            sleep: "$_selectedSleephrs.$_selectedSleepmin",
                          ),
                        );
                      },
                    ),
                    gapH6,
                    // Text(
                    //   'Recommended - 8 glasses of water per day.',
                    //   style: TextStyle(
                    //     color: darkGrey,
                    //     fontSize: 11.sp,
                    //     fontWeight: FontWeight.w400,
                    //   ),
                    // ),
                  ],
                ),
              ),
              //* water section ]
              gapH24,
              //* sleep section [
              const IconTittle(
                isLast: true,
                tittle: 'Sleep',
                icon: 'assets/icons/home/sleep.png',
                intakeSlug: HelpIconName.sleep,
              ),
              gapH10,
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: flashWhite,
                  borderRadius: BorderRadius.all(Radius.circular(12.r)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Recommended',
                          style: TextStyle(
                            color: royalBlue,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          ' - 8 hrs of sleep.',
                          style: TextStyle(
                            color: darkGrey,
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    gapH6,
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'How many hours did you sleep last night?',
                                style: TextStyle(
                                  color: richBalck,
                                  fontSize: 11.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              gapH6,
                              // Text(
                              //   'Recommended - 8 hrs of sleep.',
                              //   style: TextStyle(
                              //     color: darkGrey,
                              //     fontSize: 11.sp,
                              //     fontWeight: FontWeight.w400,
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                        gapW10,
                        InkWell(
                          onTap: () {
                            HapticFeedback.lightImpact();
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
                                      child: CupertinoTimerPicker(
                                        initialTimerDuration: Duration(
                                          hours: _selectedSleephrs,
                                          minutes: _selectedSleepmin,
                                        ),
                                        mode: CupertinoTimerPickerMode.hm,
                                        onTimerDurationChanged:
                                            (Duration value) {
                                          setState(() {
                                            _selectedSleephrs = value.inHours;
                                            _selectedSleepmin =
                                                value.inMinutes % 60;
                                          });
                                        },
                                      ),
                                    ),
                                    CustomButton(
                                      buttonText: "Save",
                                      ontap: () {
                                        Navigator.pop(context);
                                        loginViewModel.updateUserDataSleep(
                                          context,
                                          UserSleepReq(
                                            mode: _selectedFeel,
                                            waterIntake: _waterIntake,
                                            sleep:
                                                "$_selectedSleephrs.$_selectedSleepmin",
                                          ),
                                        );
                                      },
                                    ),
                                    gapH10,
                                  ],
                                );
                              },
                            );
                          },
                          child: Container(
                            height: 25.h,
                            decoration: BoxDecoration(
                              color: primaryColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.r)),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                gapW10,
                                Text(
                                  '$_selectedSleephrs hrs $_selectedSleepmin min',
                                  style: TextStyle(
                                    color: kWhite,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                gapW4,
                                Icon(
                                  Icons.arrow_drop_down,
                                  color: kWhite,
                                  size: 15.sp,
                                ),
                                gapW2,
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              //* sleep section ]
              gapH20,
              //* feel section [
              ListTile(
                visualDensity: VisualDensity.compact,
                splashColor: Colors.transparent,
                dense: true,
                contentPadding: EdgeInsets.zero,
                title: Text(
                  'How do you feel?',
                  style: TextStyle(
                    color: richBalck,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              gapH10,
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: flashWhite,
                  borderRadius: BorderRadius.all(Radius.circular(12.r)),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          HapticFeedback.selectionClick();
                          setState(() {
                            _selectedFeel = "Happy";
                          });
                          loginViewModel.updateUserDataSleep(
                            context,
                            UserSleepReq(
                              mode: "Happy",
                              waterIntake: _waterIntake,
                              sleep: "$_selectedSleephrs.$_selectedSleepmin",
                            ),
                          );
                        },
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/icons/feel/happy.png',
                              height: 30.h,
                            ),
                            gapH6,
                            Text(
                              'Happy',
                              style: TextStyle(
                                color: _selectedFeel == "Happy"
                                    ? kGreen
                                    : richBalck,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          HapticFeedback.selectionClick();
                          setState(() {
                            _selectedFeel = "Normal";
                          });
                          loginViewModel.updateUserDataSleep(
                            context,
                            UserSleepReq(
                              mode: "Normal",
                              waterIntake: _waterIntake,
                              sleep: "$_selectedSleephrs.$_selectedSleepmin",
                            ),
                          );
                        },
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/icons/feel/normal.png',
                              height: 30.h,
                            ),
                            gapH6,
                            Text(
                              'Normal',
                              style: TextStyle(
                                color: _selectedFeel == "Normal"
                                    ? kGreen
                                    : richBalck,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          HapticFeedback.selectionClick();
                          setState(() {
                            _selectedFeel = "Sad";
                          });
                          loginViewModel.updateUserDataSleep(
                            context,
                            UserSleepReq(
                              mode: "Sad",
                              waterIntake: _waterIntake,
                              sleep: "$_selectedSleephrs.$_selectedSleepmin",
                            ),
                          );
                        },
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/icons/feel/sad.png',
                              height: 30.h,
                            ),
                            gapH6,
                            Text(
                              'Sad',
                              style: TextStyle(
                                color:
                                    _selectedFeel == "Sad" ? kGreen : richBalck,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          HapticFeedback.selectionClick();
                          setState(() {
                            _selectedFeel = "Worried";
                          });
                          loginViewModel.updateUserDataSleep(
                            context,
                            UserSleepReq(
                              mode: "Worried",
                              waterIntake: _waterIntake,
                              sleep: "$_selectedSleephrs.$_selectedSleepmin",
                            ),
                          );
                        },
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/icons/feel/worried.png',
                              height: 30.h,
                            ),
                            gapH6,
                            Text(
                              'Worried',
                              style: TextStyle(
                                color: _selectedFeel == "Worried"
                                    ? kGreen
                                    : richBalck,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          HapticFeedback.selectionClick();
                          setState(() {
                            _selectedFeel = "Mad";
                          });
                          loginViewModel.updateUserDataSleep(
                            context,
                            UserSleepReq(
                              mode: "Mad",
                              waterIntake: _waterIntake,
                              sleep: "$_selectedSleephrs.$_selectedSleepmin",
                            ),
                          );
                        },
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/icons/feel/mad.png',
                              height: 30.h,
                            ),
                            gapH6,
                            Text(
                              'Mad',
                              style: TextStyle(
                                color:
                                    _selectedFeel == "Mad" ? kGreen : richBalck,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //* feel section ]

              gapH20,
            ],
          ),
        ),
      ),
    );
  }

  // find the index of the food item in the list
  int findIndex(String mealType) {
    switch (mealType) {
      case 'select-breakfast-time':
        return 0;
      case 'select-morning-snack-time':
        return 1;
      case 'select-lunch-time':
        return 2;
      case 'select-afternoon-snack-time':
        return 3;
      case 'select-dinner-time':
        return 4;
      case 'select-late-night-snack-time':
        return 5;
      default:
        return 0;
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

  String getGreeting() {
    final DateTime now = DateTime.now();
    final int hour = now.hour;

    String greeting;

    if (hour < 5) {
      greeting = 'Good Night! ';
    } else if (hour < 12) {
      greeting = 'Good Morning! ';
    } else if (hour < 17) {
      greeting = 'Good Afternoon! ';
    } else if (hour < 21) {
      greeting = 'Good Evening! ';
    } else {
      greeting = 'Good Night! ';
    }

    return greeting;
  }
}

class CustomAlertDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 210.h,
      child: DecoratedBox(
        decoration: const BoxDecoration(
          border: Border(
            bottom:
                BorderSide(color: Color.fromARGB(0, 158, 158, 158), width: 0),
          ),
        ),
        child: Column(
          children: [
            PaddedColumn(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              children: [
                gapH20,
                Text(
                  "Your weight looks within the normal range.",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14.sp,
                    color: kBlack,
                  ),
                  textAlign: TextAlign.center,
                ),
                gapH4,
                Text(
                  "Do you still want to lose (or gain) weight? Choose ‘Yes’ to proceed. Choose ‘No’ to revise your health goal",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 11.sp,
                    color: const Color.fromRGBO(0, 0, 0, 1),
                    fontFamily: GoogleFonts.sourceSansPro().fontFamily,
                  ),
                  textAlign: TextAlign.center,
                ),
                gapH16,
                SliderForm(
                  txt1: "Yes",
                  txt2: "No",
                  onValueChanged: (value) {},
                  initialValue: 1,
                ),
              ],
            ),
            gapH6,
            const Divider(
              color: kGrey,
              thickness: 0.5,
            ),
            gapH2,
            InkWell(
              onTap: () {
                context.pop();
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "OK",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14.sp,
                      color: const Color.fromRGBO(0, 122, 255, 1),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
