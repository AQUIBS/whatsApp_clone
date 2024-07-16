import 'package:flutter/material.dart';

class WebDashBoardView extends StatefulWidget {
  const WebDashBoardView({super.key});

  @override
  State<WebDashBoardView> createState() => _WebDashBoardViewState();
}

class _WebDashBoardViewState extends State<WebDashBoardView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: const Text(
          "This is Web View",
          style: TextStyle(fontSize: 32),
        ),
      ),
    );
  }
}
