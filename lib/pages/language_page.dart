import 'package:flutter/material.dart';
import 'package:portfolio/view/languages_bars.dart';
import 'package:portfolio/view/sidebar_mobile.dart';
import 'package:sidebarx/sidebarx.dart';

class LanguagePage extends StatefulWidget {
  const LanguagePage({Key? key}) : super(key: key);

  @override
  State<LanguagePage> createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  int selectedIndex = 0;
  bool isExtended = false;
  late SidebarXController sidebarXController;

  @override
  void initState() {
    super.initState();
    sidebarXController =
        SidebarXController(selectedIndex: selectedIndex, extended: isExtended);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Languages',
          style: TextStyle(color: Color(0xFFB71C1C)),
        ),
        backgroundColor: const Color(0xFF1B1B1B),
        iconTheme: const IconThemeData(
          color: const Color(0xFFB71C1C),
        ),
      ),
      drawer: SideBarMobile(
        controller: sidebarXController,
        selectedIndex: selectedIndex,
        isExtended: isExtended,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/mobile-background.png"),
                fit: BoxFit.fitHeight,
              ),
            ),
            child: LanguageBars(
              isMobile: true,
            ),
          ),
        ),
      ),
    );
  }
}
