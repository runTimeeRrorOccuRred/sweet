const registrationEndpoint = "auth/register";
const loginEndpoint = "auth/login";
const sendOtpEndpoint = "auth/send-otp";
const verifyOtpEndpoint = "auth/verify-otp";
const forgotPasswordSendOtpEndpoint = "auth/forgot-password/send-otp";
const forgotPasswordVerifyOtpEndpoint = "auth/reset-password";
const uplodePicEndpoint = 'auth/upload';
const getQuestion = "admin/questionnaires-list";
const socialLoginEndpoint = "auth/social-login";
String getans(String id) => "admin/questionnaires/answer-list/$id";
String dltuser(String id) => "auth/delete-user/$id";
String updateUserDataEndpoint(String uid) => 'users/update/$uid';
String updateQuestionEndpoint(String uid) =>
    "users/update-user-questionnaires/$uid";
const String getUserDataEndpoint = "users/get-own-profile";
String updateSleepDataEndpoint(String id) => "users/update-sleep/$id";
const String weightRecomender = "users/weight-recomender";
//! food
const String getfoodListEndpoint = "users/get-foodData-new";
String updateFoodItems(String id) => "users/update-foodData/$id";
String deleteFoodItems(String id) => "users/delete-foodData/$id";
const String createFoodItems = "users/add-foodData-new";
String searchfood(String key) => "users/food-search-new/$key";
//! activity
const String getActivityListEndpoint = "users/all-activity";
String updateActivityItems(String id) => "users/update-activity/$id";
String deleteActivityItems(String id) => "users/delete-activity/$id";
const String createActivityItems = "users/activity-add";
String searchActivityurl = "users/activity-search-new";
String getActivityTypeurl = "users/get-all-activity-type";
String searchActivityAllListUrl = "users/activity-list-search";
String caloryCalculationUrl = "users/calory-calculation";
String recomendedActivityUrl = "users/recomended-activity";
