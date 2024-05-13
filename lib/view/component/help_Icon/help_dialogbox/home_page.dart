import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';
import 'package:sweetlifesaver/utils/utils.dart';

class Homepage extends StatelessWidget {
  const Homepage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PaddedColumn(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      children: [
        Text(
          'Home Screen',
          style: GoogleFonts.sourceSansPro(
            fontSize: 18.sp,
            color: richBalck,
            fontWeight: FontWeight.w600,
          ),
        ),
        
        // YoutubePlayer(
        //   controller: YoutubePlayerController.fromVideoId(
        //     videoId: YoutubePlayerController.convertUrlToId(
        //       "https://youtu.be/wA4cdhx16j4?si=Ups8TXM6rvay-nfx",
        //     )!,
        //     params: const YoutubePlayerParams(
        //       enableCaption: false,
        //     ),
        //   ),
        // ),
        gapH20,
        Text(
          "Calories refer to a measure of energy that our body needs daily. We need calories to perform basic, life-sustaining functions like breathing, circulation, cell production, nutrient processing, and body temperature regulation.",
          style: GoogleFonts.sourceSansPro(
            fontSize: 12.sp,
            color: darkGrey,
          ),
        ),
        gapH10,
        Text(
          "Message Board: The message board notifies you of important information you may want to pay attention to. Taking action on any suggested recommendations is key to improving your health condition. Check here often for timely recommendations.",
          style: GoogleFonts.sourceSansPro(
            textStyle: TextStyle(
            fontSize: 12.sp,
            color: darkGrey,
            
            ),
            
          ),
        ),
        gapH10,
        Text(
          "Daily Health Goals: Your calorie and Macro Nutrient goals are calculated based on a number of factors including your gender, height, weight, age, activity-levels, health condition, and weight preferences. As the day progresses, your eating and exercising logs will track the progress of calories and macro nutrient measurements.",
          style: GoogleFonts.sourceSansPro(
            fontSize: 12.sp,
            color: darkGrey,
          ),
        ),
        gapH10,
        Text(
          "We may revise your calorie goal and it may not remain constant as your age, physical and health conditions, and your activity levels change. You have the ability to manually revise some of these preferences in the Settings menu. ",
          style: GoogleFonts.sourceSansPro(
            fontSize: 12.sp,
            color: darkGrey,
          ),
        ),
        gapH10,
        Text(
          "Please target the achievement of these goals daily through a combination of healthy eating choices and physical exercises. ",
          style: GoogleFonts.sourceSansPro(
            fontSize: 12.sp,
            color: darkGrey,
          ),
        ),
        gapH10,
        Text(
          "If you eat more you add calories. If you exercise more, you burn down calories. As you exercise more and increase your activity levels, remember to also eat more accordingly per our revised calorific suggestions! The opposite is also true when you cut down on your regular exercises. The calorific intake will also have to reduce accordingly!",
          style: GoogleFonts.sourceSansPro(
            fontSize: 12.sp,
            color: darkGrey,
          ),
        ),
        gapH10,
        Text(
          "Intakes: The Home screen provides a singular place to log all your daily food, activity, hydration, sleep, and mood inputs. ",
          style: GoogleFonts.sourceSansPro(
            fontSize: 12.sp,
            color: darkGrey,
          ),
        ),
        gapH10,
        Text(
          "By default, every adult is recommended to have 5 meal sessions a day - Breakfast, Lunch, Afternoon Snack, Dinner, and Late Night Snack. You can revise this per day meal distribution routine in the Settings menu to an alternate routine you prefer. ",
          style: GoogleFonts.sourceSansPro(
            fontSize: 12.sp,
            color: darkGrey,
          ),
        ),
        gapH10,
        Text(
          "You are provided the daily Calorific and Macro Nutrient recommendations for each chosen meal session. A disciplined approach to following the recommendations consistently over a period of time will show marked improvements to your health condition. ",
          style: GoogleFonts.sourceSansPro(
            fontSize: 12.sp,
            color: darkGrey,
          ),
        ),
        // gapH32,
        // Image.asset(
        //   "assets/images/health_goal.png",
        //   // height: 200.h,
        // ).animate().slideY(
        //       begin: 2,
        //       end: 0,
        //       curve: Curves.easeInOut,
        //     ),
        gapH90,
        // CustomButton(
        //   buttonText: "GO BACK",
        //   ontap: () {
        //     context.pop();
        //   },
        // ).animate().slideY(
        //       begin: 2,
        //       end: 0,
        //       curve: Curves.easeInOut,
        //     ),
        // gapH20,
      ],
    );
  }
}
