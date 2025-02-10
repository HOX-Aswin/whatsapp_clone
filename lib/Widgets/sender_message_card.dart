import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Resources/colors.dart';

class SenderMessage extends StatelessWidget {
  final String message;
  final String time;
  const SenderMessage({
    super.key,
    required this.message,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width - 50,
        ),
        child: Card(
          elevation: 1,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
          color: senderMessageColor,
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 5,
                  bottom: 20,
                  left: 10,
                  right: 20,
                ),
                child: Text(
                  message,
                  style: const TextStyle(fontSize: 15),
                ),
              ),
              Positioned(
                right: 10,
                bottom: 5,
                child: Text(
                  time,
                  style: const TextStyle(fontSize: 10),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
