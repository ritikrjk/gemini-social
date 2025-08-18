import 'package:get/get.dart';
import 'package:gemini_social/app/data/models/comment_model.dart';
import 'package:gemini_social/app/data/models/post_model.dart';

class PostDetailController extends GetxController {
  // The post would typically be passed in via arguments, e.g., Get.arguments
  late final PostModel post;

  final comments = <CommentModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    // Dummy post data for demonstration
    post = PostModel(
      id: '1',
      userName: 'John Doe',
      userAvatar:
          'https://randomuser.me/api/portraits/men/1.jpg',
      content: 'This is a beautiful photo from my recent trip to the mountains! The scenery was absolutely breathtaking.',
      imageUrl:
          'https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0',
      timeAgo: '2h ago',
      likes: 128,
      comments: 12,
      shares: 5,
    );

    // Fetch comments or use dummy data
    fetchComments();
  }

  void fetchComments() {
    // In a real app, you would fetch this from your backend
    final dummyComments = [
      CommentModel(
        id: '1',
        userName: 'Jane Smith',
        userAvatar:
            'https://randomuser.me/api/portraits/women/2.jpg',
        content: 'Wow, amazing shot! Where was this taken?',
        timeAgo: '1h ago',
      ),
      CommentModel(
        id: '2',
        userName: 'Mike Johnson',
        userAvatar:
            'https://randomuser.me/api/portraits/men/3.jpg',
        content: 'I love the colors in this photo. Great job!',
        timeAgo: '45m ago',
      ),
      CommentModel(
        id: '3',
        userName: 'Sarah Williams',
        userAvatar:
            'https://randomuser.me/api/portraits/women/4.jpg',
        content: 'Absolutely stunning! Makes me want to go there.',
        timeAgo: '30m ago',
      ),
    ];

    comments.assignAll(dummyComments);
  }

  void addComment(String content) {
    if (content.isEmpty) return;

    final newComment = CommentModel(
      id: (comments.length + 1).toString(),
      userName: 'You', // In a real app, get the current user's name
      userAvatar:
          'https://randomuser.me/api/portraits/men/5.jpg', // And avatar
      content: content,
      timeAgo: 'Just now',
    );
    comments.add(newComment);
  }
}
