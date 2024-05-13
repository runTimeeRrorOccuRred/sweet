import 'package:cached_network_image/cached_network_image.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flextras/flextras.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:intl/intl.dart';
import 'package:sweetlifesaver/core/constants.dart';
import 'package:sweetlifesaver/utils/custom_button.dart';
import 'package:sweetlifesaver/utils/utils.dart';
import 'package:sweetlifesaver/view/component/help_Icon/helpicon.dart';
import 'package:sweetlifesaver/view/screens/dashboard/profile/user_profile/user_profile_view_model.dart';
import 'package:sweetlifesaver/view/screens/user_goal/usergoal_view_model.dart';

class UserProfileView extends ConsumerStatefulWidget {
  const UserProfileView({super.key});

  @override
  ConsumerState<UserProfileView> createState() => _UserProfileViewState();
}

class _UserProfileViewState extends ConsumerState<UserProfileView>
    with BaseScreenView {
  String noimglink = AppConstants.noimglink;
  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 3), () {
      ref.read(userProfileViewModelProvider).getUserData(context);
      FocusScope.of(context).unfocus();
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final UserProfileViewModel viewMoel =
        ref.watch(userProfileViewModelProvider);
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
      body: !viewMoel.isUserLoading
          ? SingleChildScrollView(
              child: PaddedColumn(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                children: [
                  gapH10,
                  CircleAvatar(
                    backgroundColor: const Color.fromARGB(48, 124, 124, 124),
                    radius: 60.r,
                    backgroundImage: CachedNetworkImageProvider(
                      viewMoel.userDataRes?.data?.image ?? noimglink,
                    ),
                  ),
                  gapH20,
                  Text(
                    "Hi ${(viewMoel.userDataRes?.data?.name ?? "").split(" ").first.isEmpty ? "anonymous" : (viewMoel.userDataRes?.data?.name ?? "").split(" ").first}!",
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                      color: richBalck,
                    ),
                  ),
                  gapH20,
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    dense: true,
                    title: Text(
                      "Full Name",
                      style: TextStyle(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w600,
                        color: darkGrey,
                      ),
                    ),
                    subtitle: Text(
                      // viewMoel.userDataRes?.data?.name ?? "",
                      (viewMoel.userDataRes?.data?.name?.isEmpty ?? true) ? "anonymous" : (viewMoel.userDataRes?.data?.name ?? ""),
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                        color: richBalck,
                      ),
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(
                      "Email",
                      style: TextStyle(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w600,
                        color: darkGrey,
                      ),
                    ),
                    subtitle: Text(
                      viewMoel.userDataRes?.data?.email ?? "",
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                        color: richBalck,
                      ),
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(
                      "Date of Birth",
                      style: TextStyle(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w600,
                        color: darkGrey,
                      ),
                    ),
                    subtitle: Text(
                      DateFormat('MM/dd/yyyy').format(
                        DateTime.parse(
                          viewMoel.userDataRes?.data?.dob ??
                              DateTime.now().toString(),
                        ),
                      ),
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                        color: richBalck,
                      ),
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(
                      "Password",
                      style: TextStyle(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w600,
                        color: darkGrey,
                      ),
                    ),
                    subtitle: Text(
                      "********",
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                        color: primaryColor,
                      ),
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(
                      "Phone",
                      style: TextStyle(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w600,
                        color: darkGrey,
                      ),
                    ),
                    subtitle: Text(
                      "${viewMoel.userDataRes?.data?.countryCode ??  ""} ${viewMoel.userDataRes?.data?.region ??  ""} ${viewMoel.userDataRes?.data?.phone ??  ""}",
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                        color: richBalck,
                      ),
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(
                      "Location",
                      style: TextStyle(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w600,
                        color: darkGrey,
                      ),
                    ),
                    subtitle: Text(
                      viewMoel.userDataRes?.data?.location ?? "",
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                        color: richBalck,
                      ),
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(
                      "What was your gender at birth?",
                      style: TextStyle(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w600,
                        color: darkGrey,
                      ),
                    ),
                    subtitle: Text(
                      viewMoel.userDataRes?.data?.gender ?? "",
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                        color: richBalck,
                      ),
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(
                      "What is your Height?",
                      style: TextStyle(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w600,
                        color: darkGrey,
                      ),
                    ),
                    subtitle: Text(
                      "${viewMoel.userDataRes?.data?.height ?? ""} ${viewMoel.userDataRes?.data?.unitOfHeight ?? ""}",
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                        color: richBalck,
                      ),
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(
                      "What is your Weight?",
                      style: TextStyle(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w600,
                        color: darkGrey,
                      ),
                    ),
                    subtitle: Text(
                      "${viewMoel.userDataRes?.data?.weight ?? ""} ${viewMoel.userDataRes?.data?.unitOfweight ?? ""}",
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                        color: richBalck,
                      ),
                    ),
                  ),
                  gapH32,
                  CustomButton(
                    buttonText: "Edit",
                    ontap: () {
                      context.pushNamed(AppRoute.editUserProfile.name);
                    },
                  ),
                  gapH10,
                  TextButton(
                    onPressed: () {
                      showCupertinoDialog(
                        context: context,
                        barrierDismissible: true,
                        builder: (BuildContext context) => CupertinoAlertDialog(
                          title: const Text(
                            "Do you want to log out?",
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
                                GoogleSignIn().disconnect().then(
                                  (value) => FirebaseAuth.instance.signOut(),
                                );
                                context.goNamed(
                                  AppRoute.loginView.name,
                                  pathParameters: {
                                    'isBackBtn': "false",
                                  },
                                );
                              },
                            ),
                            CupertinoDialogAction(
                              child: const Text("Cancel"),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        ),
                      );
                    },
                    child: Text(
                      "Logout",
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                        color: redColor,
                      ),
                    ),
                  ),
                  gapH20,
                ],
              ),
            )
          : const Center(
              child: CircularProgressIndicator(
                color: primaryColor,
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

Future<dynamic> iosDialogebox(
  BuildContext context,
  Ref ref,
) {
  return showCupertinoDialog(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext context) => CupertinoAlertDialog(
      title: const Text(
        "Do you want to log out",
         style: TextStyle(fontWeight: FontWeight.normal),
      ),
     
      actions: [
        CupertinoDialogAction(
          child: const Text(
            "ok",
            style: TextStyle(
              color: primaryColor,
              fontWeight: FontWeight.normal,
            ),
          ),
          onPressed: () {
            ref.read(userGoalViewModelProvider).clearAllData();
            context.goNamed(AppRoute.loginView.name);
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
