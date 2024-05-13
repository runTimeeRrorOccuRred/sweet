import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';
import 'package:sweetlifesaver/utils/utils.dart';

class Sleep extends StatelessWidget {
  const Sleep({super.key});

  @override
  Widget build(BuildContext context) {
    return PaddedColumn(
      crossAxisAlignment: CrossAxisAlignment.start,
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      children: [
        Align(
          child: Text(
            'Sleep',
            
            style: GoogleFonts.sourceSansPro(
              fontSize: 18.sp,
              color: richBalck,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        
        gapH20,
        Text(
            "Log the hours you slept every night after you wake up the next morning. Keeping a log helps you in the following ways: ",
            style: GoogleFonts.sourceSansPro(
              fontSize: 12.sp,
              color: darkGrey,
            ),
          ),
        
          gapH10,

          Text(
            "Identifies patterns \n*Improves sleep hygiene\n*Detects any sleep disorders\n*Monitors effectiveness of lifestyle changes\n*Links sleep to daytime functioning\n*Provides insights to healthcare providers\n*Correlates stress and lifestyle with sleep quality",
            style: GoogleFonts.sourceSansPro(
              fontSize: 12.sp,
              color: darkGrey,
            ),
          ),
        
          gapH10,
      
          
          Text(
            "How many hours should one sleep?",
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
            "The amount of sleep an individual needs can vary based on age, lifestyle, health, and personal needs.",
            style: GoogleFonts.sourceSansPro(
              textStyle: TextStyle(
              fontSize: 12.sp,
              color: darkGrey,
              
              ),
              
            ),
          ),

          Text(
            " General guidelines provided by sleep experts and organizations like the National Sleep Foundation offer a good starting point. ",
            style: GoogleFonts.sourceSansPro(
              textStyle: TextStyle(
              fontSize: 12.sp,
              color: darkGrey,
              
              ),
              
            ),
          ),
          Text(
            " Adults 18 and older need 7-9 hours of sleep every day. ",
            style: GoogleFonts.sourceSansPro(
              textStyle: TextStyle(
              fontSize: 12.sp,
              color: darkGrey,
              
              ),
              
            ),
          ),
          Text(
            "Quality of sleep is just as important as quantity. Good sleep quality means falling asleep within 30 minutes or less, sleeping through the night with no more than one awakening, and being able to return to sleep within 20 minutes if awakened.",
            style: GoogleFonts.sourceSansPro(
              textStyle: TextStyle(
              fontSize: 12.sp,
              color: darkGrey,
              
              ),
              
            ),
          ),
          gapH10,
          Text(
            "How does diet affect sleep?",
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
            "1.Blood Sugar Levels: Consuming foods high in sugar or carbohydrates can lead to spikes in blood sugar levels. These fluctuations can disrupt sleep by causing frequent awakenings to urinate or feeling too hot or too cold.\n2.Timing of Meals: Eating large, fatty, spicy meals close to bedtime can cause discomfort, indigestion, or acid reflux, leading to difficulty falling asleep. \n3.Nutrient Intake: Certain nutrients can impact sleep quality. For example, magnesium and potassium found in various foods can help relax muscles and promote better sleep. Conversely, deficiencies in these nutrients can lead to sleep disturbances.\n4.Caffeine and Alcohol: Caffeine and alcohol can significantly disrupt sleep patterns. Caffeine can make it harder to fall asleep and reduce sleep quality, while alcohol can lead to fragmented sleep.\n5.Hydration: Proper hydration is important for good sleep, but overconsumption of fluids before bedtime can lead to frequent nighttime bathroom trips, especially in diabetics who may already have increased urination.",
            style: GoogleFonts.sourceSansPro(
              textStyle: TextStyle(
              fontSize: 12.sp,
              color: darkGrey,
              
              ),
              
            ),
          ),

         
          gapH10,
          Text(
            "How does sleep impact diet and diabetes management?",
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
            "Appetite Regulation: Poor sleep can disrupt the hormones that regulate appetite (ghrelin and leptin), potentially leading to increased hunger and appetite. This can make dietary management more challenging for diabetics.\n2.Cravings for Unhealthy Foods: Lack of sleep can increase cravings for high-carbohydrate, sugary, or fatty foods. These types of foods can complicate blood sugar management.\n3.Insulin Sensitivity: Poor sleep can reduce insulin sensitivity, making it harder for the body to regulate blood sugar effectively. This is a critical concern for diabetics.\n4.Overall Health and Well-being: Chronic sleep deprivation can lead to a variety of health issues, including weight gain, increased stress levels, and a higher risk of cardiovascular diseases, which can complicate diabetes management.",
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
            "*Keep blood sugar levels stable by eating balanced meals that include a mix of fiber, protein, and healthy fats.\n*Avoid Heavy Meals Before Bed by having your last big meal at least 2-3 hours before bedtime.\n*Limit Caffeine and Alcohol.\n*Stay Hydrated but balance fluid intake to avoid disrupting sleep with frequent bathroom trips.\n*If needed, opt for a small, healthy snack that won’t spike blood sugar levels before bed.\n*Eating consistently at regular times can help regulate both blood sugar and the body’s internal clock.",
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