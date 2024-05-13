import 'package:flextras/flextras.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:sweetlifesaver/utils/utils.dart';
import 'package:video_player/video_player.dart';

class HealthGoals extends StatefulWidget {
  const HealthGoals({
    super.key,
  });

  @override
  State<HealthGoals> createState() => _HealthGoalsState();
}

class _HealthGoalsState extends State<HealthGoals> {
  late FlickManager flickManager;
  @override
  void initState() {
    super.initState();
    flickManager = FlickManager(
      videoPlayerController: VideoPlayerController.networkUrl(
        Uri.parse(
          "https://sweetlifesaver-s3-bucket-dev.s3.amazonaws.com/assets/Welcome+Health+Goal.mp4",
        ),
      ),
    );
  }

  @override
  void dispose() {
    flickManager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PaddedColumn(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      children: [
        Text(
          'Health Goals',
          style: GoogleFonts.sourceSansPro(
            fontSize: 18.sp,
            color: richBalck,
            fontWeight: FontWeight.w600,
          ),
        ),
        gapH20,

        Center(
          child: AspectRatio(
            aspectRatio: 16 / 10,
            child: FlickVideoPlayer(
              flickVideoWithControls: FlickVideoWithControls(
                textStyle: const TextStyle(
                  color: kBlack,
                ),
                iconThemeData: const IconThemeData(
                  color: kBlack,
                ),
                backgroundColor: kBlack.withOpacity(0.1),
                controls: FlickPortraitControls(
                  progressBarSettings: FlickProgressBarSettings(
                    playedColor: primaryColor,
                    handleColor: primaryColor,
                    backgroundColor: Colors.grey,
                    bufferedColor: Colors.grey,
                    height: 5,
                    curveRadius: 10,
                    handleRadius: 6,
                  ),
                ),
              ),
              flickManager: flickManager,
            ),
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
          "Welcome! This app is specifically made for those who want to manage their diabetic, pre-diabetic, or gestational diabetic condition. We assume that you have visited a physician, have been diagnosed with your condition, and have obtained your A1C test results.",
          style: GoogleFonts.sourceSansPro(
            fontSize: 12.sp,
            color: darkGrey,
          ),
        ),
        gapH10,
        Text(
          "The A1C test also known as the hemoglobin A1C or HbA1c test is a simple blood test that measures your average blood sugar levels over the past 3 months. It is one of the commonly used tests to diagnose prediabetes and diabetes. It is also the main test to help you and your health care team manage your blood sugars.",
          style: GoogleFonts.sourceSansPro(
            fontSize: 12.sp,
            color: darkGrey,
          ),
        ),
        gapH10,
        Text(
          "If not already, please contact your physician to get an accurate diagnosis of your health condition.",
          style: GoogleFonts.sourceSansPro(
            fontSize: 12.sp,
            color: darkGrey,
          ),
        ),
        gapH32,
        Image.asset(
          "assets/images/health_goal.png",
          // height: 200.h,
        ).animate().slideY(
              begin: 2,
              end: 0,
              curve: Curves.easeInOut,
            ),
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
