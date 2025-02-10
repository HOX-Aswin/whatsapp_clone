import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Resources/colors.dart';

class WebMessageBar extends StatelessWidget {
  const WebMessageBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: MediaQuery.of(context).size.width * 0.04,
      width: MediaQuery.of(context).size.width * 0.75,
      decoration: const BoxDecoration(
        color: chatBarMessage,
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.emoji_emotions_outlined,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.attach_file,
            ),
          ),
          const Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: TextField(
                decoration: InputDecoration(
                  prefix: SizedBox(
                    width: 5,
                  ),
                  hintText: "Type message here",
                  hintStyle: TextStyle(fontSize: 14),
                  fillColor: searchBarColor,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  contentPadding: EdgeInsets.all(10),
                ),
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.mic,
            ),
          ),
        ],
      ),
    );
  }
}
