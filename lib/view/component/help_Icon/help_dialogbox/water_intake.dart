import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';
import 'package:sweetlifesaver/utils/utils.dart';

class WaterIntake extends StatelessWidget {
  const WaterIntake({super.key});

  @override
  Widget build(BuildContext context) {
    return PaddedColumn(
      crossAxisAlignment: CrossAxisAlignment.start,
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      children: [
        Align(
          child: Text(
            'Water Intake',
            
            style: GoogleFonts.sourceSansPro(
              fontSize: 18.sp,
              color: richBalck,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        
        gapH20,
        Text(
            "Log your daily water intake from morning till bedtime. ",
            style: GoogleFonts.sourceSansPro(
              fontSize: 12.sp,
              color: darkGrey,
            ),
          ),
        
          gapH10,
      
          
          Text(
            "How much water should one consume daily?",
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
            "Daily water intake depends on several factors including age, gender, climate, physical activity level, and overall health.",
            style: GoogleFonts.sourceSansPro(
              textStyle: TextStyle(
              fontSize: 12.sp,
              color: darkGrey,
              
              ),
              
            ),
          ),

          Text(
            " The U.S. National Academies of Sciences, Engineering, and Medicine recommends: ",
            style: GoogleFonts.sourceSansPro(
              textStyle: TextStyle(
              fontSize: 12.sp,
              color: darkGrey,
              
              ),
              
            ),
          ),
          Text(
            " *About 3.7 liters (125 ounces) per day for men. This includes all beverages and water-rich foods.\n*About 2.7 liters (91 ounces) per day for women. This also includes all beverages and water-rich foods.",
            style: GoogleFonts.sourceSansPro(
              textStyle: TextStyle(
              fontSize: 12.sp,
              color: darkGrey,
              
              ),
              
            ),
          ),
          Text(
            "The '8X8' Rule: A simple and easy-to-remember guideline is the '8X8' rule, which suggests drinking eight 8-ounce glasses of water a day, totaling about 2 liters or half a gallon. ",
            style: GoogleFonts.sourceSansPro(
              textStyle: TextStyle(
              fontSize: 12.sp,
              color: darkGrey,
              
              ),
              
            ),
          ),
          gapH10,
          Text(
            "Consider the following for water consumption levels:",
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
            "Activity Level - If you sweat due to physical activity, drink extra water.\n*Hot and Humid Weather - You may need more water as your body loses water through sweating.\n*Pregnancy and Breastfeeding - The American College of Obstetricians and Gynecologists recommends that pregnant women drink about 10 cups (2.4 liters) of fluids daily and breastfeeding women about 13 cups (3.1 liters) of fluids a day.\n*Health Conditions - Conditions like kidney stones or urinary tract infections, may require increased water intake.\n*Listen to your body and thirst cues ",
            style: GoogleFonts.sourceSansPro(
              textStyle: TextStyle(
              fontSize: 12.sp,
              color: darkGrey,
              
              ),
              
            ),
          ),

         
          gapH10,
          Text(
            "How does water intake impact my health condition?",
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
            "1.Blood Sugar Control: Adequate water intake helps the kidneys flush out excess glucose through urine. Dehydration, on the other hand, can cause blood sugar to become more concentrated, leading to higher blood sugar levels.\n2.Kidney Health: Diabetes can put a strain on the kidneys over time, and staying well-hydrated helps the kidneys in filtering and eliminating waste from the blood. \n3.Reducing the Risk of Hyperglycemia and Diabetic Ketoacidosis (DKA): Dehydration can be a contributing factor in hyperglycemia and DKA, particularly in type 1 diabetes. When the body is dehydrated, it can produce certain hormones that cause blood sugar levels to rise.\n4.Appetite Control: Proper hydration can aid in appetite control. Sometimes the body can confuse signals of dehydration with hunger, which might lead to overeating. This is particularly important for weight management in diabetes.\n5.Calorie Control: Water is a calorie-free alternative to sweetened beverages. Consuming water instead of sugary drinks can help manage overall calorie intake, which is beneficial for both blood sugar control and weight management.\n6.Hydration and Exercise: For diabetics who are physically active, staying hydrated is crucial as dehydration can affect blood sugar levels and physical performance.\n7.Prevention of Dehydration-Induced Glucose Fluctuations: Especially in hot weather or during illness, when the risk of dehydration (and consequently, blood sugar fluctuations) can increase.",
            style: GoogleFonts.sourceSansPro(
              textStyle: TextStyle(
              fontSize: 12.sp,
              color: darkGrey,
              
              ),
              
            ),
          ),
          
          gapH10,
          Text(
            "Recommendations:",
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
            "Be particularly mindful of your hydration status, as both hyperglycemia and hypoglycemia can be influenced by hydration levels.\n*If blood sugar levels are high, or if one is engaging in physical activity, it's important to drink extra water to compensate for the fluids lost.\n*Choose Water Over Sugary Drinks.\n*Listen to Your Body. Thirst is an important signal. \n*Consult Healthcare Providers: Individuals with specific health concerns, including kidney-related issues, should consult with their healthcare providers for personalized advice on water intake.",
            style: GoogleFonts.sourceSansPro(
              textStyle: TextStyle(
              fontSize: 12.sp,
              color: darkGrey,
              
              ),
              
            ),
          ),
          gapH10,
          Text(
            "Drinking too much water can lead to water intoxication or hyponatremia, a condition where the sodium levels in the blood become too diluted. Balance and listening to your body's needs are key. ",
            style: GoogleFonts.sourceSansPro(
              fontSize: 12.sp,
              color: darkGrey,
            ),
          ),
        
        gapH90,
        
      ],
    );
  }
}