import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Resources/colors.dart';
import 'package:whatsapp_clone/widgets/contact_list.dart';

class MobileScreen extends StatelessWidget {
  const MobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: appBarColor,
          title: const Text("Whatsapp"),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert),
            ),
          ],
          bottom: const TabBar(
            indicatorColor: tabColor,
            labelColor: tabColor,
            tabs: [
              Tab(
                child: Text(
                  "CHATS",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              Tab(
                child: Text(
                  "STATUS",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              Tab(
                child: Text(
                  "CALLS",
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ],
          ),
        ),
        body: const ContactList(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: tabColor,
          child: const Icon(
            Icons.comment,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
