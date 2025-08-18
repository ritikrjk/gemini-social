import 'package:gemini_social/app/bindings/post_detail/post_detail_binding.dart';
import 'package:get/get.dart';

import '../views/home/home_view.dart';
import '../bindings/home/home_binding.dart';
import '../views/feed/feed_view.dart';
import '../bindings/feed/feed_binding.dart';
import '../views/auth/signin_view.dart';
import '../views/auth/create_account_view.dart';
import '../views/auth/forgot_password_view.dart';
import '../views/auth/verify_account_view.dart';
import '../bindings/auth/auth_binding.dart';
import '../views/new_post/new_post_view.dart';
import '../views/post_detail/post_detail_view.dart';
import '../views/edit_profile/edit_profile_view.dart';
import '../views/settings/settings_view.dart';
import '../views/followers/followers_view.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.SIGNIN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.FEED,
      page: () => const FeedView(),
      binding: FeedBinding(),
    ),
    GetPage(
      name: _Paths.SIGNIN,
      page: () => const SignInView(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: _Paths.CREATE_ACCOUNT,
      page: () => const CreateAccountView(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: _Paths.FORGOT_PASSWORD,
      page: () => const ForgotPasswordView(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: _Paths.VERIFY_ACCOUNT,
      page: () => const VerifyAccountView(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: _Paths.NEW_POST,
      page: () => const NewPostView(),
    ),
    GetPage(
      name: _Paths.POST_DETAIL,
      page: () => const PostDetailView(),
      binding: PostDetailBinding(),
    ),
    GetPage(
      name: _Paths.EDIT_PROFILE,
      page: () => const EditProfileView(),
    ),
    GetPage(
      name: _Paths.SETTINGS,
      page: () => const SettingsView(),
    ),
    GetPage(
      name: _Paths.FOLLOWERS,
      page: () => const FollowersView(),
    ),
  ];
}
