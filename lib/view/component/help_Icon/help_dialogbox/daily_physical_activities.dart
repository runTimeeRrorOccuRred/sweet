import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sweetlifesaver/utils/app_sizes.dart';

import 'package:sweetlifesaver/utils/colors.dart';

class DailyPhysicalActivities extends StatelessWidget {
  const DailyPhysicalActivities({super.key});

  @override
  Widget build(BuildContext context) {
    return PaddedColumn(
      crossAxisAlignment: CrossAxisAlignment.start,
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      children: [
        Align(
          child: Text(
            'Daily Physical Activities',
            
            style: GoogleFonts.sourceSansPro(
              fontSize: 18.sp,
              color: richBalck,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        
        gapH20,
        Text(
            "Physical activity is crucial in managing one’s health condition. It helps regulate blood sugar levels, improves insulin sensitivity, and aids in weight management.",
            style: GoogleFonts.sourceSansPro(
              fontSize: 12.sp,
              color: darkGrey,
            ),
          ),
          gapH10,
          Text(
            "The app provides the ability to configure devices like Apple Watch and Fitbit to automatically keep track of one’s physical activities in the app. Ensure that the fitness device tracker is tracking all your daily activities accurately.",
            style: GoogleFonts.sourceSansPro(
              textStyle: TextStyle(
              fontSize: 12.sp,
              color: darkGrey,
              
              ),
              
            ),
          ),
          gapH10,
      
          Text(
            "Exercise and workout data: The app tracks simple metrics like the total number of steps taken, workout duration in Minutes, calories burned, and hours spent standing. ",
            style: GoogleFonts.sourceSansPro(
              textStyle: TextStyle(
              fontSize: 12.sp,
              color: darkGrey,
              
              ),
              
            ),
            
          ),
          gapH10,
      
          
          Text(
            "Set your ‘Activity’ Level correctly and realistically in the Settings menu. Capture any changes to the activity levels based on lifestyle changes and physical activity changes in the Settings menu. ",
            textAlign: TextAlign.left,
            style: GoogleFonts.sourceSansPro(
              textStyle: TextStyle(
              fontSize: 12.sp,
              color: darkGrey,
              
              
              ),
              
            ),
          ),
          gapH10,
          Text(
            "For instance, if you have been a ‘Lightly Active’ person in the past but decide to increase your physical activities to become a ‘Moderately Active’ routine, go to the Settings menu and update the ‘Activity Level’ setting accordingly. ",
            style: GoogleFonts.sourceSansPro(
              textStyle: TextStyle(
              fontSize: 12.sp,
              color: darkGrey,
              
              ),
              
            ),
          ),
          gapH10,
          Text(
            "Your Activity Level is an important determinant of the daily net calorific goal as it take into consideration the amount of calories spent in physical activities.",
            style: GoogleFonts.sourceSansPro(
              textStyle: TextStyle(
              fontSize: 12.sp,
              color: darkGrey,
              
              ),
              
            ),
          ),
          

        
        
        gapH90,
        
      ],
    );
  }
}