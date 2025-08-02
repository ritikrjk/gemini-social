import 'package:flutter/material.dart';
import '../models/post_model.dart';

class PostCard extends StatelessWidget {
  final Post post;

  const PostCard({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(post.userImageUrl),
                ),
                SizedBox(width: 8.0),
                Text(
                  post.username,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Image.network(post.postImageUrl),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(post.caption),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.favorite_border),
                    SizedBox(width: 4.0),
                    Text(post.likeCount.toString()),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.comment_outlined),
                    SizedBox(width: 4.0),
                    Text(post.commentCount.toString()),
                  ],
                ),
                Icon(Icons.send_outlined),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
