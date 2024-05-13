import 'package:go_router/go_router.dart';
import 'package:sweetlifesaver/view/component/webview/webview_pages.dart';
import 'package:sweetlifesaver/view/screens/auth/create_your_account/create_your_account_view.dart';
import 'package:sweetlifesaver/view/screens/auth/forgot_password/forgot_password_view.dart';
import 'package:sweetlifesaver/view/screens/auth/forgot_password/forgot_verify_view.dart';
import 'package:sweetlifesaver/view/screens/auth/login/login_view.dart';
import 'package:sweetlifesaver/view/screens/auth/signup/signup_view.dart';
import 'package:sweetlifesaver/view/screens/auth/verify/verify_view.dart';
import 'package:sweetlifesaver/view/screens/dashboard/dashboard_view.dart';
import 'package:sweetlifesaver/view/screens/dashboard/home/activity/add_activite/add_activite_view.dart';
import 'package:sweetlifesaver/view/screens/dashboard/home/activity/create_custom_activity/create_custom_activity_view.dart';
import 'package:sweetlifesaver/view/screens/dashboard/home/food/add_food/add_food_view.dart';
import 'package:sweetlifesaver/view/screens/dashboard/home/food/create_custom_food/create_custom_food_view.dart';
import 'package:sweetlifesaver/view/screens/dashboard/home/home_view.dart';
import 'package:sweetlifesaver/view/screens/dashboard/profile/edit_user_profile/edit_user_profile_view.dart';
import 'package:sweetlifesaver/view/screens/dashboard/profile/user_profile/user_profile_view.dart';
import 'package:sweetlifesaver/view/screens/on_boarding/on_boarding_view.dart';
import 'package:sweetlifesaver/view/screens/payment_plan/payment_plan_view.dart';
import 'package:sweetlifesaver/view/screens/splash/splash_view.dart';
import 'package:sweetlifesaver/view/screens/user_goal/food_allergie/food_allergie_view.dart';
import 'package:sweetlifesaver/view/screens/user_goal/health_goal/health_goal_view.dart';
import 'package:sweetlifesaver/view/screens/user_goal/heath_condition/health_condition_view.dart';
import 'package:sweetlifesaver/view/screens/user_goal/preferred_diet/preferred_diet_view.dart';
import 'package:sweetlifesaver/view/screens/user_goal/usergoal_view.dart';


enum AppRoute {
  splash,
  onBoarding,
  userGoalView,
  healthGoalView,
  heathConditionView,
  preferredDietView,
  foodAllergieView,
  signupView,
  loginView,
  forgotPassword,
  forgotverifyPassword,
  createYourAccountView,
  verifyView,
  paymentPlan,
  dashboard,
  homeView,
  addFoodView,
  createCustomFoodView,
  addActivity,
  createCustomActivity,
  userProfile,
  editUserProfile,
  verifyOtpView,
  webviewContainer,
  webviewPrivacy
}

// flutter packages pub run build_runner build --delete-conflicting-outputs
final routers = [
  GoRoute(
    path: '/',
    name: AppRoute.splash.name,
    builder: (context, state) => const SplashView(),
  ),
  GoRoute(
    path: '/onBoarding/:isBackBtn',
    name: AppRoute.onBoarding.name,
    builder: (context, state) => OnBoardingView(
      isBackbtn: bool.parse(state.pathParameters['isBackBtn'].toString()),
    ),
  ),
  //! user Goal
  GoRoute(
    path: '/userGoalView',
    name: AppRoute.userGoalView.name,
    builder: (context, state) => const UserGoalView(),
  ),
  GoRoute(
    path: '/healthGoalView',
    name: AppRoute.healthGoalView.name,
    builder: (context, state) => const HealthGoalView(),
  ),
  GoRoute(
    path: '/heathConditionView',
    name: AppRoute.heathConditionView.name,
    builder: (context, state) => const HealthConditionView(),
  ),
  GoRoute(
    path: '/preferredDietView',
    name: AppRoute.preferredDietView.name,
    builder: (context, state) => const PreferredDietView(),
  ),
  GoRoute(
    path: '/foodAllergieView',
    name: AppRoute.foodAllergieView.name,
    builder: (context, state) => const FoodAllergieView(),
  ),
  //! Auth
  GoRoute(
    path: '/signupView',
    name: AppRoute.signupView.name,
    builder: (context, state) => const SignupView(),
  ),
  GoRoute(
    path: '/loginView/:isBackBtn',
    name: AppRoute.loginView.name,
    builder: (context, state) => LoginView(
      isBackBtn: bool.parse(state.pathParameters['isBackBtn'].toString()),
    ),
  ),
  GoRoute(
    path: '/createYourAccountView/:isBackBtn',
    name: AppRoute.createYourAccountView.name,
    builder: (context, state) => CreateYourAccountView(
      isBackBtn: bool.parse(state.pathParameters['isBackBtn'].toString()),
    ),
  ),
  GoRoute(
    path: '/verifyView/:email',
    name: AppRoute.verifyView.name,
    builder: (context, state) =>
        VerifyView(state.pathParameters['email'].toString()),
  ),
  GoRoute(
    path: '/forgotPassword',
    name: AppRoute.forgotPassword.name,
    builder: (context, state) => const ForgotPasswordView(),
  ),
  GoRoute(
    path: '/forgotverifyPassword/:email',
    name: AppRoute.forgotverifyPassword.name,
    builder: (context, state) =>
        ForgotVerifyView(state.pathParameters['email'].toString()),
  ),
  GoRoute(
    path: '/paymentPlan',
    name: AppRoute.paymentPlan.name,
    builder: (context, state) => const PaymentPlanView(),
  ),
  GoRoute(
    path: '/homeView',
    name: AppRoute.homeView.name,
    builder: (context, state) => const HomeView(),
  ),
  //! Home
  GoRoute(
    path: '/dashboard',
    name: AppRoute.dashboard.name,
    builder: (context, state) => const DashboardView(),
  ),
  GoRoute(
    path: '/addFoodView/:foodtype',
    name: AppRoute.addFoodView.name,
    builder: (context, state) =>
        AddFoodView(state.pathParameters['foodtype'].toString()),
  ),
  GoRoute(
    path: '/createCustomFoodView/:foodType',
    name: AppRoute.createCustomFoodView.name,
    builder: (context, state) =>
        CreateCustomFoodView(state.pathParameters['foodType'].toString()),
  ),
  GoRoute(
    path: '/addActivity',
    name: AppRoute.addActivity.name,
    builder: (context, state) => const AddActiviteView(),
  ),
  GoRoute(
    path: '/createCustomActivity',
    name: AppRoute.createCustomActivity.name,
    builder: (context, state) => const CreateCustomActivityView(),
  ),
  GoRoute(
    path: '/userProfile',
    name: AppRoute.userProfile.name,
    builder: (context, state) => const UserProfileView(),
  ),
  GoRoute(
    path: '/editUserProfile',
    name: AppRoute.editUserProfile.name,
    builder: (context, state) => const EditUserProfileView(),
  ),
  GoRoute(
    path: '/webviewContainer',
    name: AppRoute.webviewContainer.name,
    builder: (context, state) => const WebviewContainer(),
  ),
  GoRoute(
    path: '/webviewPrivacy',
    name: AppRoute.webviewPrivacy.name,
    builder: (context, state) => const WebViewPrivacyPolicy(),
  ),
]; 
