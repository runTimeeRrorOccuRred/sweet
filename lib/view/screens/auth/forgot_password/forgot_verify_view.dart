import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:sweetlifesaver/data/remote/auth/models/forget_password_model.dart';
import 'package:sweetlifesaver/utils/custom_button.dart';
import 'package:sweetlifesaver/utils/forms/textfieldform.dart';
import 'package:sweetlifesaver/utils/password_strength.dart';
import 'package:sweetlifesaver/utils/utils.dart';
import 'package:sweetlifesaver/view/screens/auth/forgot_password/forgot_password_view_model.dart';
import 'package:sweetlifesaver/view/screens/auth/verify/verify_view_model.dart';

class ForgotVerifyView extends ConsumerStatefulWidget {
  final String email;
  const ForgotVerifyView(this.email, {super.key});

  @override
  ConsumerState<ForgotVerifyView> createState() => _ForgotVerifyViewState();
}

class _ForgotVerifyViewState extends ConsumerState<ForgotVerifyView>
    with BaseScreenView {
  TextEditingController emailController = TextEditingController();
  TextEditingController pinController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void initState() {
    emailController.text = widget.email;
    super.initState();
  }

  double passwordStrength = 0.0;

  @override
  Widget build(BuildContext context) {
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
      body: SmartRefresher(
        enablePullDown: false,
        header: const MaterialClassicHeader(
          color: Colors.white,
          backgroundColor: primaryColor,
        ),
        controller: ref.watch(verifyViewModelProvider).verifyRefreshController,
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
              // TextFieldForm(
              //   textInputAction: TextInputAction.next,
              //   hintTxt: "Email",
              //   icon: Icons.email_outlined,
              //   labelTxt: "Enter your email",
              //   controller: emailController,
              //   keyboardType: TextInputType.name,
              //   onChanged: (String) {},
              // ),
              // gapH16,
              TextFieldForm(
                textInputAction: TextInputAction.next,
                hintTxt: "Password",
                icon: Icons.lock_outline,
                isPassword: true,
                labelTxt: "Enter your new password",
                controller: passwordController,
                keyboardType: TextInputType.visiblePassword,
                onChanged: (value) {
                  setState(() {});
                  passwordStrength = calculatePasswordStrength(value);
                },
              ),

              gapH16,
              TextFieldForm(
                hintTxt: "OTP",
                icon: Icons.password,
                labelTxt: "Enter OTP",
                controller: pinController,
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {});
                },
              ),
              gapH32,
              CustomButton(
                buttonColor: pinController.text.isEmpty ||
                        passwordController.text.isEmpty
                    ? kGrey
                    : primaryColor,
                isLoading: ref
                        .watch(forgotPasswordViewModelProvider)
                        .isforgotPasswordVerifyOtp ??
                    false,
                buttonText: "Verify",
                ontap: () {
                  ref
                      .read(forgotPasswordViewModelProvider)
                      .forgotPasswordVerifyOtp(
                        ForgotVerifyOtpReq(
                          email: widget.email.trim(),
                          otp: int.parse(pinController.text.trim()),
                          password: passwordController.text.trim(),
                        ),
                        context,
                      );
                },
              ),
            ],
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
