
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class FollowersView extends StatelessWidget {
  const FollowersView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Followers'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Followers'),
              Tab(text: 'Following'),
            ],
          ),
        ),
        body: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth > 600.w) {
              return const Row(
                children: [
                  SizedBox(
                    width: 300,
                    child: FollowerList(),
                  ),
                  VerticalDivider(),
                  Expanded(
                    child: FollowerDetail(),
                  ),
                ],
              );
            } else {
              return const FollowerList();
            }
          },
        ),
      ),
    );
  }
}

class FollowerList extends StatelessWidget {
  const FollowerList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return ListTile(
          leading: const CircleAvatar(
            backgroundImage: NetworkImage('https://i.pravatar.cc/150'),
          ),
          title: const Text('User Name'),
          subtitle: const Text('@username'),
          trailing: ElevatedButton(
            onPressed: () {},
            child: const Text('Follow'),
          ),
          onTap: () {
            if (ScreenUtil().screenWidth <= 600.w) {
              Get.to(() => const FollowerDetail());
            }
          },
        );
      },
    );
  }
}

class FollowerDetail extends StatelessWidget {
  const FollowerDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Follower Detail'),
    );
  }
}
