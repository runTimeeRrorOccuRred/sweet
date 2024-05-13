import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';

import 'package:sweetlifesaver/utils/utils.dart';

class MacroNutrients extends StatelessWidget {
  const MacroNutrients({super.key});

  @override
  Widget build(BuildContext context) {
     return PaddedColumn(
      crossAxisAlignment: CrossAxisAlignment.start,
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      children: [
        Align(
          child: Text(
            'Macro Nutrient Goals',
            
            style: GoogleFonts.sourceSansPro(
              fontSize: 18.sp,
              color: richBalck,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        
        gapH20,
        Text(
            "Macronutrients or Macros are nutrients that our body needs in large amounts to provide energy and support overall bodily functions.",
            style: GoogleFonts.sourceSansPro(
              fontSize: 12.sp,
              color: darkGrey,
            ),
          ),
          gapH10,
          Text(
            "Macros are measured in terms of grams consumed and calories produced.  ",
            style: GoogleFonts.sourceSansPro(
              textStyle: TextStyle(
              fontSize: 12.sp,
              color: darkGrey,
              
              ),
              
            ),
          ),
          gapH10,
      
          Text(
            "Balancing these macronutrients is key to a healthy diet and can vary depending on individual dietary needs, health goals, and lifestyle factors.",
            style: GoogleFonts.sourceSansPro(
              textStyle: TextStyle(
              fontSize: 12.sp,
              color: darkGrey,
              
              ),
              
            ),
            
          ),
          gapH10,
      
          
          Text(
            "1. Carbohydrates or Carbs:",
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
            "     They are the body’s main source of energy. Carbohydrates \n     are broken into Glucose that are then used by the cells for \n     energy. \n     a. Carbs can be: ",
            style: GoogleFonts.sourceSansPro(
              textStyle: TextStyle(
              fontSize: 12.sp,
              color: darkGrey,
              
              ),
              
            ),
          ),

          Text(
            "         i. Simple Carbs - Sugars \n         ii.Complex Carbs - Starches, Fiber ",
            style: GoogleFonts.sourceSansPro(
              textStyle: TextStyle(
              fontSize: 12.sp,
              color: darkGrey,
              
              ),
              
            ),
          ),
          Text(
            "     b. Sources of Carbs: Grains, Fruits, Vegetables, Legumes, and \n         Dairy Products.",
            style: GoogleFonts.sourceSansPro(
              textStyle: TextStyle(
              fontSize: 12.sp,
              color: darkGrey,
              
              ),
              
            ),
          ),
          Text(
            "     c.  Provides 4 calories per gram ",
            style: GoogleFonts.sourceSansPro(
              textStyle: TextStyle(
              fontSize: 12.sp,
              color: darkGrey,
              
              ),
              
            ),
          ),
          gapH10,
          Text(
            "2. Proteins:",
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
            "      They are crucial for growth, tissue repair, immune function, \n      and for making essential hormones and enzymes. Proteins \n      are also an energy source. ",
            style: GoogleFonts.sourceSansPro(
              textStyle: TextStyle(
              fontSize: 12.sp,
              color: darkGrey,
              
              ),
              
            ),
          ),

          Text(
            "         a. Sources of Proteins: Meat, Poultry, Fish, Dairy, Eggs, \n              Legumes, Nuts.",
            style: GoogleFonts.sourceSansPro(
              textStyle: TextStyle(
              fontSize: 12.sp,
              color: darkGrey,
              
              ),
              
            ),
          ),
          Text(
            "         b. Amino Acids are the building blocks of Proteins.",
            style: GoogleFonts.sourceSansPro(
              textStyle: TextStyle(
              fontSize: 12.sp,
              color: darkGrey,
              
              ),
              
            ),
          ),
          Text(
            "         c.  Provides 4 calories per gram ",
            style: GoogleFonts.sourceSansPro(
              textStyle: TextStyle(
              fontSize: 12.sp,
              color: darkGrey,
              
              ),
              
            ),
          ),
          gapH10,
          Text(
            "3. Fats:",
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
            "      They are a major source of energy. Fats are important for \n      cell growth, protecting organs, keeping the body warm, and \n      aiding in nutrient absorption.",
            style: GoogleFonts.sourceSansPro(
              textStyle: TextStyle(
              fontSize: 12.sp,
              color: darkGrey,
              
              ),
              
            ),
          ),

          Text(
            "         a. Types: Saturated, Unsaturated (mono and \n              polysaturated), and Trans Fats",
            style: GoogleFonts.sourceSansPro(
              textStyle: TextStyle(
              fontSize: 12.sp,
              color: darkGrey,
              
              ),
              
            ),
          ),
          Text(
            "         b. Sources of Fat: Oils, Butter, Nuts, Seeds, Fatty Fish, and \n              some Diary Products.",
            style: GoogleFonts.sourceSansPro(
              textStyle: TextStyle(
              fontSize: 12.sp,
              color: darkGrey,
              
              ),
              
            ),
          ),
          Text(
            "         c.  Provides 9 calories per gram",
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