import 'package:flutter/material.dart';

class ResponsiveLayout extends StatefulWidget {
  final Widget mobileView;
  final Widget webView;
  const ResponsiveLayout(
      {super.key, required this.mobileView, required this.webView});

  @override
  State<ResponsiveLayout> createState() => _ResponsiveLayoutState();
}

class _ResponsiveLayoutState extends State<ResponsiveLayout> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      if (constraint.maxWidth >= 1000) {
        return widget.webView;
      } else {
        return widget.mobileView;
      }
    });
  }
}
