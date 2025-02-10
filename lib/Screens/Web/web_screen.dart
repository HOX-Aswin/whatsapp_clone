import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Resources/colors.dart';
import 'package:whatsapp_clone/Screens/Web/web_chat_app_bar.dart';
import 'package:whatsapp_clone/Screens/Web/web_message_bar.dart';
import 'package:whatsapp_clone/Screens/Web/web_profile_bar.dart';
import 'package:whatsapp_clone/Screens/Web/web_search_bar.dart';
import 'package:whatsapp_clone/widgets/chat_list.dart';
import 'package:whatsapp_clone/widgets/contact_list.dart';

class WebScreen extends StatelessWidget {
  const WebScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  WebProfileBar(),
                  WebSearchBar(),
                  ContactList(),
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.75,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/backgroundImage.png",
                ),
                fit: BoxFit.cover,
              ),
              border: Border(
                left: BorderSide(color: dividerColor),
              ),
            ),
            child: const Column(
              children: [
                WebChatAppBar(),
                ChatList(),
                WebMessageBar(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
