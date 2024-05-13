import 'package:country_code_picker/country_code_picker.dart';
import 'package:flextras/flextras.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sweetlifesaver/data/remote/auth/models/registration_model.dart';
import 'package:sweetlifesaver/utils/custom_button.dart';
import 'package:sweetlifesaver/utils/forms/textfieldform.dart';
import 'package:sweetlifesaver/utils/location_search/location_serach.dart';
import 'package:sweetlifesaver/utils/password_strength.dart';
import 'package:sweetlifesaver/utils/utils.dart';
import 'package:sweetlifesaver/view/screens/auth/create_your_account/create_your_account_view_model.dart';

class CreateYourAccountView extends ConsumerStatefulWidget {
  final bool isBackBtn;
  const CreateYourAccountView({this.isBackBtn = false, super.key});

  @override
  ConsumerState<CreateYourAccountView> createState() =>
      _CreateYourAccountViewState();
}

class _CreateYourAccountViewState extends ConsumerState<CreateYourAccountView>
    with BaseScreenView {
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  List<String> locationSuggestion = [];

  String countryCode = "+1";
  String countryName = "US";
  bool isValidation = true;
  bool isAgree = false;
  double passwordStrength = 0.0;
  // bool? isFill = true;

  final FocusNode _fullNameNode = FocusNode();
  final FocusNode _emailNode = FocusNode();
  final FocusNode _passwordNode = FocusNode();
  final FocusNode _phoneNumberNode = FocusNode();
  final FocusNode _addressNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _fullNameNode.unfocus();
        _emailNode.unfocus();
        _passwordNode.unfocus();
        _phoneNumberNode.unfocus();
        _addressNode.unfocus();
      },
      child: Scaffold(
        backgroundColor: kWhite,
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
              Text(
                "Create your account",
                style: TextStyle(
                  fontSize: 18.r.sp,
                  fontWeight: FontWeight.w600,
                  color: richBalck,
                ),
                textAlign: TextAlign.center,
              ),
              gapH32,
              TextFieldForm(
                focusNode: _fullNameNode,
                textInputAction: TextInputAction.next,
                isFill: true,
                hintTxt: "Full Name",
                icon: Icons.person_outline,
                labelTxt: "First Name, Last Name",
                controller: _fullNameController,
                keyboardType: TextInputType.name,
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
              gapH16,
              TextFieldForm(
                focusNode: _emailNode,
                textInputAction: TextInputAction.next,
                hintTxt: "Email",
                icon: Icons.email_outlined,
                labelTxt: "Enter your email",
                controller: _emailController,
                keyboardType: TextInputType.text,
                onChanged: (value) {
                  setState(() {});
                },
              ),
              gapH16,
              TextFieldForm(
                textInputAction: TextInputAction.next,
                focusNode: _passwordNode,
                hintTxt: "Password",
                icon: Icons.lock_outline,
                isPassword: true,
                labelTxt: "Enter your password",
                controller: _passwordController,
                keyboardType: TextInputType.text,
                onChanged: (value) {
                  setState(() {});
                  passwordStrength = calculatePasswordStrength(value);
                },
              ),
              gapH8,
              LinearProgressIndicator(
                value: passwordStrength,
                color: richBalck,
                backgroundColor: flashWhite,
                borderRadius: BorderRadius.circular(4.r),
              ),
              gapH4,
              Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Text(
                      "password strength",
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: kGrey,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    gapW4,
                    // based on password strength show the strength
                    Text(
                      passwordStrength > 0.9
                          ? "Strong"
                          : passwordStrength > 0.4
                              ? "Medium"
                              : "Poor",
                      style: TextStyle(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w400,
                        color: passwordStrength > 0.9
                            ? kGreen
                            : passwordStrength > 0.4
                                ? kYellow
                                : passwordStrength > 0.0
                                    ? redColor
                                    : Colors.transparent,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
              ),
              gapH16,
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 3.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.r),
                      border: Border.all(
                        color: kGrey,
                      ),
                    ),
                    child: Row(
                      children: [
                        CountryCodePicker(
                          padding: EdgeInsets.zero,
                          backgroundColor: kBlack,
                          // showDropDownButton: true,
                          favorite: const ['US'],
                          barrierColor: Colors.black.withOpacity(0.5),
                          onChanged: (contryCode) {
                            countryCode = contryCode.dialCode!;
                            countryName = contryCode.name!;
                            setState(() {});
                          },
                          initialSelection: 'US',
                          boxDecoration: BoxDecoration(
                            color: kWhite,
                            borderRadius: BorderRadius.circular(4.r),
                          ),
                        ),
                      ],
                    ),
                  ),
                  gapW8,
                  Expanded(
                    child: TextFieldForm(
                      focusNode: _phoneNumberNode,
                      textInputAction: TextInputAction.next,
                      hintTxt: "Phone Number",
                      icon: Icons.phone_android_outlined,
                      labelTxt: "Enter your phone number",
                      controller: _phoneNumberController,
                      keyboardType: TextInputType.phone,
                      onChanged: (value) {
                        setState(() {});
                      },
                    ),
                  ),
                ],
              ),
              gapH16,
              TextFieldForm(
                focusNode: _addressNode,
                hintTxt: "Search your location",
                icon: Icons.search_outlined,
                labelTxt: "Enter your address",
                controller: _addressController,
                keyboardType: TextInputType.streetAddress,
                onChanged: (value) {
                  if (value.length > 3) {
                    PlaceSearch().fetchLocationSuggestions(value).then(
                          (valuei) => setState(() {
                            locationSuggestion = valuei;
                          }),
                        );
                  } else {
                    locationSuggestion.clear();
                  }
                  setState(() {});
                },
              ),
              if (_addressController.text != "" &&
                  locationSuggestion.isNotEmpty)
                SizedBox(
                  height: 200.h,
                  child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: locationSuggestion.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        visualDensity: VisualDensity.compact,
                        contentPadding: EdgeInsets.zero,
                        leading: Icon(
                          Icons.location_on_outlined,
                          size: 18.sp,
                          color: kGrey,
                        ),
                        title: Text(
                          locationSuggestion[index],
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: darkGrey,
                          ),
                        ),
                        onTap: () {
                          _addressController.text = locationSuggestion[index];
                          locationSuggestion.clear();
                          setState(() {});
                        },
                      );
                    },
                  ),
                ),
              gapH16,
              ListTile(
                contentPadding: EdgeInsets.zero,
                visualDensity: VisualDensity.compact,
                horizontalTitleGap: 4.w,
                dense: false,
                title: Text.rich(
                  TextSpan(
                    text: "Agree with ",
                    style: TextStyle(
                      fontSize: 12.5.sp,
                      fontWeight: FontWeight.w400,
                      color: darkGrey,
                    ),
                    children: [
                      TextSpan(
                        recognizer: TapGestureRecognizer()..onTap = () {
                          context.pushNamed(AppRoute.webviewContainer.name);
                        },
                        text: "Terms & Conditions.",
                        style: TextStyle(
                          fontSize: 12.5.sp,
                          fontWeight: FontWeight.w600,
                          color: darkGrey,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ),
                leading: Checkbox(
                  activeColor: primaryColor,
                  visualDensity: VisualDensity.compact,
                  value: isAgree,
                  onChanged: (value) {
                    setState(() {
                      isAgree = value!;
                    });
                  },
                ),
              ),
              gapH16,
              CustomButton(
                buttonColor: (_fullNameController.text.isEmpty ||
                        _emailController.text.isEmpty ||
                        _passwordController.text.isEmpty ||
                        _phoneNumberController.text.isEmpty ||
                        _addressController.text.isEmpty ||
                        !isAgree)
                    ? kGrey
                    : primaryColor,
                isLoading: ref
                    .watch(createYourAccountViewModelProvider)
                    .isReisterLoading,
                buttonText: "Next",
                ontap: () {
                  if (_fullNameController.text.isEmpty ||
                      _emailController.text.isEmpty ||
                      _passwordController.text.isEmpty ||
                      _phoneNumberController.text.isEmpty ||
                      _addressController.text.isEmpty) {
                    showSnackbar("Please fill all the fields");
                    return;
                  }
                  if (passwordStrength < 0.4) {
                    showSnackbar("Password is too weak");
                    return;
                  }
                  if (!isAgree) {
                    showSnackbar("Please agree with terms and conditions");
                    return;
                  }
                  ref.read(createYourAccountViewModelProvider).register(
                        RegisterReq(
                          name: _fullNameController.text,
                          email: _emailController.text,
                          password: _passwordController.text,
                          phone: _phoneNumberController.text,
                          location: _addressController.text,
                          region: countryName,
                          countryCode: countryCode
                        ),
                        context,
                      );
                },
              ),
              gapH16,
              Text.rich(
                TextSpan(
                  text: "Already have an account? ",
                  style: TextStyle(
                    fontSize: 12.5.sp,
                    fontWeight: FontWeight.w400,
                    color: darkGrey,
                  ),
                  children: [
                    TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          context.pushReplacementNamed(
                            AppRoute.loginView.name,
                            pathParameters: {
                              'isBackBtn': widget.isBackBtn.toString(),
                            },
                          );
                        },
                      text: "Sign-in",
                      style: TextStyle(
                        fontSize: 12.5.sp,
                        fontWeight: FontWeight.w600,
                        color: primaryColor,
                      ),
                    ),
                  ],
                ),
              ),
              gapH10,
            ],
          ),
        ),
      ),
    );
  }

  @override
  void navigateToScreen(AppRoute appRoute, {Map<String, String>? params}) {
    context.pushReplacement(appRoute.name);
  }

  @override
  void showSnackbar(String message, {Color? color}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message,
        style: const TextStyle(color: kGrey),), backgroundColor: kGreen,),
    );
  }
}
