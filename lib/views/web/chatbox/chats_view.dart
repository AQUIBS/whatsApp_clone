import 'package:flutter/material.dart';
import 'package:whatsapp_clone/constants/dummies.dart';
import 'package:whatsapp_clone/views/widgets/chat_tile.dart';

class WebChatBoxView extends StatefulWidget {
  const WebChatBoxView({super.key});

  @override
  State<WebChatBoxView> createState() => _WebChatBoxViewState();
}

class _WebChatBoxViewState extends State<WebChatBoxView> {
  @override
  Widget build(BuildContext context) {
    const messages = Dummies.message;
    return SizedBox(
      height: MediaQuery.of(context).size.height - 130,
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
          itemCount: messages.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return ChatTile(
                chat: messages[index]["text"], self: messages[index]["isMe"]);
          }),
    );
  }
}
