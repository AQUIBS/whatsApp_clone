import 'package:flutter/material.dart';
import 'package:whatsapp_clone/views/dashboad.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp Clone',
      theme: ThemeData(primaryColor: const Color(0xFF1F301E)),
      home: const ChatDashBoardView(),
    );
  }
}
