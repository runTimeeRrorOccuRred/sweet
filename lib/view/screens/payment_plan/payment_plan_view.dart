import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';
import 'package:sweetlifesaver/utils/custom_button.dart';
import 'package:sweetlifesaver/utils/utils.dart';

class PaymentPlanView extends ConsumerStatefulWidget {
  const PaymentPlanView({super.key});

  @override
  ConsumerState<PaymentPlanView> createState() => _PaymentPlanViewState();
}

class _PaymentPlanViewState extends ConsumerState<PaymentPlanView>
    with BaseScreenView {
  List<String> pricePlan = [
    'Meal Plan & Recipes ',
    "Diet & Health Recommendations",
    "Glycemic Index Predictor",
    "Tutorials & Education",
    "Health Reports for Providers",
    "Expert Consultation",
  ];
  List<String> tittle = [
    "Yearly",
    "Quarterly",
    "Monthly",
    "14-Days Trial",
  ];
  int isSelectedItem = 0;
  List<String> curentPlan = [
    "Calorie, Carb, Macro Nutrients Tracker",
    "Food, Water, Activity, Sleep Log",
    "Health Measurements Tracker",
    "Alerts & Notifications",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 60.h,
        padding: EdgeInsets.symmetric(
          horizontal: 16.w,
        ),
        child: Column(
          children: [
            CustomButton(
              buttonText: "Continue",
              ontap: () {
                context.goNamed(AppRoute.dashboard.name);
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            gapH24,
            Image.asset(
              'assets/images/payment_plan.png',
              width: double.infinity,
            ),
            gapH10,
            Text(
              'Choose your plan',
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w600,
                color: richBalck,
              ),
            ),
            gapH4,
            Text(
              'The app works best if you diligently record all measurements regularly.',
              style: TextStyle(
                fontSize: 12.sp,
                color: darkGrey,
              ),
              textAlign: TextAlign.center,
            ),
            gapH8,
            PaddedColumn(
              padding: EdgeInsets.symmetric(
                horizontal: 16.w,
              ),
              children: [
                Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    image: DecorationImage(
                      image: AssetImage('assets/images/blue_bg.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: PaddedColumn(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.w,
                    ),
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      gapH6,
                      Text(
                        'Premium',
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                          color: kWhite,
                        ),
                      ),
                      gapH4,
                      ...List.generate(
                        pricePlan.length,
                        (index) => ListTile(
                          dense: true,
                          visualDensity: const VisualDensity(vertical: -3.3),
                          contentPadding: EdgeInsets.zero,
                          minVerticalPadding: 0,
                          leading: const ImageIcon(
                            AssetImage('assets/icons/crown.png'),
                            color: kWhite,
                          ),
                          title: Text(
                            pricePlan[index],
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: kWhite,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      gapH6,
                    ],
                  ),
                ),
                gapH16,
                ...List.generate(
                  tittle.length,
                  (index) => Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 6.h,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isSelectedItem = index;
                        });
                      },
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(16.r),
                              ),
                              border: Border.all(
                                color:
                                    isSelectedItem == index ? kGreen : stroke,
                              ),
                            ),
                            child: PaddedRow(
                              padding: EdgeInsets.symmetric(
                                horizontal: 12.w,
                                vertical: 4.h,
                              ),
                              children: [
                                IgnorePointer(
                                  child: Radio(
                                    activeColor: kGreen,
                                    visualDensity: VisualDensity.compact,
                                    value:
                                        isSelectedItem == index ? true : false,
                                    groupValue: true,
                                    onChanged: (value) {},
                                  ),
                                ),
                                Text(
                                  tittle[index],
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w700,
                                    color: richBalck,
                                  ),
                                ),
                                const Spacer(),
                                if (index != tittle.length - 1)
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        '\$299',
                                        style: TextStyle(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w600,
                                          color: richBalck,
                                        ),
                                      ),
                                      Text.rich(
                                        TextSpan(
                                          text: '',
                                          style: TextStyle(
                                            fontSize: 12.sp,
                                            color: darkGrey,
                                          ),
                                          children: [
                                            TextSpan(
                                              text: '\$299',
                                              style: TextStyle(
                                                fontSize: 11.sp,
                                                color: kGrey,
                                                fontWeight: FontWeight.w400,
                                                decoration:
                                                    TextDecoration.lineThrough,
                                              ),
                                            ),
                                            TextSpan(
                                              text: '   50%Off',
                                              style: TextStyle(
                                                fontSize: 11.sp,
                                                color: success,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  )
                                else
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 10.w,
                                      vertical: 2.h,
                                    ),
                                    decoration: BoxDecoration(
                                      color: kGreen,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(4.r),
                                      ),
                                    ),
                                    child: Text(
                                      'Free',
                                      style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w600,
                                        color: kBlack,
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                          if (index == 0)
                            Positioned(
                              top: -16,
                              right: 10,
                              child: Container(
                                height: 18.h,
                                width: 60.w,
                                decoration: BoxDecoration(
                                  color: kGreen,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(4.r),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    'Best Value',
                                    style: TextStyle(
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w600,
                                      color: richBalck,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          else
                            const SizedBox(),
                        ],
                      ),
                    ),
                  ),
                ),
                gapH10,
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Free Plan',
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                      color: richBalck,
                    ),
                  ),
                ),
                gapH16,
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(16.r),
                    ),
                    border: Border.all(
                      color: kGreen,
                    ),
                  ),
                  child: PaddedColumn(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.w,
                      vertical: 10.h,
                    ),
                    children: [
                      ListTile(
                        dense: true,
                        visualDensity: const VisualDensity(
                          vertical: -4,
                        ),
                        contentPadding: EdgeInsets.zero,
                        minVerticalPadding: 0,
                        // leading: IgnorePointer(
                        //   child: Radio(
                        //     materialTapTargetSize:
                        //         MaterialTapTargetSize.shrinkWrap,
                        //     activeColor: kGreen,
                        //     visualDensity: VisualDensity.compact,
                        //     value: true,
                        //     groupValue: true,
                        //     onChanged: (value) {},
                        //   ),
                        // ),
                        title: Text(
                          tittle.last,
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                            color: kGreen,
                          ),
                        ),
                      ),
                      ...List.generate(
                        curentPlan.length,
                        (index) => ListTile(
                          dense: true,
                          visualDensity: const VisualDensity(
                            vertical: -3,
                          ),
                          contentPadding: EdgeInsets.zero,
                          minVerticalPadding: 0,
                          leading: const Icon(
                            Icons.check,
                            color: kGreen,
                          ),
                          title: Text(
                            curentPlan[index],
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: richBalck,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                gapH16,
              ],
            ),
            gapH12,
            // Text(
            //   'Go ahead! Give it a try for free!',
            //   style: TextStyle(
            //     fontSize: 12.sp,
            //     color: kBlack,
            //     fontWeight: FontWeight.w900,
            //   ),
            //   textAlign: TextAlign.center,
            // ),
            // gapH12,
            gapH2,
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
