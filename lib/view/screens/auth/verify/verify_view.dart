import 'dart:async';

import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:sweetlifesaver/data/remote/auth/models/send_otp_model.dart';
import 'package:sweetlifesaver/data/remote/auth/models/verify_otp_model.dart';
import 'package:sweetlifesaver/utils/custom_button.dart';
import 'package:sweetlifesaver/utils/utils.dart';
import 'package:sweetlifesaver/view/screens/auth/create_your_account/create_your_account_view_model.dart';
import 'package:sweetlifesaver/view/screens/auth/verify/verify_view_model.dart';

class VerifyView extends ConsumerStatefulWidget {
  final String email;
  const VerifyView(this.email, {super.key});

  @override
  ConsumerState<VerifyView> createState() => _VerifyViewState();
}

class _VerifyViewState extends ConsumerState<VerifyView> with BaseScreenView {
  final _formKey = GlobalKey<FormState>();

  bool isResend = true;
  int remainingSecond = 15;
  String? pinCode;

  void resendTimmer() {
    ref.read(createYourAccountViewModelProvider).sendOtp(
          SendOtpReq(
            email: widget.email,
            role: 'user',
          ),
          context,
        );
    isResend = false;
    setState(() {});
    Timer.periodic(const Duration(milliseconds: 1500), (timer) {
      if (remainingSecond == 0) {
        remainingSecond = 15;
        isResend = true;
        setState(() {});
        timer.cancel();
      } else {
        isResend = false;
        remainingSecond--;
        setState(() {});
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        ref.read(createYourAccountViewModelProvider).deleteUser(widget.email);
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: kWhite,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              ref
                  .read(createYourAccountViewModelProvider)
                  .deleteUser(widget.email);
              context.pop();
            },
          ),
        ),
        body: SmartRefresher(
          enablePullDown: false,
          header: const MaterialClassicHeader(
            color: Colors.white,
            backgroundColor: primaryColor,
          ),
          controller:
              ref.watch(verifyViewModelProvider).verifyRefreshController,
          onRefresh: () async {},
          child: SingleChildScrollView(
            child: PaddedColumn(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              children: [
                gapH10,
                Text(
                  "Verify One Time Passcode (OTP).",
                  style: TextStyle(
                    fontSize: 18.r.sp,
                    fontWeight: FontWeight.w600,
                    color: richBalck,
                  ),
                  textAlign: TextAlign.center,
                ),
                gapH10,
                Text(
                  "Please verify the code we sent to your Email and phone.",
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w300,
                    color: richBalck,
                  ),
                  textAlign: TextAlign.center,
                ),
                gapH32,
                Form(
                  key: _formKey,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Pinput(
                      focusedPinTheme: defaultPinTheme.copyWith(
                        decoration: defaultPinTheme.decoration!.copyWith(
                          border: Border.all(color: primaryColor),
                        ),
                      ),
                      autofocus: true,
                      androidSmsAutofillMethod:
                          AndroidSmsAutofillMethod.smsUserConsentApi,
                      autofillHints: const [AutofillHints.oneTimeCode],
                      defaultPinTheme: defaultPinTheme,
                      onChanged: (value) {
                        pinCode = value;
                        setState(() {});
                      },
                      validator: (s) {
                        return s!.length == 4 ? null : 'Pin is incorrect';
                      },
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "OTP valid for 60 min. Did not get the OTP?",
                      style: TextStyle(
                        color: darkGrey,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        height: 0,
                        letterSpacing: -0.28,
                      ),
                    ),
                    if (isResend)
                      TextButton(
                        onPressed: isResend
                            ? () {
                                resendTimmer();
                              }
                            : null,
                        child: Text(
                          'Re-send',
                          style: TextStyle(
                            color: isResend
                                ? primaryColor
                                : const Color(0xFF9F9F9F),
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w700,
                            height: 0,
                            letterSpacing: -0.28,
                          ),
                        ),
                      )
                    else
                      TextButton(
                        onPressed: () {},
                        child: Text('$remainingSecond Sec'),
                      ),
                  ],
                ),
                gapH32,
                CustomButton(
                  buttonColor: pinCode == null || pinCode!.length != 4
                      ? kGrey
                      : primaryColor,
                  isLoading: ref
                      .watch(createYourAccountViewModelProvider)
                      .isVerifyOtpLoading,
                  buttonText: "Verify",
                  ontap: () {
                    ref.read(createYourAccountViewModelProvider).verifyOtp(
                          VerifyOtpReq(
                            email: widget.email,
                            otp: int.parse(pinCode ?? "-1"),
                          ),
                          context,
                        );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  final defaultPinTheme = PinTheme(
    width: 56.w,
    height: 56.w,
    textStyle: const TextStyle(
      fontSize: 20,
      color: Color.fromRGBO(30, 60, 87, 1),
      fontWeight: FontWeight.w600,
    ),
    decoration: BoxDecoration(
      border: Border.all(color: const Color.fromRGBO(234, 239, 243, 1)),
      borderRadius: BorderRadius.circular(4),
    ),
  );

  @override
  void navigateToScreen(AppRoute appRoute, {Map<String, String>? params}) {
    context.goNamed(appRoute.name);
  }

  @override
  void showSnackbar(String message, {Color? color}) {
    // implement showSnackbar
  }
}
