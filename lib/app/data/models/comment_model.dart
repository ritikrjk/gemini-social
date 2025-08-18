class CommentModel {
  final String id;
  final String userName;
  final String userAvatar;
  final String content;
  final String timeAgo;

  CommentModel({
    required this.id,
    required this.userName,
    required this.userAvatar,
    required this.content,
    required this.timeAgo,
  });
}
