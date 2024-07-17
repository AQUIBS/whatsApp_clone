import 'package:flutter/material.dart';
import 'package:whatsapp_clone/constants/colors.dart';

class MobileChatTextBar extends StatefulWidget {
  const MobileChatTextBar({super.key});

  @override
  State<MobileChatTextBar> createState() => _MobileChatTextBarState();
}

class _MobileChatTextBarState extends State<MobileChatTextBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 60,
      child: Row(
        children: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.emoji_emotions_outlined)),
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
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.mic, color: AppColor.defaultIconsColor)),
        ],
      ),
    );
  }
}
