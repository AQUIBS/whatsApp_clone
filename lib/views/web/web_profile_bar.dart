import 'package:flutter/material.dart';
import 'package:whatsapp_clone/constants/colors.dart';

class WebProfileBar extends StatefulWidget {
  const WebProfileBar({super.key});

  @override
  State<WebProfileBar> createState() => _WebProfileBarState();
}

class _WebProfileBarState extends State<WebProfileBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70, // this height need to be fixed
      width: MediaQuery.of(context).size.width * 0.30,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
          color: AppColor.webAppBarColor,
          border: Border(right: BorderSide(color: AppColor.dividerColor))),
      child: Row(
        children: [
          const CircleAvatar(
            backgroundImage: NetworkImage(
                "https://uploads.dailydot.com/2018/10/olli-the-polite-cat.jpg?auto=compress%2Cformat&ixlib=php-3.3.0"),
            radius: 30,
          ),
          const Spacer(),
          IconButton(
              onPressed: () {},
              icon:
                  const Icon(Icons.comment, color: AppColor.defaultIconsColor)),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert,
                  color: AppColor.defaultIconsColor))
        ],
      ),
    );
  }
}
