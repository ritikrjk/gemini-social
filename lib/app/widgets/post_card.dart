import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gemini_social/app/data/models/post_model.dart';
import 'package:gemini_social/app/routes/app_pages.dart';
import 'package:get/get.dart';

class PostCard extends StatelessWidget {
  final PostModel post;
  static const int _maxLines = 3;
  static const int _maxLength = 150;

  const PostCard({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return InkWell(
      onTap: () {
        Get.toNamed(Routes.POST_DETAIL, arguments: post);
      },
      child: Card(
        clipBehavior: Clip.antiAlias,
        margin: EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.w),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
        elevation: 0.5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(post.userAvatar),
              ),
              title: Text(
                post.userName,
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(post.timeAgo, style: theme.textTheme.bodySmall),
              trailing: IconButton(
                onPressed: () {
                  // TODO: Implement more options logic
                },
                icon: const Icon(Icons.more_horiz),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(16.w, 0, 16.w, 12.h),
              child: _buildContent(context, post.content),
            ),
            if (post.imageUrl.isNotEmpty)
              Image.network(
                post.imageUrl,
                fit: BoxFit.cover,
                width: double.infinity,
                height: 250.h,
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  return Container(
                    height: 250.h,
                    color: Colors.grey[200],
                    child: Center(
                      child: CircularProgressIndicator(
                        value: loadingProgress.expectedTotalBytes != null
                            ? loadingProgress.cumulativeBytesLoaded /
                                loadingProgress.expectedTotalBytes!
                            : null,
                      ),
                    ),
                  );
                },
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    height: 250.h,
                    width: double.infinity,
                    color: Colors.grey[200],
                    child: const Icon(
                      Icons.image_not_supported,
                      color: Colors.grey,
                    ),
                  );
                },
              ),
            _buildStatsRow(context, post),
            SizedBox(height: 4.h),
            _buildActionButtons(context),
            SizedBox(height: 4.h),
          ],
        ),
      ),
    );
  }

  Widget _buildContent(BuildContext context, String content) {
    final theme = Theme.of(context);
    final textStyle = theme.textTheme.bodyLarge;

    return LayoutBuilder(builder: (context, constraints) {
      final textSpan = TextSpan(text: content, style: textStyle);
      final textPainter = TextPainter(
        text: textSpan,
        maxLines: _maxLines,
        textDirection: TextDirection.ltr,
      );
      textPainter.layout(maxWidth: constraints.maxWidth);

      if (textPainter.didExceedMaxLines || content.length > _maxLength) {
        final truncatedText = content.substring(
            0, content.length > _maxLength ? _maxLength : content.length);
        return RichText(
          text: TextSpan(
            style: textStyle,
            children: [
              TextSpan(text: '$truncatedText... '),
              TextSpan(
                text: 'More',
                style: textStyle?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: theme.primaryColor,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    Get.toNamed(Routes.POST_DETAIL, arguments: post);
                  },
              ),
            ],
          ),
        );
      }

      return Text(content, style: textStyle);
    });
  }

  Widget _buildStatsRow(BuildContext context, PostModel post) {
    final theme = Theme.of(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      child: Row(
        children: [
          Text('${post.likes} Likes', style: theme.textTheme.bodySmall),
          SizedBox(width: 16.w),
          Text('${post.comments} Comments', style: theme.textTheme.bodySmall),
        ],
      ),
    );
  }

  Widget _buildActionButtons(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildActionButton(
          context: context,
          icon: Icons.thumb_up_alt_outlined,
          label: 'Like',
          onTap: () {},
        ),
        _buildActionButton(
          context: context,
          icon: Icons.mode_comment_outlined,
          label: 'Comment',
          onTap: () {},
        ),
        _buildActionButton(
          context: context,
          icon: Icons.share_outlined,
          label: 'Share',
          onTap: () {},
        ),
      ],
    );
  }

  Widget _buildActionButton({
    required BuildContext context,
    required IconData icon,
    required String label,
    required VoidCallback onTap,
  }) {
    final theme = Theme.of(context);
    return TextButton.icon(
      onPressed: onTap,
      icon: Icon(icon, size: 20.sp),
      label: Text(label),
      style: TextButton.styleFrom(
        foregroundColor: theme.textTheme.bodyMedium?.color?.withOpacity(0.8),
      ),
    );
  }
}
