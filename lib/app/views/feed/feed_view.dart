import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:gemini_social/app/controllers/feed/feed_controller.dart';
import 'package:gemini_social/app/widgets/post_card.dart';

class FeedView extends GetView<FeedController> {
  const FeedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Feed')),
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          final isTablet = constraints.maxWidth > 600.w;
          return Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: isTablet ? 600.w : double.infinity,
              ),
              child: Obx(
                () => ListView.builder(
                  itemCount: controller.posts.length,
                  itemBuilder: (context, index) {
                    final post = controller.posts[index];
                    return PostCard(post: post);
                  },
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
