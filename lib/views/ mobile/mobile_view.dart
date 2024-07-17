import 'package:flutter/material.dart';
import 'package:whatsapp_clone/constants/colors.dart';
import 'package:whatsapp_clone/views/widgets/constact_list_view.dart';

class MobileDashBoardView extends StatefulWidget {
  const MobileDashBoardView({super.key});

  @override
  State<MobileDashBoardView> createState() => _MobileDashBoardViewState();
}

class _MobileDashBoardViewState extends State<MobileDashBoardView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: AppColor.appBarColor,
            elevation: 0,
            centerTitle: false,
            title: const Text("WhatsApp",
                style: TextStyle(color: AppColor.defaultIconsColor)),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                    color: AppColor.defaultIconsColor,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.more_vert,
                    color: AppColor.defaultIconsColor,
                  )),
            ],
            bottom: const TabBar(
              labelStyle: TextStyle(fontWeight: FontWeight.bold),
              indicatorWeight: 4,
              indicatorColor: AppColor.tabColor,
              unselectedLabelColor: AppColor.defaultIconsColor,
              labelColor: AppColor.tabColor,
              tabs: [
                Tab(text: "CHATS"),
                Tab(text: "STATUS"),
                Tab(text: "CALLS"),
              ],
            ),
          ),
          body: const ContactListView(),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: AppColor.tabColor,
            child: const Icon(Icons.comment),
          ),
        ));
  }
}
