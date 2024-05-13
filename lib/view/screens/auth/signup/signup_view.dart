import 'dart:io';

import 'package:flextras/flextras.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sweetlifesaver/utils/custom_button.dart';
import 'package:sweetlifesaver/utils/utils.dart';
import 'package:sweetlifesaver/view/screens/auth/signup/signup_view_model.dart';

class SignupView extends ConsumerStatefulWidget {
  const SignupView({super.key});

  @override
  ConsumerState<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends ConsumerState<SignupView> with BaseScreenView {
  late SignupViewModel _viewModel;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _viewModel = ref.read(signupViewModelProvider);
      _viewModel.attachView(this);
    });
    Future.delayed(const Duration(seconds: 1)).then(
      (value) async => {
        FocusScope.of(context).unfocus(),
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _viewModel = ref.watch(signupViewModelProvider);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kWhite,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            context.pop();
          },
        ),
      ),
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/signup.png',
              height: 170.h,
              width: double.infinity,
            ),
            gapH24,
            PaddedColumn(
              padding: EdgeInsets.symmetric(horizontal: 25.w),
              children: [
                Text(
                  "We are almost there! Please create a free account and Sign-up.",
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                    color: richBalck,
                  ),
                  textAlign: TextAlign.center,
                  textScaleFactor: 1,
                ),
                gapH12,
                Text(
                  "Sign-up to get a secure, personalized, practical, and trackable experience.",
                  style: TextStyle(
                    fontSize: 12.5.sp,
                    fontWeight: FontWeight.w300,
                    color: darkGrey,
                  ),
                  textAlign: TextAlign.center,
                  textScaleFactor: 1,
                ),
              ],
            ),
            gapH24,
            Container(
              height: 340.h,
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25.r),
                  topRight: Radius.circular(25.r),
                ),
                boxShadow: [
                  BoxShadow(
                    color: kBlack.withOpacity(0.1),
                    blurRadius: 10,
                    spreadRadius: 1,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: PaddedColumn(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                children: [
                  gapH20,
                  CustomButton(
                    buttonText: "Create a new account",
                    ontap: () {
                      context.pushNamed(
                        AppRoute.createYourAccountView.name,
                        pathParameters: {
                          'isBackBtn': "true",
                        },
                      );
                    },
                    buttonColor: kWhite,
                    textColor: primaryColor,
                  ),
                  gapH16,
                  Text(
                    "Or Sign-up with",
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: kWhite,
                    ),
                    textScaleFactor: 1,
                  ),
                  gapH16,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          _viewModel.signInWithGoogle(context: context);

                          HapticFeedback.heavyImpact();
                        },
                        child: Image.asset(
                          'assets/icons/google.png',
                          height: 60.h,
                          width: 60.w,
                        ),
                      ),
                      Visibility(
                        visible: Platform.isIOS,
                        child: GestureDetector(
                          onTap: () {
                            _viewModel.signInWithApple(context: context);

                            HapticFeedback.heavyImpact();
                          },
                          child: Image.asset(
                            'assets/icons/apple.png',
                            height: 60.h,
                            width: 60.w,
                          ),
                        ),
                      ),
                      // Image.asset(
                      //   'assets/icons/facebook.png',
                      //   height: 60.h,
                      //   width: 60.w,
                      // ),
                    ],
                  ),
                  gapH8,
                  Text.rich(
                    TextSpan(
                      text: "Already have an account? ",
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: kWhite,
                      ),
                      children: [
                        TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              context.pushNamed(
                                AppRoute.loginView.name,
                                pathParameters: {
                                  'isBackBtn': "true",
                                },
                              );
                            },
                          text: "Sign-in",
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                            color: kWhite,
                          ),
                        ),
                      ],
                    ),
                    textScaleFactor: 1,
                  ),
                  gapH24,
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 0.w),
                    child: Text.rich(
                      TextSpan(
                        text: "In creating your new account, you agree to our ",
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: kWhite,
                        ),
                        children: [
                          TextSpan(
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                context
                                    .pushNamed(AppRoute.webviewContainer.name);
                              },
                            text: "Terms & Conditions",
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: kWhite,
                              decoration: TextDecoration.underline,
                              decorationColor: kWhite,
                            ),
                          ),
                          TextSpan(
                            text: " and ",
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: kWhite,
                            ),
                          ),
                          TextSpan(
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                context.pushNamed(AppRoute.webviewPrivacy.name);
                              },
                            text: "Privacy Policy.",
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: kWhite,
                              decoration: TextDecoration.underline,
                              decorationColor: kWhite,
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                      textScaleFactor: 1,
                    ),
                  ),
                ],
              ),
            ),
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
