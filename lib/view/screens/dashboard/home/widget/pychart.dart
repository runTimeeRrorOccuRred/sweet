import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:gradient_circular_progress_indicator/gradient_circular_progress_indicator.dart';
import 'package:sweetlifesaver/utils/utils.dart';
import 'package:sweetlifesaver/view/component/help_Icon/helpicon.dart';

class CustomPieChat extends StatelessWidget {
  final double circularValue;
  final String circulartittle;
  final String circularsubTitle;
  final double pieFat;
  final double pieCarbs;
  final double pieProtein;
  const CustomPieChat({
    super.key,
    required this.circularValue,
    required this.circulartittle,
    required this.circularsubTitle,
    required this.pieFat,
    required this.pieCarbs,
    required this.pieProtein,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 8.w),
                child: GradientCircularProgressIndicator(
                  progress: circularValue,
                  size: 88.h,
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xFF3B82F6),
                      Color(0xFFA855F7),
                      Color(0xFFEC4899),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  backgroundColor: const Color(0xFFE1E1E1),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          circulartittle,
                          style: TextStyle(
                            color: richBalck,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          circularsubTitle,
                          style: TextStyle(
                            color: darkGrey,
                            fontSize: 8.5.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ), // Optional child widget
                ),
              ),
              Positioned(
                top: -20.h,
                right: 12.w,
                child: const HelpIcon(
                  color: primaryColor,
                  iconName: HelpIconName.calorieGoals,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              SizedBox(
                height: 120.h,
                child: PieChart(
                  PieChartData(
                    sections: [
                      PieChartSectionData(
                        value: pieCarbs,
                        title: 'Carbs',
                        color: const Color(0xFF3CBD68),
                        radius: 57.r,
                        titleStyle: TextStyle(
                          color: richBalck,
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      PieChartSectionData(
                        value: pieFat,
                        title: 'Fat',
                        color: const Color(0xFF3CBD68).withOpacity(0.6),
                        radius: 57.r,
                        titleStyle: TextStyle(
                          color: richBalck,
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      PieChartSectionData(
                        value: pieProtein,
                        color: const Color(0xFF3CBD68).withOpacity(0.6),
                        title: 'Protein',
                        radius: 57.r,
                        titleStyle: TextStyle(
                          color: richBalck,
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                    centerSpaceRadius: 0.sp,
                    sectionsSpace: 2.5,
                    //startDegreeOffset: 180,
                  ),
                ),
              ),
              Positioned(
                top: -6.h,
                right: -10.w,
                child: const HelpIcon(
                    color: primaryColor, iconName: HelpIconName.macroNutrients,),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
