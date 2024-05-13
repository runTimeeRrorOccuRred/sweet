import 'dart:io';

import 'package:flextras/flextras.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sweetlifesaver/data/remote/auth/models/login_model.dart';
import 'package:sweetlifesaver/services/shared_preference_service.dart';
import 'package:sweetlifesaver/utils/custom_button.dart';
import 'package:sweetlifesaver/utils/forms/textfieldform.dart';
import 'package:sweetlifesaver/utils/utils.dart';
import 'package:sweetlifesaver/view/screens/auth/login/login_view_model.dart';
import 'package:sweetlifesaver/view/screens/auth/signup/signup_view_model.dart';
import 'package:sweetlifesaver/view/screens/user_goal/usergoal_view_model.dart';

class LoginView extends ConsumerStatefulWidget {
  final bool isBackBtn;
  const LoginView({this.isBackBtn = false, super.key});

  @override
  ConsumerState<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends ConsumerState<LoginView> with BaseScreenView {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  FocusNode emailFocusNode = FocusNode();
  FocusNode passwordFocusNode = FocusNode();
  //bool? isFill = true;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        emailFocusNode.unfocus();
        passwordFocusNode.unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: kWhite,
          leading: widget.isBackBtn
              ? IconButton(
                  icon: const Icon(
                    Icons.arrow_back,
                    color: kBlack,
                  ),
                  onPressed: () {
                    context.pop();
                  },
                )
              : null,
        ),
        body: SingleChildScrollView(
          child: PaddedColumn(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            children: [
              Image.asset(
                "assets/images/logo_1.png",
                width: 200.w,
              ),
              gapH20,
              Text(
                "Welcome!",
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                  color: richBalck,
                ),
                textAlign: TextAlign.center,
              ),
              gapH8,
              Text(
                "Sign-in to continue.",
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w300,
                  color: richBalck,
                ),
                textAlign: TextAlign.center,
              ),
              gapH20,
              TextFieldForm(
                focusNode: emailFocusNode,
                textInputAction: TextInputAction.next,
                isFill: true,
                hintTxt: 'Email',
                icon: Icons.email_outlined,
                labelTxt: "Enter your email",
                controller: emailcontroller,
                keyboardType: TextInputType.text,
                onChanged: (value) {
                  // if (value.isEmpty) {
                  //   isFill = false;
                  //   setState(() {});
                  // } else {
                  //   isFill = true;
                  //   setState(() {});
                  // }
                },
              ),
              gapH20,
              TextFieldForm(
                focusNode: passwordFocusNode,
                isPassword: true,
                hintTxt: 'Password',
                icon: Icons.lock_outline,
                labelTxt: "Enter your password",
                controller: passwordcontroller,
                keyboardType: TextInputType.text,
                onChanged: (value) {
                  setState(() {});
                },
              ),
              gapH8,
              Align(
                alignment: Alignment.centerRight,
                child: InkWell(
                  onTap: () {
                    context.pushNamed(AppRoute.forgotPassword.name);
                  },
                  child: Text(
                    "Forgot Your Password?",
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                      color: primaryColor,
                    ),
                  ),
                ),
              ),
              gapH20,
              CustomButton(
                buttonColor: (emailcontroller.text.isEmpty ||
                        passwordcontroller.text.isEmpty)
                    ? kGrey
                    : primaryColor,
                isLoading: ref.watch(loginViewModelProvider).isLoginLoading,
                buttonText: "Login",
                ontap: () {
                  if (emailcontroller.text.isEmpty ||
                      passwordcontroller.text.isEmpty) {
                    showSnackbar(
                      "Please fill all fields",
                      color: kGrey,
                    );
                  } else {
                    ref.read(loginViewModelProvider).login(
                          LoginReq(
                            email: emailcontroller.text,
                            password: passwordcontroller.text,
                          ),
                          context,
                        );
                  }
                  // context.pushNamed(AppRoute.dashboard.name);
                },
              ),
              gapH16,
              Text(
                "Or Sign-in with",
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                  color: richBalck,
                ),
              ),
              gapH16,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      if (SharedPreferenceService.getString(
                                'questionData',
                              ) !=
                              null &&
                          SharedPreferenceService.getString('userData') !=
                              null) {
                        ref
                            .read(signupViewModelProvider)
                            .signInWithGoogle(context: context);
                      } else {
                        context.pushNamed(
                          AppRoute.onBoarding.name,
                          pathParameters: {
                            'isBackBtn': "true",
                          },
                        );
                      }

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
                        ref
                            .read(signupViewModelProvider)
                            .signInWithApple(context: context);

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
                  text: "Don't have an account? ",
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: richBalck,
                  ),
                  children: [
                    TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          if (SharedPreferenceService.getString(
                                    'questionData',
                                  ) !=
                                  null &&
                              SharedPreferenceService.getString('userData') !=
                                  null) {
                            context.pushReplacementNamed(
                              AppRoute.createYourAccountView.name,
                              pathParameters: {
                                'isBackBtn': widget.isBackBtn.toString(),
                              },
                            );
                          } else {
                            context.pushNamed(
                              AppRoute.onBoarding.name,
                              pathParameters: {
                                'isBackBtn': "true",
                              },
                            );
                          }
                        },
                      text: "Register",
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w700,
                        color: primaryColor,
                      ),
                    ),
                  ],
                ),
              ),
              gapH24,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 0.w),
                child: Text.rich(
                  TextSpan(
                    text: "By logging in, our ",
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: darkGrey,
                    ),
                    children: [
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            context.pushNamed(AppRoute.webviewContainer.name);
                          },
                        text: "Terms & Conditions",
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: primaryColor,
                          decoration: TextDecoration.underline,
                          decorationColor: primaryColor,
                        ),
                      ),
                      TextSpan(
                        text: " and ",
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: darkGrey,
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
                          color: primaryColor,
                          decoration: TextDecoration.underline,
                          decorationColor: primaryColor,
                        ),
                      ),
                      TextSpan(
                        text: " will apply.",
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: darkGrey,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              gapH12,
              Text.rich(
                TextSpan(
                  text:
                      "If you are already a registered member and wish to start all over again by updating all your past goal and health details, you can ",
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: darkGrey,
                  ),
                  children: [
                    TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          showCupertinoDialog(
                            context: context,
                            barrierDismissible: true,
                            builder: (BuildContext context) =>
                                CupertinoAlertDialog(
                              title: const Text(
                                "Are you sure you want to re-start afresh?",
                                style: TextStyle(fontWeight: FontWeight.normal),
                              ),
                              content: const Text(
                                "This will clear all your past goal and health details.",
                                style: TextStyle(fontWeight: FontWeight.normal),
                              ),
                              actions: [
                                CupertinoDialogAction(
                                  child: const Text(
                                    "OK",
                                    style: TextStyle(
                                      color: redColor,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  onPressed: () {
                                    ref
                                        .read(userGoalViewModelProvider)
                                        .clearAllData();
                                    ref
                                        .read(userGoalViewModelProvider)
                                        .setisReStartAfresh(true);
                                    context.goNamed(
                                      AppRoute.onBoarding.name,
                                      pathParameters: {
                                        'isBackBtn': "false",
                                      },
                                    );
                                  },
                                ),
                                CupertinoDialogAction(
                                  child: const Text(
                                    "Cancel",
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            ),
                          );
                        },
                      text: "Re-start afresh!",
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: primaryColor,
                        decoration: TextDecoration.underline,
                        decorationColor: darkGrey,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
              gapH20,
            ],
          ),
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
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: success,
        content: Text(message, style: TextStyle(color: color)),
      ),
    );
  }
}
