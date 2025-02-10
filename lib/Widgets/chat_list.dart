import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Resources/info.dart';
import 'package:whatsapp_clone/widgets/my_message_card.dart';
import 'package:whatsapp_clone/widgets/sender_message_card.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: messages.length,
        itemBuilder: (context, index) {
          if (messages[index]['isMe'] == true) {
            return MyMessage(
              message: messages[index]['text'].toString(),
              time: messages[index]['time'].toString(),
            );
          }
          return SenderMessage(
            message: messages[index]['text'].toString(),
            time: messages[index]['time'].toString(),
          );
        },
      ),
    );
  }
}
