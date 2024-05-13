import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:sweetlifesaver/utils/utils.dart';

class CurrentHealth extends StatelessWidget {
  const CurrentHealth({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PaddedColumn(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      children: [
        Text(
          'Current Health',
          style: GoogleFonts.sourceSansPro(
            fontSize: 18.sp,
            color: richBalck,
            fontWeight: FontWeight.w600,
          ),
        ),

        gapH20,
        Text(
          "Gestational diabetes usually develops in women after 24 weeks of pregnancy.",
          style: GoogleFonts.sourceSansPro(
            fontSize: 12.sp,
            color: darkGrey,
          ),
        ),
        gapH10,
        Text(
          "If you have been diagnosed with diabetes and later become pregnant, then you are treated for pre-existing diabetes in pregnancy.",
          style: GoogleFonts.sourceSansPro(
            fontSize: 12.sp,
            color: darkGrey,
          ),
        ),
        gapH10,
        Text(
          "If you have any health conditions other than gestational diabetes, we can help you search for specialized providers in your area for continuity of care.",
          style: GoogleFonts.sourceSansPro(
            fontSize: 12.sp,
            color: darkGrey,
          ),
        ),
        gapH32,
        Image.asset(
          "assets/images/health_goal.png",
          // height: 200.h,
        ).animate().slideY(
              begin: 2,
              end: 0,
              curve: Curves.easeInOut,
            ),
        gapH90,
        // CustomButton(
        //   buttonText: "GO BACK",
        //   ontap: () {
        //     context.pop();
        //   },
        // ).animate().slideY(
        //       begin: 2,
        //       end: 0,
        //       curve: Curves.easeInOut,
        //     ),
        // gapH20,
      ],
    );
  }
}
