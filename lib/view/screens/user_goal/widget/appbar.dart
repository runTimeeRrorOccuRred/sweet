import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';
import 'package:sweetlifesaver/utils/utils.dart';
import 'package:sweetlifesaver/view/component/help_Icon/helpicon.dart';

class UserGoalAppbar extends StatefulWidget {
  final int progressIndex;
  final String tittle;
  final String subTitle;
  final void Function(int pageindex)? onTAp;
  const UserGoalAppbar({
    super.key,
    required this.progressIndex,
    required this.tittle,
    required this.subTitle,
    this.onTAp,
  });

  @override
  State<UserGoalAppbar> createState() => _UserGoalAppbarState();
}

class _UserGoalAppbarState extends State<UserGoalAppbar> {
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/goal_bg.png'),
          fit: BoxFit.fill,
        ),
      ),
      child: PaddedColumn(
        children: [
          gapH40,
          gapH4,
          Container(
            color: royalBlue,
            child: PaddedRow(
              padding: EdgeInsets.symmetric(
                horizontal: 16.w,
              ),
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  child: const Icon(
                    Icons.arrow_back_ios,
                    color: kWhite,
                  ),
                  onTap: () {
                    if (widget.onTAp != null) {
                      widget.onTAp!(widget.progressIndex);
                    }
                  },
                ),
                HelpIcon(
                  color: kWhite,
                  iconName: userGoalPage(widget.progressIndex),
                ),
              ],
            ),
          ),
          gapH12,
          PaddedColumn(
            padding: EdgeInsets.symmetric(
              horizontal: 16.w,
            ),
            children: [
              gapH5,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int i = 0; i < 8; i++)
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(right: 2.5.w),
                        child: Container(
                          height: 4.h,
                          decoration: BoxDecoration(
                            color: i <= widget.progressIndex ? kGreen : kWhite,
                            borderRadius: BorderRadius.circular(16.r),

                            // shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
              gapH16,
              Text(
                widget.tittle,
                style: TextStyle(
                  color: kWhite,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
                textScaleFactor: 1.0,
              ),
              gapH6,
              Text(
                widget.subTitle,
                style: TextStyle(
                  color: kWhite,
                  fontSize: 11.5.sp,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
                textScaleFactor: 1.0,
              ),
            ],
          ),
          gapH8,
        ],
      ),
    );
  }

  HelpIconName userGoalPage(int selectedPage) {
    switch (selectedPage) {
      case 0:
        return HelpIconName.healthGoal;
      case 1:
        return HelpIconName.currentHealth;
      case 2:
        return HelpIconName.dietaryPreferences;
      case 3:
        return HelpIconName.foodAllergie;
      case 4:
        return HelpIconName.foodPreferences;
      case 5:
        return HelpIconName.activityStatus;
      default:
        return HelpIconName.dailyEatingRoutine;
    }
  }
}
