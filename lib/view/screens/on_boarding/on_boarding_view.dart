import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sweetlifesaver/utils/custom_button.dart';
import 'package:sweetlifesaver/utils/utils.dart';
import 'package:sweetlifesaver/view/screens/user_goal/usergoal_view_model.dart';

class OnBoardingView extends ConsumerStatefulWidget {
  final bool isBackbtn;
  const OnBoardingView({super.key, this.isBackbtn = false});

  @override
  ConsumerState<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends ConsumerState<OnBoardingView>
    with BaseScreenView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 75.h,
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
        child: CustomButton(
          buttonText: "Let’s get started",
          loaderColor: primaryColor,
          isLoading: ref.watch(userGoalViewModelProvider).isLoadQuestionListRes,
          ontap: () {
            HapticFeedback.lightImpact();
            ref
                .read(userGoalViewModelProvider)
                .questionList(context)
                .whenComplete(
                  () => context.pushNamed(AppRoute.userGoalView.name),
                );
          },
          textColor: royalBlue,
          buttonColor: kWhite,
          isSuffix: true,
        ),
      ),
      backgroundColor: royalBlue,
      body: SingleChildScrollView(
        child: PaddedColumn(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            gapH40,
            if (widget.isBackbtn)
              Align(
                alignment: Alignment.centerLeft,
                child: IconButton(
                  onPressed: () {
                    context.pop();
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: kWhite,
                  ),
                ),
              )
            else
              const SizedBox(),
            gapH20,
            Image.asset(
              'assets/images/logo.png',
              height: 75.h,
            ),
            gapH20,
            Image.asset(
              'assets/images/onboarding_img.png',
              width: double.infinity,
            ),
            gapH16,
            Text(
              'Welcome!',
              style: TextStyle(
                fontSize: 26.sp,
                fontWeight: FontWeight.w600,
                fontFamily: AppThemes.font1,
                color: kWhite,
              ),
            ),
            gapH10,
            Text(
              'Congratulations on your step towards a healthy living! Our Registered Dietitians specialized in diabetes care have designed this app to help you achieve your health goals.',
              style: TextStyle(
                fontSize: 14.sp,
                color: kWhite,
                fontFamily: AppThemes.font1,
              ),
              textAlign: TextAlign.center,
            ),
            gapH32,
            // CustomButton(
            //   buttonText: "Let’s get started",
            //   loaderColor: primaryColor,
            //   isLoading:
            //       ref.watch(userGoalViewModelProvider).isLoadQuestionListRes,
            //   ontap: () {
            //     HapticFeedback.lightImpact();
            //     ref
            //         .read(userGoalViewModelProvider)
            //         .questionList(context)
            //         .whenComplete(
            //           () => context.pushNamed(AppRoute.userGoalView.name),
            //         );
            //   },
            //   textColor: royalBlue,
            //   buttonColor: kWhite,
            //   isSuffix: true,
            // ).animate().moveY(
            //       begin: 90,
            //       end: 0,
            //       duration: 600.ms,
            //       curve: Curves.easeInOutCubic,
            //     ),
          ],
        ),
      ),
    );
  }

  @override
  void navigateToScreen(AppRoute appRoute, {Map<String, String>? params}) {
    context.goNamed(appRoute.name);
  }

  @override
  void showSnackbar(String message, {Color? color}) {
    // implement showSnackbar
  }
}
