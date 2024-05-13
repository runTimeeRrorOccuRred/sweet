import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';
import 'package:sweetlifesaver/data/remote/auth/models/forget_password_model.dart';
import 'package:sweetlifesaver/utils/custom_button.dart';
import 'package:sweetlifesaver/utils/forms/textfieldform.dart';
import 'package:sweetlifesaver/utils/utils.dart';
import 'package:sweetlifesaver/view/component/help_Icon/helpicon.dart';
import 'package:sweetlifesaver/view/screens/auth/forgot_password/forgot_password_view_model.dart';

class ForgotPasswordView extends ConsumerStatefulWidget {
  const ForgotPasswordView({super.key});

  @override
  ConsumerState<ForgotPasswordView> createState() => _ForgotPasswordViewState();
}

class _ForgotPasswordViewState extends ConsumerState<ForgotPasswordView>
    with BaseScreenView {
  TextEditingController emailController = TextEditingController();
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
        actions: [
          const HelpIcon(
            color: primaryColor,
            iconName: HelpIconName.healthGoal,
          ),
          gapW16,
        ],
      ),
      body: SingleChildScrollView(
        child: PaddedColumn(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          children: [
            gapH10,
            Text(
              "Reset Password",
              style: TextStyle(
                fontSize: 18.r.sp,
                fontWeight: FontWeight.w600,
                color: richBalck,
              ),
              textAlign: TextAlign.center,
            ),
            gapH10,
            Text(
              "We will send a reset link to your email.",
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w300,
                color: richBalck,
              ),
              textAlign: TextAlign.center,
            ),
            gapH32,
            TextFieldForm(
              textInputAction: TextInputAction.next,
              isFill: true,
              hintTxt: 'Email',
              icon: Icons.email_outlined,
              labelTxt: "Enter your email",
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              onChanged: (value) {
                setState(() {});
              },
            ),
            gapH32,
            CustomButton(
              buttonColor: emailController.text.isEmpty ? kGrey : primaryColor,
              isLoading: ref
                      .watch(forgotPasswordViewModelProvider)
                      .isforgotPasswordSendOtp ??
                  false,
              buttonText: "Submit",
              ontap: () {
                ref.read(forgotPasswordViewModelProvider).forgotPasswordSendOtp(
                      ForgotSendOtpReq(
                        email: emailController.text,
                      ),
                      context,
                    );
              },
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
