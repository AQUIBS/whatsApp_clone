import 'package:flutter/material.dart';
import 'package:whatsapp_clone/constants/colors.dart';
import 'package:whatsapp_clone/views/%20mobile/mobile_view.dart';
import 'package:whatsapp_clone/views/reponsive/responsive_layout.dart';
import 'package:whatsapp_clone/views/web/web_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp Clone',
      theme: ThemeData.dark()
          .copyWith(scaffoldBackgroundColor: AppColor.backgroundColor),
      home: const ResponsiveLayout(
        mobileView: MobileDashBoardView(),
        webView: WebDashBoardView(),
      ),
    );
  }
}
