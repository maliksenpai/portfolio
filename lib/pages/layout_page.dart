import 'package:flutter/material.dart';
import 'package:portfolio/pages/mobile_page.dart';
import 'package:portfolio/pages/web_page.dart';

class LayoutPage extends StatelessWidget {
  const LayoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MediaQuery.of(context).size.width > 768 ? const WebPage() : const MobilePage()
    );
  }
}
