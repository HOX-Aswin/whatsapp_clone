import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Resources/colors.dart';
import 'package:whatsapp_clone/Resources/info.dart';
import 'package:whatsapp_clone/Screens/Mobile/mobile_message_bar.dart';
import 'package:whatsapp_clone/widgets/chat_list.dart';

class MobileChatPage extends StatelessWidget {
  const MobileChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text(info[0]['name'].toString()),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.call)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.video_call)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
        ],
      ),
      body: const Column(
        children: [
          Expanded(
            child: ChatList(),
          ),
          MobileMessageBar(),
        ],
      ),
    );
  }
}
