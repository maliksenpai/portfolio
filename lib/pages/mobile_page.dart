import 'package:flutter/material.dart';
import 'package:portfolio/view/introduction_text_background_area.dart';
import 'package:portfolio/view/sidebar_mobile.dart';
import 'package:sidebarx/sidebarx.dart';

class MobilePage extends StatefulWidget {
  const MobilePage({Key? key}) : super(key: key);

  @override
  State<MobilePage> createState() => _MobilePageState();
}

class _MobilePageState extends State<MobilePage> {
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
          'Portfolio',
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
      body: Center(
        child: SingleChildScrollView(
          child: IntroductionTextBackgroundArea(
            isExtended: isExtended,
          ),
        ),
      ),
    );
  }
}
