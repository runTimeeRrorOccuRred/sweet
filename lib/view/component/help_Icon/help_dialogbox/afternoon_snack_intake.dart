import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';
import 'package:sweetlifesaver/utils/utils.dart';

class AfterNoonIntake extends StatelessWidget {
  const AfterNoonIntake({super.key});

  @override
  Widget build(BuildContext context) {
    return PaddedColumn(
      crossAxisAlignment: CrossAxisAlignment.start,
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      children: [
        Align(
          child: Text(
            'Afternoon Snack Intake',
            
            style: GoogleFonts.sourceSansPro(
              fontSize: 18.sp,
              color: richBalck,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        
        gapH20,
        Text(
            "Why have afternoon snack? ",
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
            "Afternoon snacks offer several benefits to include the following:",
            style: GoogleFonts.sourceSansPro(
              textStyle: TextStyle(
              fontSize: 12.sp,
              color: darkGrey,
              
              ),
              
            ),
          ),
          gapH10,
      
          Text(
            "*Energy Boosts\n*Blood Sugar regulates\n*Hunger Management.\n*Nutrient Intake\n*Metabolic Boost.\n*Psychological Satisfaction",
            style: GoogleFonts.sourceSansPro(
              textStyle: TextStyle(
              fontSize: 12.sp,
              color: darkGrey,
              
              ),
              
            ),
            
          ),
          gapH10,
      
          
          Text(
            "What is the best time to have an afternoon snack?",
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
            "*Typically between lunch and dinner \n*Between 2:00 PM- 4:00PM\n*30 Min to 1 hour before physical workout .",
            style: GoogleFonts.sourceSansPro(
              textStyle: TextStyle(
              fontSize: 12.sp,
              color: darkGrey,
              
              ),
              
            ),
            
          ),
          gapH10,

          Text(
            "What kinds of food to have for afternoon snack? ",
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
            "*Fruits\n*Handful of nuts and seeds\n*Yoghurt\n*Small granola bars\n*Whole grain crackers\n*Popcorn\n*Cheese\n*Energy Bars\n*Dark Chocolate\n*Homemade Smoothies",
            style: GoogleFonts.sourceSansPro(
              textStyle: TextStyle(
              fontSize: 12.sp,
              color: darkGrey,
              
              ),
              
            ),
            
          ),
         
          gapH10,
          Text(
            "How to eat your morning snack?",
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
            "*Portion control.\n*Be mindful, eat slowly, without distractions.\n*Stay hydrated.\n*Choose nutritious foods\n*Take a break\n*Prepare your snack in advance",
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