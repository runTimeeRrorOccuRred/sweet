// ignore_for_file: use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import 'package:sweetlifesaver/data/remote/auth/auth_repo.dart';
import 'package:sweetlifesaver/data/remote/auth/auth_repo_impl.dart';
import 'package:sweetlifesaver/data/remote/auth/models/social_login_model.dart';
import 'package:sweetlifesaver/helpers/base_view_model.dart';
import 'package:sweetlifesaver/services/shared_preference_service.dart';
import 'package:sweetlifesaver/utils/utils.dart';
import 'package:sweetlifesaver/view/screens/user_goal/usergoal_view_model.dart';

final signupViewModelProvider =
    ChangeNotifierProvider((ref) => SignupViewModel(ref: ref));

class SignupViewModel extends BaseViewModel<BaseScreenView> {
  Ref ref;
  SignupViewModel({required this.ref});
  final RefreshController _signupRefreshController = RefreshController();
  RefreshController get signupRefreshController => _signupRefreshController;

  final AuthRepo _authRepo = AuthRepoImpl();

  // DATA MEMBERS
  SocialLoginResponseModel _socialLoginResponseModel =
      const SocialLoginResponseModel();

  // GETTERS
  SocialLoginResponseModel get socialLoginResponseModel =>
      _socialLoginResponseModel;

  // SETTERS
  BuildContext? dcontext;
  // OTHER METHODS
  Future<void> socialLogin(
    BuildContext context,
    SocialLoginRequestModel socialLoginRequestModel,
  ) async {
    await _authRepo.socialLogin(socialLoginRequestModel).then((value) {
      toggleLoading();
      return value.fold((l) => Logger.printError(l.message), (r) {
        _socialLoginResponseModel = r;
        Logger.printSuccess(_socialLoginResponseModel.toString());
        notifyListeners();

        SharedPreferenceService.setString(
          'token',
          r.data?.tokens?.access?.token ?? "",
        );
        SharedPreferenceService.setString(
          'uid',
          r.data?.id ?? "",
        );
        SharedPreferenceService.setString(
          'isOldUser',
          "true",
        );

        if (SharedPreferenceService.getString('questionData') != null &&
            SharedPreferenceService.getString('userData') != null) {
          ref.read(userGoalViewModelProvider).updateQuestionData(context);
          ref.read(userGoalViewModelProvider).updateUserData(context);
        }

        if ((_socialLoginResponseModel.data?.newuser ?? false) == false) {
          context.goNamed(AppRoute.dashboard.name);
        } else {
          context.goNamed(AppRoute.paymentPlan.name);
        }
        Navigator.pop(dcontext!);
      });
    });
  }

  //! GOOGLE SIGN IN
  Future<User?> signInWithGoogle({required BuildContext context}) async {
    // await GoogleSignIn().disconnect();
    // await FirebaseAuth.instance.signOut();

    final FirebaseAuth auth = FirebaseAuth.instance;
    User? user;

    final GoogleSignIn googleSignIn = GoogleSignIn();
    final GoogleSignInAccount? googleSignInAccount =
        await googleSignIn.signIn();
    showCupertinoDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        dcontext = context;
        return SizedBox(
          width: 100,
          height: 100,
          child: CupertinoDialogAction(
            child: Container(
              height: 60,
              width: 80,
              decoration: BoxDecoration(
                color: const Color.fromARGB(246, 237, 237, 237),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const CupertinoActivityIndicator(
                radius: 13,
              ),
            ),
          ),
        );
      },
    );

    if (googleSignInAccount != null) {
      final GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );

      try {
        final UserCredential userCredential =
            await auth.signInWithCredential(credential);
        user = userCredential.user;

        // Logger.printError(user?.getIdToken() ?? '');
        // String token = await user?.getIdToken() ?? "";
        // Logger.printInfo("FIREBASE AUTH TOKEN =====> $token");

        Logger.printError(user.toString());

        final String email = user?.providerData.first.email ?? "";
        SocialLoginRequestModel requestModel = const SocialLoginRequestModel();
        if (email.isEmpty) {
          requestModel = SocialLoginRequestModel(
            loginType: "google",
            uid: user?.uid ?? "",
          );
        } else {
          requestModel = SocialLoginRequestModel(
            loginType: "google",
            email: email,
            uid: user?.uid ?? "",
          );
        }

        Logger.printWarning(requestModel.toString());

        socialLogin(context, requestModel);
      } on FirebaseAuthException catch (e) {
        Logger.printError(e.toString());
        GoogleSignIn().disconnect().then(
              (value) => FirebaseAuth.instance.signOut(),
            );
      } catch (e) {
        Logger.printError(e.toString());
        GoogleSignIn().disconnect().then(
              (value) => FirebaseAuth.instance.signOut(),
            );
      }
    }

    Logger.printSuccess("USER DETAILS ======> $user");

    return user;
  }

  //! APPLE SIGN IN
  Future signInWithApple({required BuildContext context}) async {
    try {
      final credential = await SignInWithApple.getAppleIDCredential(
        scopes: [
          AppleIDAuthorizationScopes.email,
          AppleIDAuthorizationScopes.fullName,
        ],
      );
      final oauthCredential = OAuthProvider("apple.com").credential(
        idToken: credential.identityToken,
        accessToken: credential.authorizationCode,
      );
      Logger.printInfo(oauthCredential.toString());
      final UserCredential userCredential =
          await FirebaseAuth.instance.signInWithCredential(oauthCredential);
      final User? user = userCredential.user;

      final String email = user?.providerData.first.email ?? "";
      SocialLoginRequestModel requestModel = const SocialLoginRequestModel();
      if (email.isEmpty) {
        requestModel = SocialLoginRequestModel(
          loginType: "google",
          uid: user?.uid ?? "",
        );
      } else {
        requestModel = SocialLoginRequestModel(
          loginType: "google",
          email: email,
          uid: user?.uid ?? "",
        );
      }
      showCupertinoDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          dcontext = context;
          return SizedBox(
            width: 100,
            height: 100,
            child: CupertinoDialogAction(
              child: Container(
                height: 60,
                width: 80,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(246, 237, 237, 237),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const CupertinoActivityIndicator(
                  radius: 13,
                ),
              ),
            ),
          );
        },
      );

      socialLogin(context, requestModel);

      // String token = await userCredential.user?.getIdToken() ?? "";
      // Logger.printInfo("FIREBASE AUTH TOKEN =====> $token");
      // Logger.printSuccess('User Cred ======= >>  $userCredential');

      // Retrieving the Firebase User ID
      // final String userId = userCredential.user?.uid ?? 'No UID';
      // print('Firebase User ID: $userId');
      //     Logger.printInfo(FirebaseLoginRequest(email: userCredential.additionalUserInfo?.profile?['email'] ?? "",
      //     isEmailVerified: true,
      //     type: "apple",
      //     uid: userCredential.user?.uid ?? "No UID",).toString(),);
      //   firebaseLogin(context, FirebaseLoginRequest(
      //     email: userCredential.additionalUserInfo?.profile?['email'] ??  "$userId@apple.com",
      //     isEmailVerified: true,
      //     type: "apple",
      //     deviceToken: AppConstants.fcmToken,
      //     uid: userId,
      //     username: "${userId}skillcollab"
      //   ),);
    } on FirebaseAuthException catch (e) {
      Logger.printError(e.toString());
    } catch (e) {
      Logger.printError(e.toString());
    }
  }
}
