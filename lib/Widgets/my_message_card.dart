import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Resources/colors.dart';

class MyMessage extends StatelessWidget {
  final String message;
  final String time;
  const MyMessage({
    super.key,
    required this.message,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width - 50,
        ),
        child: Card(
          elevation: 1,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
          color: messageColor,
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
                child: Row(
                  children: [
                    Text(
                      time,
                      style: const TextStyle(fontSize: 10),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Icon(
                      Icons.done_all,
                      size: 15,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
