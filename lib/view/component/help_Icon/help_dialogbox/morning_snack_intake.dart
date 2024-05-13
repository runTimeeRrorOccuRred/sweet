import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';
import 'package:sweetlifesaver/utils/utils.dart';

class MorningSnack extends StatelessWidget {
  const MorningSnack({super.key});

  @override
  Widget build(BuildContext context) {
    return PaddedColumn(
      crossAxisAlignment: CrossAxisAlignment.start,
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      children: [
        Align(
          child: Text(
            'Morning Snack Intake',
            
            style: GoogleFonts.sourceSansPro(
              fontSize: 18.sp,
              color: richBalck,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        
        gapH20,
        Text(
            "Why have morning snack? How is it different from breakfast?",
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
            "A morning snack is a smaller, less complex meal that differs from breakfast in terms of timing, size, composition, and their role in your diet. It’s benefits include the following:",
            style: GoogleFonts.sourceSansPro(
              textStyle: TextStyle(
              fontSize: 12.sp,
              color: darkGrey,
              
              ),
              
            ),
          ),
          gapH10,
      
          Text(
            "*Sustains/maintains energy levels till lunch\n*Prevents over eating lunch\n*Satiates hunger.\n*Quick enery boost.\n*Maintains blood sugar levels.",
            style: GoogleFonts.sourceSansPro(
              textStyle: TextStyle(
              fontSize: 12.sp,
              color: darkGrey,
              
              ),
              
            ),
            
          ),
          gapH10,
      
          
          Text(
            "What is the best time to have morning snack?",
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
            "*After breakfast \n*Before lunch.\n*Typically mid morning.",
            style: GoogleFonts.sourceSansPro(
              textStyle: TextStyle(
              fontSize: 12.sp,
              color: darkGrey,
              
              ),
              
            ),
            
          ),
          gapH10,

          Text(
            "What kinds of food to have for morning snack? ",
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
            "*piece of fruit\n*Handful of nuts\n*Yoghurt\n*Small granola bars",
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
            "You may skip your morning snack.Don't skip your breakfast",
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