
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class EditProfileView extends StatelessWidget {
  const EditProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Profile'),
        actions: [
          TextButton(
            onPressed: () { // TODO: Implement logic
              Get.back();
            },
            child: const Text('Save'),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.w),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage('https://i.pravatar.cc/150'),
            ),
            SizedBox(height: 16.h),
            TextFormField(
              initialValue: 'John Doe',
              decoration: const InputDecoration(
                labelText: 'Name',
              ),
            ),
            SizedBox(height: 16.h),
            TextFormField(
              initialValue: '@johndoe',
              decoration: const InputDecoration(
                labelText: 'Username',
              ),
            ),
            SizedBox(height: 16.h),
            TextFormField(
              initialValue: 'I love Flutter and Gemini!',
              decoration: const InputDecoration(
                labelText: 'Bio',
              ),
              maxLines: 3,
            ),
          ],
        ),
      ),
    );
  }
}
