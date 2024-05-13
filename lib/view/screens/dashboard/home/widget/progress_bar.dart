import 'package:flutter/material.dart';
import 'package:simple_progress_indicators/simple_progress_indicators.dart';
import 'package:sweetlifesaver/utils/utils.dart';

class CustomProgressBar extends StatelessWidget {
  final String start;
  final String end;
  final double value;
  final List<Color> colors;
  final Color backgroundColor;

  const CustomProgressBar({
    super.key,
    required this.start,
    required this.end,
    required this.value,
    required this.colors,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          flex: 0,
          child: SizedBox(
            width: 60.w,
            child: Text(
              start,
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
                color: richBalck,
              ),
            ),
          ),
        ),
        Flexible(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 2.w),
            child: AnimatedProgressBar(
              height: 7.h,
              value: value,
              duration: const Duration(seconds: 1),
              gradient: LinearGradient(
                colors: colors,
              ),
              backgroundColor: backgroundColor,
            ),
          ),
        ),
        Expanded(
          flex: 0,
          child: SizedBox(
            width: 90.w,
            child: Text(
              end,
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
                color: richBalck,
              ),
              textAlign: TextAlign.end,
            ),
          ),
        ),
      ],
    );
  }
}
