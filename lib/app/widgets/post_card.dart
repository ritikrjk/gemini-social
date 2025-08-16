import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gemini_social/app/models/post_model.dart';

class PostCard extends StatelessWidget {
  final PostModel post;

  const PostCard({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.w),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
      elevation: 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(12.w),
            child: Row(
              children: [
                CircleAvatar(backgroundImage: NetworkImage(post.userAvatar)),
                SizedBox(width: 12.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      post.userName,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      post.timeAgo,
                      style: const TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.more_horiz),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: Text(post.content),
          ),
          SizedBox(height: 12.h),
          // Image.network(post.imageUrl),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildIconButton(
                      Icons.favorite_border,
                      post.likes.toString(),
                    ),
                    SizedBox(width: 10.w),
                    _buildIconButton(
                      Icons.mode_comment_outlined,
                      post.comments.toString(),
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.bookmark_outline, color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildIconButton(IconData icon, String text) {
    return Row(
      children: [
        Icon(icon, color: Colors.grey),
        SizedBox(width: 4.w),
        Text(text, style: const TextStyle(color: Colors.grey)),
      ],
    );
  }
}
