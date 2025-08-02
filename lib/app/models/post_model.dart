class Post {
  final String username;
  final String userImageUrl;
  final String postImageUrl;
  final String caption;
  final int likeCount;
  final int commentCount;

  Post({
    required this.username,
    required this.userImageUrl,
    required this.postImageUrl,
    required this.caption,
    required this.likeCount,
    required this.commentCount,
  });
}
