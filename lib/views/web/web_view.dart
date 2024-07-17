import 'package:flutter/material.dart';
import 'package:whatsapp_clone/constants/images.dart';
import 'package:whatsapp_clone/views/web/chatbox/chat_appbar.dart';
import 'package:whatsapp_clone/views/web/chatbox/chat_textbar.dart';
import 'package:whatsapp_clone/views/web/chatbox/chats_view.dart';
import 'package:whatsapp_clone/views/web/web_profile_bar.dart';
import 'package:whatsapp_clone/views/web/web_search_bar.dart';
import 'package:whatsapp_clone/views/widgets/constact_list_view.dart';

class WebDashBoardView extends StatefulWidget {
  const WebDashBoardView({super.key});

  @override
  State<WebDashBoardView> createState() => _WebDashBoardViewState();
}

class _WebDashBoardViewState extends State<WebDashBoardView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: [
        Expanded(
            child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: const [
              WebProfileBar(),
              WebSearchBar(),
              ContactListView()
            ],
          ),
        )),
        Container(
          width: MediaQuery.of(context).size.width * 0.70,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage(AppImages.background))),
          child: ListView(
            children: const [
              WebChatAppBar(),
              WebChatBoxView(),
              WebChatTextBar()
            ],
          ),
        ),
      ],
    ));
  }
}
