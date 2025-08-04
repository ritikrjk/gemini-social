
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class NewPostView extends StatelessWidget {
  const NewPostView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Post'),
        actions: [
          TextButton(
            onPressed: () { // TODO: Implement logic
              Get.back();
            },
            child: const Text('Post'),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  backgroundImage: NetworkImage('https://i.pravatar.cc/150'),
                ),
                SizedBox(width: 12.w),
                Expanded(
                  child: TextFormField(
                    maxLines: 5,
                    decoration: const InputDecoration(
                      hintText: 'What\'s on your mind?',
                      border: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.photo_camera_outlined)),
                IconButton(onPressed: () {}, icon: const Icon(Icons.video_call_outlined)),
                IconButton(onPressed: () {}, icon: const Icon(Icons.poll_outlined)),
                IconButton(onPressed: () {}, icon: const Icon(Icons.location_on_outlined)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
