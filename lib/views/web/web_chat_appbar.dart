import 'package:flutter/material.dart';
import 'package:whatsapp_clone/constants/colors.dart';

class WebChatAppBar extends StatelessWidget {
  const WebChatAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70, // this height need to be fixed
      width: MediaQuery.of(context).size.width * 0.70,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(color: AppColor.webAppBarColor),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(
                "https://pbs.twimg.com/profile_images/1419974913260232732/Cy_CUavB.jpg"),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.01,
          ),
          const Text(
            "AQUIB S",
            style: TextStyle(fontSize: 18),
          ),
          const Spacer(),
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
        ],
      ),
    );
  }
}
