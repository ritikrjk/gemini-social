import 'package:get/get.dart';

import '../views/home/home_view.dart';
import '../bindings/home_binding.dart';
import '../views/feed/feed_view.dart';
import '../bindings/feed_binding.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.FEED;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.FEED,
      page: () => FeedView(),
      binding: FeedBinding(),
    ),
  ];
}
