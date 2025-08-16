import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gemini_social/app/bindings/auth/auth_binding.dart';
import 'package:gemini_social/app/bindings/feed/feed_binding.dart';
import 'package:gemini_social/app/bindings/home/home_binding.dart';
import 'package:get/get.dart';
import 'app/core/theme/app_theme.dart';
import 'app/routes/app_pages.dart';

void main() {
  runApp(
    ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          initialBinding: GlobalBindings(),
          title: "Gemini Social",
          initialRoute: AppPages.INITIAL,
          getPages: AppPages.routes,
          theme: AppTheme.theme,
          home: child,
        );
      },
    ),
  );
}

class GlobalBindings extends Bindings {
  @override
  void dependencies() {
    AuthBinding().dependencies();
    FeedBinding().dependencies();
    HomeBinding().dependencies();
  }
}
