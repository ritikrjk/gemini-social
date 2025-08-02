import 'package:get/get.dart';
import '../models/post_model.dart';

class FeedController extends GetxController {
  final posts = <Post>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchPosts();
  }

  void fetchPosts() {
    // In a real app, you would fetch this data from an API
    posts.assignAll([
      Post(
        username: 'John Doe',
        userImageUrl: 'https://randomuser.me/api/portraits/men/1.jpg',
        postImageUrl: 'https://picsum.photos/seed/1/600/400',
        caption: 'This is a beautiful landscape!',
        likeCount: 123,
        commentCount: 45,
      ),
      Post(
        username: 'Jane Smith',
        userImageUrl: 'https://randomuser.me/api/portraits/women/2.jpg',
        postImageUrl: 'https://picsum.photos/seed/2/600/400',
        caption: 'Enjoying the sunset.',
        likeCount: 234,
        commentCount: 67,
      ),
      Post(
        username: 'Peter Jones',
        userImageUrl: 'https://randomuser.me/api/portraits/men/3.jpg',
        postImageUrl: 'https://picsum.photos/seed/3/600/400',
        caption: 'My new puppy!',
        likeCount: 543,
        commentCount: 123,
      ),
    ]);
  }
}
