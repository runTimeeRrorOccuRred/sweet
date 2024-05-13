import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';
import 'package:sweetlifesaver/utils/utils.dart';

class LateNightIntake extends StatelessWidget {
  const LateNightIntake({super.key});

  @override
  Widget build(BuildContext context) {
    return PaddedColumn(
      crossAxisAlignment: CrossAxisAlignment.start,
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      children: [
        Align(
          child: Text(
            'Late Night Snack Intake',
            
            style: GoogleFonts.sourceSansPro(
              fontSize: 18.sp,
              color: richBalck,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        
        gapH20,
        Text(
            "Why have late night snack? ",
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
            "Occasional late night snack is harmless. Late night snack can be for various reasons like:",
            style: GoogleFonts.sourceSansPro(
              textStyle: TextStyle(
              fontSize: 12.sp,
              color: darkGrey,
              
              ),
              
            ),
          ),
          gapH10,
      
          Text(
            "*Lifestyle \n*Habit\n*Blood Sugar Levels.\n*Psychological Reasons \n*Early Dinner .\n*Missed Dinner\n*Social or Recreational Activity.\n*Emotional Eating\n*Poor sleep Pattern",
            style: GoogleFonts.sourceSansPro(
              textStyle: TextStyle(
              fontSize: 12.sp,
              color: darkGrey,
              
              ),
              
            ),
            
          ),
          gapH10,
      
          
          Text(
            "What is the best time to have an late night snack?",
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
            "*Several hours after an early dinner \n*Post workout nutrition\n*When having trouble sleeping.\n*When hunger keeps one awake\n*After late shift work\n*Special occasions",
            style: GoogleFonts.sourceSansPro(
              textStyle: TextStyle(
              fontSize: 12.sp,
              color: darkGrey,
              
              ),
              
            ),
            
          ),
          gapH10,

          Text(
            "What kinds of food to have for late night snack? ",
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
            "*A piece of Fruit\n*Handful of nuts and seeds\n*Yoghurt\n*Small granola bars\n*Whole grain crackers\n*Veggies\n*Cheese\n*Dark Chocolate",
            style: GoogleFonts.sourceSansPro(
              textStyle: TextStyle(
              fontSize: 12.sp,
              color: darkGrey,
              
              ),
              
            ),
            
          ),
         
          gapH10,
          Text(
            "How to eat your late night snack?",
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
            "*Portion control.\n*Be mindful\n*Stay hydrated.\n*Choose nutritious foods\n*Sit down and eat\n*Choose light and easy to digest foods",
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