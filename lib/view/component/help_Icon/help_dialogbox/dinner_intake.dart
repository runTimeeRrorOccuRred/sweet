import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';
import 'package:sweetlifesaver/utils/utils.dart';

class DinnerIntake extends StatelessWidget {
  const DinnerIntake({super.key});

  @override
  Widget build(BuildContext context) {
    return PaddedColumn(
      crossAxisAlignment: CrossAxisAlignment.start,
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      children: [
        Align(
          child: Text(
            'Dinner Intake',
            
            style: GoogleFonts.sourceSansPro(
              fontSize: 18.sp,
              color: richBalck,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        
        gapH20,
        Text(
            "Why have Dinner? ",
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
            "Dinner plays a significant role in providing necessary nutrients and maintaining overall health, Here are some key reasons why dinner is important: ",
            style: GoogleFonts.sourceSansPro(
              textStyle: TextStyle(
              fontSize: 12.sp,
              color: darkGrey,
              
              ),
              
            ),
          ),
          gapH10,
      
          Text(
            "*Nutrient Intake\n*Energy Balance\n*Maintains Blood Sugar Levels.\n*Regulates Metabolism\n*Prevents Overeating.\n*Enhances Sleep Quality.\n*Supports Muscle Repair and Growth\n*Family and Social time",
            style: GoogleFonts.sourceSansPro(
              textStyle: TextStyle(
              fontSize: 12.sp,
              color: darkGrey,
              
              ),
              
            ),
            
          ),
          gapH10,
      
          
          Text(
            "What is the best time to have dinner?",
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
            "*Early Evening between 6:00 PM - 7:00 PM. \n*At least 2-3 hours before bedtime.",
            style: GoogleFonts.sourceSansPro(
              textStyle: TextStyle(
              fontSize: 12.sp,
              color: darkGrey,
              
              ),
              
            ),
            
          ),
          gapH10,

          Text(
            "What kinds of food to have for dinner? ",
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
            "Balanced, nutritious, satisfying, aligning to one’s dietary needs and representing a variety of food groups as follows: ",
            style: GoogleFonts.sourceSansPro(
              textStyle: TextStyle(
              fontSize: 12.sp,
              color: darkGrey,
              
              ),
              
            ),
          ),
          gapH10,
           Text(
            "*Lean Protein: Lentils, Beans, Tofu, Eggs, Fish\n*Whole Grains: Rice, Whole Wheat Pasta, Whole Grain Bread\n*Vegetables: Salads, Steamed/Cooked/Raw Veggies, Soups\n*Healthy Fats: Avocado, Olive Oil, Nuts, Seeds, Fatty Fish\n*Fruits\n*\n*Dairy or Dairy Alternatives: Milk, Cheese, Yoghurt ",
            style: GoogleFonts.sourceSansPro(
              textStyle: TextStyle(
              fontSize: 12.sp,
              color: darkGrey,
              
              ),
              
            ),
            
          ),
         
          gapH10,
          Text(
            "How to eat your dinner?",
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
            "*Portion control.\n*Eat mindfully\n*Stay hydrated.\n*Balanced Meal\n*Sit Down and eat slowly\n*Listen to Body and Hunger Cues",
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