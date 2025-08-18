import 'package:get/get.dart';
import 'package:gemini_social/app/data/models/post_model.dart';

class FeedController extends GetxController {
  final posts = <PostModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchPosts();
  }

  void fetchPosts() {
    // Simulate fetching posts from an API
    final dummyPosts = [
      PostModel(
        id: '1',
        userName: 'John Doe',
        userAvatar: 'https://i.pravatar.cc/150?u=1',
        content: 'Just enjoying a beautiful sunset! #nature #blessed',
        imageUrl: 'https://picsum.photos/seed/1/400/300',
        timeAgo: '2h ago',
        likes: 1234,
        comments: 345,
        shares: 123,
      ),
      PostModel(
        id: '2',
        userName: 'Jane Smith',
        userAvatar: 'https://i.pravatar.cc/150?u=2',
        content: 'My new Flutter project is coming along nicely! #flutterdev #coding',
        imageUrl: 'https://picsum.photos/seed/2/400/300',
        timeAgo: '5h ago',
        likes: 567,
        comments: 89,
        shares: 45,
      ),
      PostModel(
        id: '3',
        userName: 'AI Enthusiast',
        userAvatar: 'https://i.pravatar.cc/150?u=3',
        content: 'Gemini is a game-changer for developers. The possibilities are endless.',
        imageUrl: 'https://picsum.photos/seed/3/400/300',
        timeAgo: '1d ago',
        likes: 8910,
        comments: 1200,
        shares: 500,
      ),
    ];
    posts.assignAll(dummyPosts);
  }
}