import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';

import 'package:sweetlifesaver/utils/utils.dart';

class Calorie extends StatelessWidget {
  const Calorie({super.key});

  @override
  Widget build(BuildContext context) {
    
    return PaddedColumn(
      crossAxisAlignment: CrossAxisAlignment.start,
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      children: [
        Align(
          child: Text(
            'Calorie Goals',
            
            style: GoogleFonts.sourceSansPro(
              fontSize: 18.sp,
              color: richBalck,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        
        gapH20,
        Text(
            "Calories refer to a measure of energy that our body needs daily. We need calories to perform basic, life-sustaining functions like breathing, circulation, cell production, nutrient processing, and body temperature regulation. ",
            style: GoogleFonts.sourceSansPro(
              fontSize: 12.sp,
              color: darkGrey,
            ),
          ),
          gapH10,
          Text(
            "Calories are also needed for additional daily functions like walking, running, learning, cooking, gardening, exercising etc. ",
            style: GoogleFonts.sourceSansPro(
              textStyle: TextStyle(
              fontSize: 12.sp,
              color: darkGrey,
              
              ),
              
            ),
          ),
          gapH10,
      
          Text(
            "We obtain calories from the food and drinks we consume daily. We spend those calories by performing daily physical activities and exercises, in addition to the basic, life-sustaining functions for our body. ",
            style: GoogleFonts.sourceSansPro(
              textStyle: TextStyle(
              fontSize: 12.sp,
              color: darkGrey,
              
              ),
              
            ),
            
          ),
          gapH10,
      
          Text(
            "Your calorie goal is calculated based on a number of factors including your gender, height, weight, age, activity-levels, health condition, and weight preferences. ",
            style: GoogleFonts.sourceSansPro(
              textStyle: TextStyle(
              fontSize: 12.sp,
              color: darkGrey,
              
              ),
              
            ),
          ),
          gapH10,
      
          Text(
            "Your Daily Calorie Goal is to meet the target calorie number by a judicious mix of calorie intake through proper diet and food consumption practices (adding calories) and exercises (spending calories), given a number of other factors like your weight and body metabolism. ",
            style: GoogleFonts.sourceSansPro(
              textStyle: TextStyle(
              fontSize: 12.sp,
              color: darkGrey,
              
              ),
              
            ),
          ),
          gapH10,
      
          Text(
            "We may revise your calorie goal and it may not remain constant as your age, your physical and health conditions, and your activity levels change.",
            style: GoogleFonts.sourceSansPro(
              textStyle: TextStyle(
              fontSize: 12.sp,
              color: darkGrey,
              
              ),
              
            ),
          ),
          gapH10,
          Text(
            "Keys to achieving your health goal:",
            textAlign: TextAlign.left,
            style: GoogleFonts.sourceSansPro(
              textStyle: TextStyle(
              fontSize: 12.sp,
              color: darkGrey,
              fontWeight: FontWeight.bold,
              
              ),
              
            ),
          ),
          Text(
            "1. Diligently log your eating and exercising habits.\n2.Track and consistently accomplish your daily goals.\n3.Respond to recommended changes. ",
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