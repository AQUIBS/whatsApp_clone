import 'package:flutter/material.dart';
import 'package:whatsapp_clone/constants/colors.dart';

PreferredSizeWidget mobileChatAppBar() {
  return AppBar(
    backgroundColor: AppColor.appBarColor,
    centerTitle: true,
    title: const Text(
      "AQUIB S",
      style: TextStyle(fontSize: 16, color: AppColor.textColor),
    ),
    actions: [
      IconButton(
          onPressed: () {},
          icon: const Icon(Icons.call, color: AppColor.defaultIconsColor)),
      IconButton(
          onPressed: () {},
          icon: const Icon(Icons.more_vert, color: AppColor.defaultIconsColor))
    ],
  );
}
