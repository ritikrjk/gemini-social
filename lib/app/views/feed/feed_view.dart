import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/feed_controller.dart';
import '../../widgets/post_card.dart';

class FeedView extends GetView<FeedController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feed'),
      ),
      body: Obx(
        () => ListView.builder(
          itemCount: controller.posts.length,
          itemBuilder: (context, index) {
            final post = controller.posts[index];
            return PostCard(post: post);
          },
        ),
      ),
    );
  }
}
