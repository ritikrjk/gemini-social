class PostModel {
  final String id;
  final String userName;
  final String userAvatar;
  final String content;
  final String imageUrl;
  final String timeAgo;
  final int likes;
  final int comments;
  final int shares;

  PostModel({
    required this.id,
    required this.userName,
    required this.userAvatar,
    required this.content,
    required this.imageUrl,
    required this.timeAgo,
    required this.likes,
    required this.comments,
    required this.shares,
  });
}