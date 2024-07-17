import 'package:flutter/material.dart';
import 'package:whatsapp_clone/constants/colors.dart';

class WebChatTextBar extends StatefulWidget {
  const WebChatTextBar({super.key});

  @override
  State<WebChatTextBar> createState() => _WebChatTextBarState();
}

class _WebChatTextBarState extends State<WebChatTextBar> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width * 0.70,
        decoration: const BoxDecoration(color: AppColor.chatBarMessage),
        child: Row(
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.emoji_emotions_outlined,
                    color: AppColor.defaultIconsColor)),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.attach_file,
                    color: AppColor.defaultIconsColor)),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TextFormField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 20),
                    filled: true,
                    fillColor: AppColor.searchBarColor,
                    hintText: "Type a message",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: IconButton(
                  onPressed: () {},
                  icon:
                      const Icon(Icons.mic, color: AppColor.defaultIconsColor)),
            ),
          ],
        ),
      ),
    );
  }
}
