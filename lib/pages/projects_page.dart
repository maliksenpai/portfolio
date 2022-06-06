import 'package:flutter/material.dart';
import 'package:portfolio/view/introduction_project_carousel.dart';
import 'package:portfolio/view/mobile_drawer.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Projects'),),
      drawer: MobileDrawer(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: IntroductionProjects(isMobile: true, isExtended: false,),
        ),
      ),
    );
  }
}
