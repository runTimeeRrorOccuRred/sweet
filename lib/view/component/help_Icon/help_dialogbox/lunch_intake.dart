import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';
import 'package:sweetlifesaver/utils/utils.dart';

class LunchIntake extends StatelessWidget {
  const LunchIntake({super.key});

  @override
  Widget build(BuildContext context) {
    return PaddedColumn(
      crossAxisAlignment: CrossAxisAlignment.start,
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      children: [
        Align(
          child: Text(
            'Lunch Intake',
            
            style: GoogleFonts.sourceSansPro(
              fontSize: 18.sp,
              color: richBalck,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        
        gapH20,
        Text(
            "Why have lunch?",
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
            "Lunch plays a crucial role in providing energy and nutrients for the body to function effectively. It’s benefits include the following:",
            style: GoogleFonts.sourceSansPro(
              textStyle: TextStyle(
              fontSize: 12.sp,
              color: darkGrey,
              
              ),
              
            ),
          ),
          gapH10,
      
          Text(
            "*Energy Boost\n*Blood Sugar Regulation\n*Weight Management.\n*Nutrient Intake.\n*Mental and Physical Performance.\n*Prevents Overeating Later.\n*Caters to Metabolic Needs.\n*Social Interactions",
            style: GoogleFonts.sourceSansPro(
              textStyle: TextStyle(
              fontSize: 12.sp,
              color: darkGrey,
              
              ),
              
            ),
            
          ),
          gapH10,
      
          
          Text(
            "What is the best time to have lunch?",
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
            "*Lunch typically falls between 12:00 PM and 2:00 PM. \n*Consistently have lunch around the same time each day.\n*Have lunch 4 to 5 hours after breakfast. \n*Avoid Late Afternoon Lunches.",
            style: GoogleFonts.sourceSansPro(
              textStyle: TextStyle(
              fontSize: 12.sp,
              color: darkGrey,
              
              ),
              
            ),
            
          ),
          gapH10,

          Text(
            "What kinds of food to have for lunch? ",
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
            "Have a balanced, nutritious lunch and include a variety of food groups.",
            style: GoogleFonts.sourceSansPro(
              textStyle: TextStyle(
              fontSize: 12.sp,
              color: darkGrey,
              
              ),
              
            ),
            
          ),
          gapH10,
          Text(
            "*Proteins: Legumes, Tofu, Eggs, Fish, Chicken, Turkey.\n*Whole Grains: Brown Rice, Whole Wheat Bread/Pasta.\n*Vegetables: Leafy Greens, Bell Peppers, Carrots, Tomatoes.\n*Fruits: Berries, Apples, Oranges, Bananas, Grapes.\n*Healthy Fats: Avocado, Olive Oil, Nuts, Seeds, Fatty Fish\n*Dairy: Yoghurt, Cheese, Milk fortified Calcium, Vitamin D.\n*Hydration: Water",
            style: GoogleFonts.sourceSansPro(
              textStyle: TextStyle(
              fontSize: 12.sp,
              color: darkGrey,
              
              ),
              
            ),
            
          ),
          gapH10,
          Text(
            "How to eat your lunch?",
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
            "*Portion control.\n*Be mindful, eat slowly, without distractions.\n*Take your time.\n*Listen to your body and hunger cues.\n*Limit processed food.\n*Pack your lunch.\n*Socialize over lunch.",
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