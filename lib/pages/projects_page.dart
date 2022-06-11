import 'package:flutter/material.dart';
import 'package:portfolio/view/introduction_project_carousel.dart';
import 'package:portfolio/view/sidebar_mobile.dart';
import 'package:sidebarx/sidebarx.dart';

class ProjectsPage extends StatefulWidget {
  const ProjectsPage({Key? key}) : super(key: key);

  @override
  State<ProjectsPage> createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {
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
          'Projects',
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
        child: SingleChildScrollView(
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/mobile-background.png"),
                fit: BoxFit.fitHeight,
              ),
            ),
            child: IntroductionProjects(
              isMobile: true,
              isExtended: false,
            ),
          ),
        ),
      ),
    );
  }
}
