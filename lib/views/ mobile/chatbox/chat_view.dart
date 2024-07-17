import 'package:flutter/material.dart';
import 'package:whatsapp_clone/constants/dummies.dart';
import 'package:whatsapp_clone/views/widgets/chat_tile.dart';

class MobileChatView extends StatefulWidget {
  const MobileChatView({super.key});

  @override
  State<MobileChatView> createState() => _MobileChatViewState();
}

class _MobileChatViewState extends State<MobileChatView> {
  @override
  Widget build(BuildContext context) {
    const messages = Dummies.message;
    return ListView.builder(
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.only(left: 30, top: 10, right: 30),
        itemCount: messages.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return ChatTile(
              chat: messages[index]["text"], self: messages[index]["isMe"]);
        });
  }
}
