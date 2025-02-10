import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Resources/colors.dart';

class WebSearchBar extends StatelessWidget {
  const WebSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
      height: MediaQuery.of(context).size.height * 0.07,
      width: MediaQuery.of(context).size.width * 0.25,
      decoration: const BoxDecoration(
        color: backgroundColor,
        border: Border(
          bottom: BorderSide(color: dividerColor),
        ),
      ),
      child: const TextField(
        decoration: InputDecoration(
            prefixIcon: Padding(
              padding: EdgeInsets.only(
                left: 5,
                right: 15,
              ),
              child: Icon(
                Icons.search,
              ),
            ),
            hintText: "Enter name here",
            hintStyle: TextStyle(fontSize: 14),
            fillColor: searchBarColor,
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
              borderSide: BorderSide(
                width: 0,
                style: BorderStyle.none,
              ),
            ),
            contentPadding: EdgeInsets.all(10)),
      ),
    );
  }
}
