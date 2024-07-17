import 'package:flutter/material.dart';
import 'package:whatsapp_clone/constants/colors.dart';

class ChatTile extends StatelessWidget {
  final String chat;
  final bool self;

  const ChatTile({
    super.key,
    required this.chat,
    required this.self,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: self ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        width: chat.length >= 20 ? 220 : null,
        margin: const EdgeInsets.only(bottom: 5),
        padding: const EdgeInsets.all(9),
        decoration: BoxDecoration(
            color: self ? AppColor.messageColor : AppColor.senderMessageColor,
            borderRadius: BorderRadius.circular(7)),
        child: Column(
          children: [
            Text(
              chat,
              style: const TextStyle(color: Colors.white, fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
