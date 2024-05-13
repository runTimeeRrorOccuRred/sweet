// ignore_for_file: prefer_final_locals, type_annotate_public_apis, prefer_typing_uninitialized_variables, non_constant_identifier_names, avoid_dynamic_calls

import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:flextras/flextras.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sweetlifesaver/core/constants.dart';
import 'package:sweetlifesaver/data/remote/auth/models/update_userdata_model.dart';
import 'package:sweetlifesaver/utils/custom_button.dart';
import 'package:sweetlifesaver/utils/file_picker.dart';
import 'package:sweetlifesaver/utils/forms/sliderForm.dart';
import 'package:sweetlifesaver/utils/forms/textfieldform.dart';
import 'package:sweetlifesaver/utils/utils.dart';
import 'package:sweetlifesaver/view/component/help_Icon/helpicon.dart';
import 'package:sweetlifesaver/view/screens/auth/login/login_view_model.dart';
import 'package:sweetlifesaver/view/screens/dashboard/profile/edit_user_profile/edit_user_profile_view_model.dart';
import 'package:sweetlifesaver/view/screens/dashboard/profile/user_profile/user_profile_view_model.dart';
import 'package:wheel_picker/wheel_picker.dart';

class EditUserProfileView extends ConsumerStatefulWidget {
  const EditUserProfileView({super.key});

  @override
  ConsumerState<EditUserProfileView> createState() =>
      _EditUserProfileViewState();
}

class _EditUserProfileViewState extends ConsumerState<EditUserProfileView> with BaseScreenView {
  late UserProfileViewModel _getUserProfileViewModel;
  bool _isEdited = false;

  String noimglink = AppConstants.noimglink;
  List<String>? heightValue;
  String? weightValue;


  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) { 
      _getUserProfileViewModel = ref.read(userProfileViewModelProvider);
      _getUserProfileViewModel.attachView(this);
      ref.read(editUserProfileViewModelProvider).setNameControllerValue(_getUserProfileViewModel.userDataRes?.data?.name ?? '');
      ref.read(editUserProfileViewModelProvider).setEmailControllerValue(_getUserProfileViewModel.userDataRes?.data?.email ?? '');
      ref.read(editUserProfileViewModelProvider).setAgeControllerValue(DateFormat('MM/dd/yyyy').format( DateTime.parse(  _getUserProfileViewModel.userDataRes?.data?.dob ?? DateTime.now().toString(), ), ),);
      ref.read(editUserProfileViewModelProvider).setPhoneControllerValue(_getUserProfileViewModel.userDataRes?.data?.phone ?? '');
      ref.read(editUserProfileViewModelProvider).setCountryCodeNameValue(_getUserProfileViewModel.userDataRes?.data?.region ??  "US");
      ref.read(editUserProfileViewModelProvider).setCountryDialCodeValue(_getUserProfileViewModel.userDataRes?.data?.countryCode ?? "US");
      ref.read(editUserProfileViewModelProvider).setImageLink(_getUserProfileViewModel.userDataRes?.data?.image ?? AppConstants.noimglink);

      heightValue = (_getUserProfileViewModel.userDataRes?.data?.height).toString().split(".");
      ref.read(editUserProfileViewModelProvider).setHeightValue(heightValue?[0] ?? '0');
      ref.read(editUserProfileViewModelProvider).setHeightUnit(heightValue?[1] ?? '0');
            
      weightValue=_getUserProfileViewModel.userDataRes?.data?.weight.toString();
      ref.read(editUserProfileViewModelProvider).setWeightValue(weightValue ?? '0');
      setState(() {
        _isEdited = false;
      });
    });
    super.initState();
  }

    void _markAsEdited() {
    if (!_isEdited) {
      setState(() {
        _isEdited = true;
      });
    }
  }


  @override
  Widget build(BuildContext context) {
     _getUserProfileViewModel = ref.watch(userProfileViewModelProvider);
    final EditUserProfileViewModel editUserProfileViewModel = ref.watch(editUserProfileViewModelProvider);
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
            iconName: HelpIconName.homePage,
          ),
          gapW10,
        ],
      ),
      body: SmartRefresher(
        enablePullDown: false,
        header: const MaterialClassicHeader(
          color: Colors.white,
          backgroundColor: primaryColor,
        ),
        controller: ref.watch(editUserProfileViewModelProvider).editUserProfileRefreshController,
        onRefresh: () async {},
        child: SingleChildScrollView(
          child:ref.watch(userProfileViewModelProvider).isUserLoading? 
          Center(
            child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: 10.w,
                    child: const CircularProgressIndicator(
                      color: primaryColor,
                    ),
                  ),
          )
              : PaddedColumn(
                  crossAxisAlignment: CrossAxisAlignment.start,
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            children: [
              gapH10,
              Align(
                        child: Stack(
                          children: [
                            if (ref.watch(userProfileViewModelProvider).isUserLoading)
                              CircleAvatar(
                                backgroundColor: Colors.transparent,
                                radius: 10.w,
                                child: const CircularProgressIndicator(
                                  color: primaryColor,
                                ),
                              )
                            else
                              CircleAvatar(
                                backgroundColor:
                                    const Color.fromARGB(48, 124, 124, 124),
                                radius: 60.r,
                                backgroundImage: CachedNetworkImageProvider(
                                  editUserProfileViewModel.imageLink ?? noimglink,
                                ),
                              ),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: InkWell(
                                onTap: () {
                                  log('the image is');
                                  log(editUserProfileViewModel.imageLink ?? '');
                                  openPickImageModalSheet(context).then((value) async {
                                //     if (value != null) {
                                //       String? imglink = await uploadImage(value);
                                //       editUserProfileViewModel.setImageLink(imglink);
                                //     } else {
                                //       editUserProfileViewModel.setImageLink(_getUserProfileViewModel.userDataRes?.data?.image ?? noimglink);
                                //       _markAsEdited();
                                       // imglink = ;
                                //     }
                                //   });
                                // },
                                 if (value != null) {
                                      String? imglink = await uploadImage(value);
                                      if (imglink != null && imglink != editUserProfileViewModel.imageLink) {
                                        editUserProfileViewModel.setImageLink(imglink);
                                        _markAsEdited(); // Call this function to mark changes
                                      }
                                    }
                                  },);},
                                child: const CircleAvatar(
                                  radius: 20,
                                  backgroundColor: Colors.white,
                                  child: CircleAvatar(
                                    radius: 15,
                                    backgroundColor: primaryColor,
                                    child: Icon(
                                      Icons.edit,
                                      color: Colors.white,
                                      size: 15,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
              gapH20,
              Align(
                child: Text(
                  "Hi ${(_getUserProfileViewModel.userDataRes?.data?.name ?? "").split(" ").first}!",
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
                    color: richBalck,
                  ),
                ),
              ),
              gapH20,
              TextFieldForm(
                textInputAction: TextInputAction.next,
                isFill: true,
                hintTxt: "Full Name",
                icon: Icons.person_outline,
                labelTxt: "First Name, Last Name",
                controller: editUserProfileViewModel.nameController,
                keyboardType: TextInputType.emailAddress,
                onChanged: (value) {
                  _markAsEdited(); 
                  setState(() {});
                },
              ),
              gapH16,
              TextFormField(
                controller: editUserProfileViewModel.emailController,
                enabled: false,
                decoration: const InputDecoration(
                hintText: "Email",
                prefixIcon:Icon(Icons.email_outlined, color: Colors.grey),
                ),
              ),
              gapH16,
                TextField(
                  controller: editUserProfileViewModel.ageController,
                  readOnly: true,
                  keyboardType: TextInputType.datetime,
                  onTap: () {
                    DateTime? initialDate = editUserProfileViewModel.ageController.text.isEmpty
                      ? calculateDate18YearsAgo(DateTime.now())
                      : DateFormat('MM/dd/yyyy').parse(editUserProfileViewModel.ageController.text);
                      
                    showDatePicker(
                      context: context,
                      initialDate: initialDate,
                      firstDate: DateTime(1900),
                      lastDate: calculateDate18YearsAgo(DateTime.now()),
                      builder: (context, child) {
                        return Theme(
                          data: Theme.of(context).copyWith(
                            colorScheme: const ColorScheme.light(
                            surfaceTint: kWhite,
                            primary: primaryColor, // <-- SEE HERE
                            ),
                            textButtonTheme: TextButtonThemeData(
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.transparent,
                              ),
                            ),
                          ),
                          child: child!,
                        );
                      },
                    ).then((selectedDate) {
                      if (selectedDate != null && selectedDate != initialDate) {
                        setState(() {
                          editUserProfileViewModel.setAgeControllerValue(
                            DateFormat('MM/dd/yyyy').format(selectedDate)
                          );
                          _markAsEdited();  // Mark as edited only if the date changes
                        });
                      }
                    });
                  },
                  decoration: InputDecoration(
                    label: Text(
                      "Date of Birth",
                      style: TextStyle(
                        fontSize: 14.0.sp,
                        color: kGrey,
                      ),
                    ),
                    hintStyle: TextStyle(
                      fontSize: 14.sp,
                      color: kGrey,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6.r),
                      borderSide: const BorderSide(
                        color: kGrey,
                      ),
                    ),
                    suffixIcon: Icon(
                      Icons.calendar_today,
                      color: editUserProfileViewModel.ageController.text.isNotEmpty ? primaryColor : kGrey,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6.r),
                      borderSide: const BorderSide(
                        color: kGrey,
                      ),
                    ),
                    hintText: editUserProfileViewModel.ageController.text == ''
                        ? "mm/dd/yyyy"
                        : editUserProfileViewModel.ageController.text,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6.r),
                      borderSide: const BorderSide(
                        color: primaryColor,
                      ),
                    ),
                  ),
                ),

              gapH16,
              Text.rich(
                TextSpan(
                  text: 'Password',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                    color: richBalck,
                  ),
                  children: [
                    TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          // ios action dialog box
                         // iosDialogebox(context);
                        },
                      text: '   Reset Password',
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                        color: primaryColor,
                      ),
                    ),
                  ],
                ),
              ),
              gapH16,
              Text(
                'Phone',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                  color: richBalck,
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
                          favorite: const ["+1",'US'],
                          barrierColor: Colors.black.withOpacity(0.5),
                          onChanged: (countryCode) {
                          
                           
                            log(countryCode.name!);  //Argentina
                            log(countryCode.code!); // AR
                            log(countryCode.dialCode!); // +54
 

                            
                            setState(() {
                              editUserProfileViewModel.setCountryCodeNameValue(countryCode.code ?? 'US');
                              editUserProfileViewModel.setCountryDialCodeValue(countryCode.dialCode ?? '+1');
                              _markAsEdited();
                              // selectedCountryCodeName = countryCode.code!;
                              // selectedCountryDialCode = countryCode.dialCode!;
                            });
                          },
                          initialSelection: editUserProfileViewModel.selectedCountryCodeName,
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
                      textInputAction: TextInputAction.next,
                      hintTxt: "Phone Number",
                      icon: Icons.phone_android_outlined,
                      labelTxt: "Enter your phone number",
                      controller: editUserProfileViewModel.phoneController,
                      keyboardType: TextInputType.phone,
                      onChanged: (String) {
                         _markAsEdited(); 
                        setState(() {
                          
                        });
                      },
                    ),
                  ),
                ],
              ),
   
             
              gapH20,
              Text(
                'What was your gender at birth?',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                  color: richBalck,
                ),
              ),
              gapH16,
              SliderForm(
                txt1: "Male",
                txt2: "Female",
                onValueChanged: (value) {
                  editUserProfileViewModel.setGender(value == 1 ? "Male" : "Female");
                  _markAsEdited();
                },
                initialValue: _getUserProfileViewModel.userDataRes?.data?.gender=="Male"? 1 : 2,
              ),
              gapH20,
              Text(
                'What is your Height?',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                  color: richBalck,
                ),
              ),
              gapH16,
              TextFormField(
                controller: TextEditingController(
                  text: editUserProfileViewModel.heightUnitName == "1"
                    ? "${editUserProfileViewModel.heightValue} feet ${editUserProfileViewModel.heightUnit!} inches"
                    : "${editUserProfileViewModel.heightcmValue} Centimetre",
              ),
                readOnly: true,
                decoration: InputDecoration(
                label: Text(
                  "Height",
                  style: TextStyle(
                    fontSize: 14.0.sp,
                    color: kGrey,
                  ),
                ),
                hintStyle: TextStyle(
                  fontSize: 14.sp,
                  color: kGrey,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6.r),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6.r),
                  borderSide: const BorderSide(
                    color: kGrey,
                  ),
                ),
                suffixIcon: const Icon(Icons.keyboard_arrow_down_sharp),
              ),
                onTap: (){
                  showModalBottomSheet(
                  enableDrag: false,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.r),
                      topRight: Radius.circular(20.r),
                    ),
                  ),
                  context: context,
                  builder: (BuildContext context) {
                    return StatefulBuilder(
                      builder: (BuildContext context, StateSetter setState) {
                        return PaddedColumn(
                          padding: EdgeInsets.symmetric(
                            vertical: 5,
                            horizontal: 10.w,
                          ),
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Container(
                                height: 4.h,
                                width: 35.w,
                                decoration: BoxDecoration(
                                  color: richBalck,
                                  borderRadius: BorderRadius.circular(10.r),
                                ),
                              ),
                            ),
                           Align(
                              alignment: Alignment.topRight,
                              child: CustomSlidingSegmentedControl<int>(
                                padding: 15.w,
                                height: 25.h,
                                initialValue: int.parse(editUserProfileViewModel.heightUnitName),
                                onValueChanged: (int value) {
                                  setState(() {});
                                  editUserProfileViewModel.setHeightUnitName(value.toString());
                                },
                                children: {
                                  1: Text(
                                    "ft",
                                    style: GoogleFonts.workSans( color: editUserProfileViewModel.heightUnitName == "1" ? kBlack : darkGrey, fontSize: 14.sp, fontWeight: FontWeight.w600, ),
                                  ),
                                  2: Text(
                                    "cm",
                                    style: GoogleFonts.workSans( color: editUserProfileViewModel.heightUnitName == "2"? kBlack : darkGrey,fontSize: 14.sp,fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                },
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6.r),
                                  color: kGrey.withOpacity(0.2),
                                ),
                                duration: const Duration(milliseconds: 150),
                                innerPadding: EdgeInsets.all(4.w),
                                thumbDecoration: BoxDecoration(
                                  color: kGreen,
                                  borderRadius: BorderRadius.circular(6.r),
                                ),
                              ),
                            ),
                             if (editUserProfileViewModel.heightUnitName == "2")
                              SizedBox(
                                height: 200.h,
                                child:  WheelPickerHeightCm(markAsEdited: _markAsEdited),
                              )
                            else
                              SizedBox(
                                height: 200.h,
                                child:  WheelPickerHeightExample(markAsEdited: _markAsEdited),
                              ),
                            CustomButton(
                              buttonText: "Save",
                              ontap: () {
                                Navigator.pop(context);
                              },
                            ),

                            gapH10,
                          ],
                        );
                      },
                    );
                  },
                );

                },

              ),
             
              gapH20,
              Text(
                'What is your Weight?',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                  color: richBalck,
                ),
              ),
              gapH16,
              TextFormField(
              controller: TextEditingController(
                text: '${editUserProfileViewModel.weightValue!} ${(editUserProfileViewModel.weightUnit! == 'kg') ? "kilograms" : "pounds"}',
              ),
              readOnly: true,
              onTap: () {
                showModalBottomSheet(
                  enableDrag: false,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.r),
                      topRight: Radius.circular(20.r),
                    ),
                  ),
                  context: context,
                  builder: (BuildContext context) {
                    return StatefulBuilder(
                      builder: (BuildContext context, StateSetter setState) {
                        return PaddedColumn(
                          padding: EdgeInsets.symmetric(
                            vertical: 5,
                            horizontal: 10.w,
                          ),
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Container(
                                height: 4.h,
                                width: 35.w,
                                decoration: BoxDecoration(
                                  color: richBalck,
                                  borderRadius: BorderRadius.circular(10.r),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 200.h,
                              child:  WheelPickerExample(markAsEdited: _markAsEdited,),
                            ),
                            CustomButton(
                              buttonText: "Save",
                              ontap: () {
                                Navigator.pop(context);
                              },
                            ),
                            gapH10,
                          ],
                        );
                      },
                    );
                  },
                );
              },
              decoration: InputDecoration(
                label: Text(
                  "Weight",
                  style: TextStyle(
                    fontSize: 14.0.sp,
                    color: kGrey,
                  ),
                ),
                hintStyle: TextStyle(
                  fontSize: 14.sp,
                  color: kGrey,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6.r),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6.r),
                  borderSide: const BorderSide(
                    color: kGrey,
                  ),
                ),
                suffixIcon: const Icon(Icons.keyboard_arrow_down_sharp),
              ),
            ),
              gapH32,




              CustomButton(
                buttonColor: (editUserProfileViewModel.nameController.text.isNotEmpty && editUserProfileViewModel.phoneController.text.isNotEmpty) && _isEdited  ? primaryColor : kGrey,
                buttonText: "Save",
                isLoading: ref.watch(editUserProfileViewModelProvider).isLoading,
                ontap: _isEdited ? (){
                  if(editUserProfileViewModel.nameController.text.isNotEmpty && editUserProfileViewModel.phoneController.text.isNotEmpty){
                    ref.read(editUserProfileViewModelProvider).editUserProfile(
                      context,
                      UpdateUserDataReq(
                        name: editUserProfileViewModel.nameController.text,
                        phone: editUserProfileViewModel.phoneController.text,
                        dob: editUserProfileViewModel.ageController.text,
                        height: editUserProfileViewModel.heightUnitName == "1" ? 
                        '${editUserProfileViewModel.heightValue}.${editUserProfileViewModel.heightUnit}'
                        : editUserProfileViewModel.heightcmValue,
                        unitOfHeight: editUserProfileViewModel.heightUnitName == '1' ? 'ft' : 'cm',
                        weight: editUserProfileViewModel.weightValue,
                        unitOfweight:editUserProfileViewModel.weightUnit,
                        gender: editUserProfileViewModel.gender,
                        image: editUserProfileViewModel.imageLink,
                        region: editUserProfileViewModel.selectedCountryCodeName,
                        countryCode: editUserProfileViewModel.selectedCountryDialCode
                      ),
                    )// ).then((value) =>  Navigator.of(context).pop())
                    // .then((value) =>_getUserProfileViewModel.getUserData(context));
                    //.then((value) => ref.read(loginViewModelProvider).getUserData(context));
                     .then((value) =>_getUserProfileViewModel.getUserData(context))
                    .then((value) => ref.read(loginViewModelProvider).getUserData(context)).then((value) => context.pop());
                  }
                } : (){}
              ),
              gapH20,
            ],
          ),
        ),
      ),
    );
  }

  Future<dynamic> iosDialogebox(
    BuildContext context,
  ) {
    return showCupertinoDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) => CupertinoAlertDialog(
        title: const Text(
          "Are you sure you want to change your email?",
        ),
        content: const Text(
          "Your email address is your User Name. If you change your email address, you will need to use your new email address as your new User Name.",
        ),
        actions: [
          CupertinoDialogAction(
            child: const Text(
              "Submit",
              style: TextStyle(
                color: primaryColor,
                fontWeight: FontWeight.normal,
              ),
            ),
            onPressed: () {
              Navigator.of(context).pop();
              showCupertinoDialog(
                context: context,
                barrierDismissible: true,
                builder: (BuildContext context) => CupertinoAlertDialog(
                  title: const Text(
                    "Email sent! ",
                     style: TextStyle(fontWeight: FontWeight.normal),
                  ),
                  content: const Text(
                    "Please check your inbox.",
                     style: TextStyle(fontWeight: FontWeight.normal),
                  ),
                  actions: [
                    CupertinoDialogAction(
                      child: const Text(
                        "Ok",
                        style: TextStyle(
                          color: primaryColor,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                ),
              );
            },
          ),
          CupertinoDialogAction(
            child: const Text("Cancel", style: TextStyle(fontWeight: FontWeight.normal),),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
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
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }
  String extractNumericValue(String input) {
    final RegExp regex = RegExp(r'\b(\d+)\b');
    final Match? match = regex.firstMatch(input);
    if (match != null) {
      return match.group(0)!;
    } else {
      return ''; // Return empty string if no match found
    }
  }


    DateTime calculateDate18YearsAgo(DateTime currentDate) {
    DateTime date18YearsAgo =
        currentDate.subtract(const Duration(days: 365 * 18));
    int leapYears = 0;
    for (int i = 1; i <= 18; i++) {
      if (DateTime(date18YearsAgo.year + i, 2, 29).day == 29) {
        leapYears++;
      }
    }
    date18YearsAgo = date18YearsAgo.subtract(Duration(days: leapYears));
    return date18YearsAgo;
  }
}



//! height wheel ft
class WheelPickerHeightExample extends ConsumerStatefulWidget {
  final Function markAsEdited;
   const WheelPickerHeightExample({Key? key, required this.markAsEdited}) : super(key: key);

  @override
  ConsumerState<WheelPickerHeightExample> createState() =>
      _WheelPickerHeightExampleState();
}

class _WheelPickerHeightExampleState
    extends ConsumerState<WheelPickerHeightExample> {
  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = TextStyle(fontSize: 17.sp, height: 1.5);
    final wheelStyle = WheelPickerStyle(
      size: 200.h,
      itemExtent: textStyle.fontSize! * textStyle.height!, // Text height
      squeeze: 1.1,
      diameterRatio: 0.95,
      surroundingOpacity: .6,
      magnification: 1.2,
    );

    Widget itemBuilder(BuildContext context, int index) {
      return Text(
        "$index".padLeft(2, '0'),
        style: textStyle,
        textScaleFactor: 1.0,
      );
    }

    return SizedBox(
      width: double.infinity,
      child: Stack(
        fit: StackFit.expand,
        children: [
          _centerBar(context),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              WheelPicker(
                builder: itemBuilder,
                looping: false,
                style: wheelStyle,
                selectedIndexColor: richBalck,
                itemCount: 21,
                initialIndex: int.parse(
                  ref.watch(editUserProfileViewModelProvider).heightValue.toString(),
                ),
                onIndexChanged: (index) {
                  ref.read(editUserProfileViewModelProvider).setHeightValue( index.toString(), );
                  widget.markAsEdited();
                  setState(() {});
                },
              ),
              gapW24,
              Text(
                "ft",
                style: TextStyle(
                  color: richBalck,
                  fontSize: 17.sp,
                ),
                textScaleFactor: 1.0,
              ),
              gapW24,
              WheelPicker(
                itemCount: 12,
                builder: itemBuilder,
                initialIndex: int.parse(
                  ref.watch(editUserProfileViewModelProvider).heightUnit.toString(),
                ),
                looping: false,
                onIndexChanged: (index) {
                  ref.read(editUserProfileViewModelProvider).setHeightUnit(
                        index.toString(),
                      );
                      widget.markAsEdited();
                  setState(() {});
                },
                selectedIndexColor: richBalck,
                style: wheelStyle.copyWith(
                  shiftAnimationStyle: const WheelShiftAnimationStyle(
                    duration: Duration(seconds: 1),
                    curve: Curves.bounceOut,
                  ),
                ),
              ),
              gapW24,
              Text(
                "in",
                style: TextStyle(color: richBalck, fontSize: 17.sp),
                textScaleFactor: 1.0,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _centerBar(BuildContext context) {
    return Center(
      child: Container(
        height: 38.h,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(0, 0, 0, 0.04),
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );
  }
}

//! height wheel cm
class WheelPickerHeightCm extends ConsumerStatefulWidget {
  final Function markAsEdited;
  const WheelPickerHeightCm({Key? key, required this.markAsEdited}) : super(key: key);

  @override
  ConsumerState<WheelPickerHeightCm> createState() =>
      _WheelPickerHeightCmState();
}

class _WheelPickerHeightCmState extends ConsumerState<WheelPickerHeightCm> {
  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = TextStyle(fontSize: 17.sp, height: 1.5);
    final wheelStyle = WheelPickerStyle(
      size: 200.h,
      itemExtent: textStyle.fontSize! * textStyle.height!, // Text height
      squeeze: 1.1,
      diameterRatio: 0.95,
      surroundingOpacity: .6,
      magnification: 1.2,
    );

    Widget itemBuilder(BuildContext context, int index) {
      return Text(
        "$index".padLeft(2, '0'),
        style: textStyle,
        textScaleFactor: 1.0,
      );
    }

    return SizedBox(
      width: double.infinity,
      child: Stack(
        fit: StackFit.expand,
        children: [
          _centerBar(context),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              WheelPicker(
                builder: itemBuilder,
                looping: false,
                style: wheelStyle,
                selectedIndexColor: richBalck,
                itemCount: 607,
                initialIndex: int.parse(
                  ref.watch(editUserProfileViewModelProvider).heightcmValue,
                ),
                onIndexChanged: (index) {
                  ref.read(editUserProfileViewModelProvider).setheightcm(
                        index.toString(),
                      );
                      widget.markAsEdited();
                  setState(() {});
                },
              ),
              gapW24,
              Text(
                "cm",
                style: TextStyle(
                  color: richBalck,
                  fontSize: 17.sp,
                ),
                textScaleFactor: 1.0,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _centerBar(BuildContext context) {
    return Center(
      child: Container(
        height: 38.h,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(0, 0, 0, 0.04),
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );
  }
}




//! weight wheel
class WheelPickerExample extends ConsumerStatefulWidget {
  final Function markAsEdited;
   const WheelPickerExample({Key? key, required this.markAsEdited}) : super(key: key);

  @override
  ConsumerState<WheelPickerExample> createState() => _WheelPickerExampleState();
}

class _WheelPickerExampleState extends ConsumerState<WheelPickerExample> {
  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = TextStyle(
      fontSize: 16.sp,
      height: 1.5,
    );
    final wheelStyle = WheelPickerStyle(
      size: 200.h,
      itemExtent: textStyle.fontSize! * textStyle.height!, // Text height
      squeeze: 1.1,
      surroundingOpacity: .6,
      magnification: 1.2,
    );

    Widget itemBuilder(BuildContext context, int index) {
      return Text(
        "$index".padLeft(2, '0'),
        style: textStyle,
        textScaleFactor: 1.0,
      );
    }

    return SizedBox(
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: [
          _centerBar(context),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              WheelPicker(
                builder: itemBuilder,
                looping: false,
                style: wheelStyle,
                selectedIndexColor: richBalck,
                itemCount: 401,
                initialIndex: int.parse(
                  ref.watch(editUserProfileViewModelProvider).weightValue.toString(),
                ),
                onIndexChanged: (index) {
                  ref.read(editUserProfileViewModelProvider).setWeightValue(
                        index.toString(),
                      );
                      widget.markAsEdited();
                  setState(() {});
                },
              ),
              gapW24,
              WheelPicker(
                itemCount: 2,
                builder: (context, index) {
                  return Text(
                    ["Kg", "Ib"][index],
                    style: textStyle,
                    textScaleFactor: 1.0,
                  );
                },
                initialIndex:
                    ref.watch(editUserProfileViewModelProvider).weightUnit == "kg"
                        ? 0
                        : 1,
                looping: false,
                onIndexChanged: (index) {
                  ref.read(editUserProfileViewModelProvider).setWeightUnit(
                        index == 0 ? "kg" : "Ib",
                      );
                        widget.markAsEdited();
                      
                  setState(() {});
                },
                selectedIndexColor: richBalck,
                style: wheelStyle.copyWith(
                  shiftAnimationStyle: const WheelShiftAnimationStyle(
                    duration: Duration(seconds: 1),
                    curve: Curves.bounceOut,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  Widget _centerBar(BuildContext context) {
    return Center(
      child: Container(
        height: 38.h,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(0, 0, 0, 0.04),
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );
  }
}

