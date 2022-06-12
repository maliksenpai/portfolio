import 'package:flutter/material.dart';
import 'package:portfolio/view/experience_area_small.dart';
import 'package:portfolio/view/sidebar_mobile.dart';
import 'package:sidebarx/sidebarx.dart';

class ExperiencesPage extends StatefulWidget {
  const ExperiencesPage({Key? key}) : super(key: key);

  @override
  State<ExperiencesPage> createState() => _ExperiencesPageState();
}

class _ExperiencesPageState extends State<ExperiencesPage> {
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
          'Experiences',
          style: TextStyle(color: Color(0xFFB71C1C)),
        ),
        backgroundColor: const Color(0xFF1B1B1B),
        iconTheme: const IconThemeData(
          color: Color(0xFFB71C1C),
        ),
      ),
      drawer: SideBarMobile(
        controller: sidebarXController,
        selectedIndex: selectedIndex,
        isExtended: isExtended,
      ),
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/mobile-background.png"),
              fit: BoxFit.fitHeight,
            ),
          ),
          child: ExperienceAreaSmall(),
        ),
      ),
    );
  }
}
