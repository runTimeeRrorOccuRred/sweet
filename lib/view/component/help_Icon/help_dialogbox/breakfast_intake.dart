import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';

import 'package:sweetlifesaver/utils/utils.dart';

class BreakfastIntake extends StatelessWidget {
  const BreakfastIntake({super.key});

  @override
  Widget build(BuildContext context) {
    return PaddedColumn(
      crossAxisAlignment: CrossAxisAlignment.start,
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      children: [
        Align(
          child: Text(
            'Breakfast Intake',
            
            style: GoogleFonts.sourceSansPro(
              fontSize: 18.sp,
              color: richBalck,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        
        gapH20,
        Text(
            "Why have breakfast?",
            style: GoogleFonts.sourceSansPro(
              textStyle: TextStyle(
                fontSize: 12.sp,
                color: Colors.black,
              fontWeight: FontWeight.bold,
              ),
              
            ),
          ),
          gapH10,
          Text(
            "A healthy and balanced breakfast has the following benefits:",
            style: GoogleFonts.sourceSansPro(
              textStyle: TextStyle(
              fontSize: 12.sp,
              color: darkGrey,
              
              ),
              
            ),
          ),
          gapH10,
      
          Text(
            "*Boosts Energy Levels.\n*Helps Weight Management.\n*Stabilizes Blood Sugar.\n*Provides Essential Nutrients.\n*Improves ConcentrationImproves Cognitive Levels.\n*Improves Metabolism.\n*Enhances Physical Performances",
            style: GoogleFonts.sourceSansPro(
              textStyle: TextStyle(
              fontSize: 12.sp,
              color: darkGrey,
              
              ),
              
            ),
            
          ),
          gapH10,
      
          
          Text(
            "What is the best time to have breakfast?",
            style: GoogleFonts.sourceSansPro(
              textStyle: TextStyle(
                fontSize: 12.sp,
                color: Colors.black,
              fontWeight: FontWeight.bold,
              ),
              
            ),
          ),
          gapH10,
          Text(
            "*Consider your personal schedule.\n*Listen to your body.\n*Align with your circadian rhythm. \n*Eat within 2 hours of waking up.\n*Eat before your day’s main activities\n*IEat after morning workout\n*Eat around the same time each day",
            style: GoogleFonts.sourceSansPro(
              textStyle: TextStyle(
              fontSize: 12.sp,
              color: darkGrey,
              
              ),
              
            ),
            
          ),
          gapH10,

          Text(
            "What to have for breakfast",
            style: GoogleFonts.sourceSansPro(
              textStyle: TextStyle(
                fontSize: 12.sp,
                color: Colors.black,
              fontWeight: FontWeight.bold,
              ),
              
            ),
          ),
          gapH10,
          Text(
            "*Include Proteins like eggs, yoghurt, cheese, nuts, milk.\n*Add fruits and vegetables for vitamins, nutrients, and fiber\n*Choose whole grains like wheat bread, oatmeal.\n*Stay hydrated by beginning the day with drinking water.\n*Limit added sugars.\n*Have a variety of choices.",
            style: GoogleFonts.sourceSansPro(
              textStyle: TextStyle(
              fontSize: 12.sp,
              color: darkGrey,
              
              ),
              
            ),
            
          ),
          gapH10,
          Text(
            "How to eat your breakfast?",
            style: GoogleFonts.sourceSansPro(
              textStyle: TextStyle(
                fontSize: 12.sp,
                color: Colors.black,
              fontWeight: FontWeight.bold,
              ),
              
            ),
          ),
          gapH10,
          Text(
            "*Portion control.\n*Be mindful, eat slowly, without distractions.",
            style: GoogleFonts.sourceSansPro(
              textStyle: TextStyle(
              fontSize: 12.sp,
              color: darkGrey,
              
              ),
              
            ),
            
          ),
          gapH10,
           Text(
            "Don't skip your breakfast",
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