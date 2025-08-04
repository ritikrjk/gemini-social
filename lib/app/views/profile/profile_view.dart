
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        actions: [
          IconButton(
            onPressed: () { // TODO: Implement logic
              Get.toNamed('/settings');
            },
            icon: const Icon(Icons.settings_outlined),
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
            const Text(
              'John Doe',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.h),
            const Text(
              '@johndoe',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            SizedBox(height: 16.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildStatColumn('Posts', '123'),
                _buildStatColumn('Followers', '45.6k'),
                _buildStatColumn('Following', '789'),
              ],
            ),
            SizedBox(height: 16.h),
            ElevatedButton(
              onPressed: () { // TODO: Implement logic
                Get.toNamed('/edit-profile');
              },
              child: const Text('Edit Profile'),
            ),
            SizedBox(height: 16.h),
            LayoutBuilder(
              builder: (context, constraints) {
                if (constraints.maxWidth > 600.w) {
                  return GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 3,
                    ),
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return _buildSettingsTile(index);
                    },
                  );
                } else {
                  return ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return _buildSettingsTile(index);
                    },
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatColumn(String label, String value) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Text(
          label,
          style: const TextStyle(fontSize: 14, color: Colors.grey),
        ),
      ],
    );
  }

  Widget _buildSettingsTile(int index) {
    final items = [
      {'icon': Icons.bookmark_border, 'title': 'Saved Posts'},
      {'icon': Icons.history, 'title': 'Activity History'},
      {'icon': Icons.qr_code, 'title': 'QR Code'},
      {'icon': Icons.security, 'title': 'Security'},
      {'icon': Icons.help_outline, 'title': 'Help'},
      {'icon': Icons.info_outline, 'title': 'About'},
    ];

    return ListTile(
      leading: Icon(items[index]['icon'] as IconData),
      title: Text(items[index]['title'] as String),
      trailing: const Icon(Icons.chevron_right),
      onTap: () { // TODO: Implement logic
      },
    );
  }
}
