import 'package:flutter/material.dart';
import 'package:portfolio/view/experience_area.dart';
import 'package:portfolio/view/mobile_drawer.dart';

class ExperiencesPage extends StatelessWidget {
  const ExperiencesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Experiences'),),
      drawer: MobileDrawer(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: ExperienceArea(isMobile: true,),
        ),
      ),
    );
  }
}
