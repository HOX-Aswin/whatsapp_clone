import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Resources/colors.dart';
import 'package:whatsapp_clone/Resources/info.dart';
import 'package:whatsapp_clone/Screens/Mobile/mobile_chat_screen.dart';

class ContactList extends StatelessWidget {
  const ContactList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: info.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const MobileChatPage(),
                    ),
                  );
                },
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                      info[index]['profilePic'].toString(),
                    ),
                    radius: 30,
                  ),
                  title: Text(
                    info[index]["name"].toString(),
                    style: const TextStyle(fontSize: 22),
                  ),
                  subtitle: Text(
                    info[index]["message"].toString(),
                    style: const TextStyle(fontSize: 18),
                  ),
                  trailing: Text(
                    info[index]["time"].toString(),
                    style: const TextStyle(fontSize: 15),
                  ),
                ),
              ),
              const Divider(
                color: dividerColor,
                indent: 2,
              )
            ],
          );
        },
      ),
    );
  }
}
