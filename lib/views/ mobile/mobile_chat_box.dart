import 'package:flutter/material.dart';
import 'package:whatsapp_clone/views/%20mobile/chatbox/chat_appbar.dart';
import 'package:whatsapp_clone/views/%20mobile/chatbox/chat_textbar.dart';
import 'package:whatsapp_clone/views/%20mobile/chatbox/chat_view.dart';

class MobileChatBoxView extends StatefulWidget {
  const MobileChatBoxView({super.key});

  @override
  State<MobileChatBoxView> createState() => _MobileChatBoxViewState();
}

class _MobileChatBoxViewState extends State<MobileChatBoxView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mobileChatAppBar(),
      body: const MobileChatView(),
      bottomSheet: const MobileChatTextBar(),
    );
  }
}
