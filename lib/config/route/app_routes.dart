import 'package:get/get.dart';
import 'package:new_untitled/component/bottom_nav_bar/common_bottom_bar.dart';
import 'package:new_untitled/features/auth/sign%20in/presentation/screen/sign_in_with_category_screen.dart';
import 'package:new_untitled/features/category_dash_board/expert/expert_bottom_nav/chat_bot_screen/expert_chat_bot_screen.dart';
import 'package:new_untitled/features/category_dash_board/expert/expert_bottom_nav/expert_bottom_nav_screen.dart';
import 'package:new_untitled/features/category_dash_board/expert/expert_bottom_nav/important_articles_screen/expert_important_articles_screen.dart';
import 'package:new_untitled/features/category_dash_board/expert/expert_bottom_nav/library_screen/expert_library_screen.dart';
import 'package:new_untitled/features/category_dash_board/expert/expert_bottom_nav/profile_screen/profile_screen.dart';
import 'package:new_untitled/features/category_dash_board/expert/home/expert_home_screen.dart';
import 'package:new_untitled/features/category_dash_board/expert/payment_screen/bil_plan_screen.dart';
import 'package:new_untitled/features/category_dash_board/expert/expert_auth/expert_auth_scren/expert_information_upload_screen.dart';
import 'package:new_untitled/features/category_dash_board/expert/expert_auth/expert_auth_scren/expert_sign_up_screen.dart';
import 'package:new_untitled/features/category_dash_board/expert/expert_auth/expert_auth_scren/file_scan_screen.dart';
import 'package:new_untitled/features/category_dash_board/expert/payment_screen/pay_confirmation_screen.dart';
import 'package:new_untitled/features/category_dash_board/expert/payment_screen/payment_loading_screen.dart';
import 'package:new_untitled/features/category_dash_board/expert/payment_screen/payment_method_screen.dart';
import 'package:new_untitled/features/category_dash_board/expert/payment_screen/pending_validation_screen.dart';
import '../../features/auth/change_password/presentation/screen/change_password_screen.dart';
import '../../features/auth/forgot password/presentation/screen/create_password.dart';
import '../../features/auth/forgot password/presentation/screen/forgot_password.dart';
import '../../features/auth/forgot password/presentation/screen/verify_screen.dart';
import '../../features/auth/sign in/presentation/screen/sign_in_screen.dart';
import '../../features/auth/sign up/presentation/screen/sign_up_screen.dart';
import '../../features/auth/sign up/presentation/screen/sign_up_with_category_screen.dart';
import '../../features/auth/sign up/presentation/screen/verify_user.dart';
import '../../features/message/presentation/screen/chat_screen.dart';
import '../../features/message/presentation/screen/message_screen.dart';
import '../../features/notifications/presentation/screen/notifications_screen.dart';
import '../../features/onboarding_screen/onboarding_screen.dart';
import '../../features/profile/presentation/screen/edit_profile.dart';
import '../../features/profile/presentation/screen/profile_screen.dart';
import '../../features/setting/presentation/screen/privacy_policy_screen.dart';
import '../../features/setting/presentation/screen/setting_screen.dart';
import '../../features/setting/presentation/screen/terms_of_services_screen.dart';
import '../../features/splash/splash_screen.dart';

class AppRoutes {

  static const String splash = "/splash_screen.dart";
  static const String onboarding = "/onboarding_screen.dart";
  static const String signUp = "/sign_up_screen.dart";
  static const String verifyUser = "/verify_user.dart";
  static const String signIn = "/sign_in_screen.dart";
  static const String forgotPassword = "/forgot_password.dart";
  static const String verifyEmail = "/verify_screen.dart";
  static const String createPassword = "/create_password.dart";
  static const String changePassword = "/change_password_screen.dart";
  static const String notifications = "/notifications_screen.dart";
  static const String chat = "/chat_screen.dart";
  static const String message = "/message_screen.dart";
  static const String profile = "/profile_screen.dart";
  static const String editProfile = "/edit_profile.dart";
  static const String privacyPolicy = "/privacy_policy_screen.dart";
  static const String termsOfServices = "/terms_of_services_screen.dart";
  static const String setting = "/setting_screen.dart";






  static const String signInWithCategoryScreen = "/sign_in_with_category_screen.dart";
  static const String signUpWithCategoryScreen = "/sign_up_with_category_screen.dart";
  static const String expertSignUpScreen = "/expert_sign_up_screen.dart";
  static const String expertInformationUploadScreen = "/expert_information_upload_screen.dart";
  static const String fileScanScreen = "/file_scan_screen.dart";
  static const String bill_plan_screen = "/bill_plan_screen.dart";
  static const String payment_method_screen = "/payment_method_screen.dart";
  static const String pay_confirmation_screen = "/pay_confirmation_screen.dart";
  static const String paymentLoadingScreen = "/payment_loading_screen.dart";
  static const String pendingValidationScreen = "/pending_validation_screen.dart";
  static const String expertHomeScreen = "/expert_home_screen.dart";
  static const String expertChatBotScreen = "/expert_chat_bot_screen.dart";
  static const String expertImportantArticlesScreen = "/expert_important_articles_screen.dart";
  static const String expertLibraryScreen = "/expert_library_screen.dart";
  static const String expertProfileScreen = "/expert_profile_screen.dart";
  static const String expertBottomNavScreen = "/expert_bottom_nav_screen.dart";





  static List<GetPage> routes = [
    GetPage(name: splash, page: () => const SplashScreen()),
    GetPage(name: onboarding, page: () => const OnboardingScreen()),
    GetPage(name: signUp, page: () => SignUpScreen()),
    GetPage(name: verifyUser, page: () => const VerifyUser()),
    GetPage(name: signIn, page: () => SignInScreen()),
    GetPage(name: forgotPassword, page: () => ForgotPasswordScreen()),
    GetPage(name: verifyEmail, page: () => const VerifyScreen()),
    GetPage(name: createPassword, page: () => CreatePassword()),
    GetPage(name: changePassword, page: () => ChangePasswordScreen()),
    GetPage(name: notifications, page: () => const NotificationScreen()),
    GetPage(name: chat, page: () => const ChatListScreen()),
    GetPage(name: message, page: () => const MessageScreen()),
    GetPage(name: profile, page: () => const ProfileScreen()),
    GetPage(name: editProfile, page: () => EditProfile()),
    GetPage(name: privacyPolicy, page: () => const PrivacyPolicyScreen()),
    GetPage(name: termsOfServices, page: () => const TermsOfServicesScreen()),
    GetPage(name: setting, page: () => const SettingScreen()),



    ///-------------------------------------------Expert Routes-----------------

    GetPage(name: signInWithCategoryScreen, page: () => const SignInWithCategoryScreen()),
    GetPage(name: signUpWithCategoryScreen, page: () => const SignUpWithCategoryScreen()),
    GetPage(name: expertSignUpScreen, page: () => const ExpertSignUpScreen()),
    GetPage(name: expertSignUpScreen, page: () => const ExpertSignUpScreen()),
    GetPage(name: expertInformationUploadScreen, page: () => const ExpertInformationUploadScreen()),
    GetPage(name: fileScanScreen, page: () => const FileScanScreen()),
    GetPage(name: bill_plan_screen, page: () => const BilPlanScreen()),
    GetPage(name: payment_method_screen, page: () => PaymentMethodScreen()),
    GetPage(name: pay_confirmation_screen, page: () => PayConfirmationScreen()),
    GetPage(name: paymentLoadingScreen, page: () => PaymentLoadingScreen()),
    GetPage(name: pendingValidationScreen, page: () => PendingValidationScreen()),
    GetPage(name: expertHomeScreen, page: () => ExpertHomeScreen()),
    GetPage(name: expertChatBotScreen, page: () => ExpertChatBotScreen()),
    GetPage(name: expertLibraryScreen, page: () => ExpertLibraryScreen()),
    GetPage(name: expertImportantArticlesScreen, page: () => ExpertImportantArticlesScreen()),
    GetPage(name: expertProfileScreen, page: () => ExpertProfileScreen()),
    GetPage(name: expertChatBotScreen, page: () => ExpertChatBotScreen()),
   GetPage(name: expertBottomNavScreen, page: () => ExpertBottomNavScreen())


  ];
}
