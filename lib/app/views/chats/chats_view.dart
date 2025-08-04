
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:gemini_social/app/views/chat_detail/chat_detail_view.dart';

class ChatsView extends StatelessWidget {
  const ChatsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chats'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 600.w) {
            return const Row(
              children: [
                SizedBox(
                  width: 300,
                  child: ChatList(),
                ),
                VerticalDivider(),
                Expanded(
                  child: ChatDetailView(),
                ),
              ],
            );
          } else {
            return const ChatList();
          }
        },
      ),
    );
  }
}

class ChatList extends StatelessWidget {
  const ChatList({super.key});

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
          subtitle: const Text('Last message...'),
          onTap: () {
            if (ScreenUtil().screenWidth <= 600.w) {
              Get.to(() => const ChatDetailView());
            }
          },
        );
      },
    );
  }
}
