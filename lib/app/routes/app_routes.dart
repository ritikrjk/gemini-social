part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const HOME = _Paths.HOME;
  static const FEED = _Paths.FEED;
  static const SIGNIN = _Paths.SIGNIN;
  static const CREATE_ACCOUNT = _Paths.CREATE_ACCOUNT;
  static const FORGOT_PASSWORD = _Paths.FORGOT_PASSWORD;
  static const VERIFY_ACCOUNT = _Paths.VERIFY_ACCOUNT;
  static const NEW_POST = _Paths.NEW_POST;
  static const POST_DETAIL = _Paths.POST_DETAIL;
  static const EDIT_PROFILE = _Paths.EDIT_PROFILE;
  static const SETTINGS = _Paths.SETTINGS;
  static const FOLLOWERS = _Paths.FOLLOWERS;
}

abstract class _Paths {
  _Paths._();
  static const HOME = '/home';
  static const FEED = '/feed';
  static const SIGNIN = '/signin';
  static const CREATE_ACCOUNT = '/create-account';
  static const FORGOT_PASSWORD = '/forgot-password';
  static const VERIFY_ACCOUNT = '/verify-account';
  static const NEW_POST = '/new-post';
  static const POST_DETAIL = '/post-detail';
  static const EDIT_PROFILE = '/edit-profile';
  static const SETTINGS = '/settings';
  static const FOLLOWERS = '/followers';
}
