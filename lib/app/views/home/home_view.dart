import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gemini_social/app/controllers/home_controller.dart';
import 'package:gemini_social/app/views/feed/feed_view.dart';
import 'package:gemini_social/app/views/chats/chats_view.dart';
import 'package:gemini_social/app/views/notifications/notifications_view.dart';
import 'package:gemini_social/app/views/profile/profile_view.dart';
import 'package:gemini_social/app/widgets/bottom_nav_bar.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller.pageController,
        onPageChanged: (index) {
          // This is handled by the controller, but you could add logic here if needed
        },
        children: const [
          FeedView(),
          ChatsView(),
          NotificationsView(),
          ProfileView(),
        ],
      ),
      bottomNavigationBar: Obx(
        () => BottomNavBar(
          selectedIndex: controller.selectedIndex,
          onItemTapped: controller.onItemTapped,
        ),
      ),
    );
  }
}
