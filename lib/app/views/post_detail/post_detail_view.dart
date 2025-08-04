
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gemini_social/app/models/post_model.dart';
import 'package:gemini_social/app/widgets/post_card.dart';

class PostDetailView extends StatelessWidget {
  const PostDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    final PostModel post = Get.arguments as PostModel;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Post'),
      ),
      body: SingleChildScrollView(
        child: PostCard(post: post),
      ),
    );
  }
}
