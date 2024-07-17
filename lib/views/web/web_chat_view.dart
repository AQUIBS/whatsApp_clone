import 'package:flutter/material.dart';
import 'package:whatsapp_clone/constants/colors.dart';
import 'package:whatsapp_clone/constants/dummies.dart';

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
          padding: const EdgeInsets.only(left: 30, top: 10, right: 30),
          itemCount: messages.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return ChatTile(
                chat: messages[index]["text"], self: messages[index]["isMe"]);
          }),
    );
  }
}

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
