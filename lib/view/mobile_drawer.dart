import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/pages/experiences_page.dart';
import 'package:portfolio/pages/language_page.dart';
import 'package:portfolio/pages/projects_page.dart';
import 'package:portfolio/view/portfolio_rich_text.dart';
import 'package:sizer/sizer.dart';

class MobileDrawer extends Drawer {
  const MobileDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ImageProvider image = kIsWeb
        ? AssetImage('assets/images/parallax-2.jpeg') as ImageProvider
        : AssetImage('images/parallax-2.jpeg');
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Column(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 5.5.h,
                  child: CircleAvatar(
                    backgroundImage: image,
                    radius: 5.h,
                  ),
                ),
                PortfolioRichText(),
              ],
            ),
          ),
          Card(
            child: ListTile(
              title: Center(child: Text('Experiences')),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ExperiencesPage()),
                );
              },
            ),
          ),
          Card(
            child: ListTile(
              title: Center(child: Text('Projects')),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProjectsPage()),
                );
              },
            ),
          ),
          Card(
            child: ListTile(
              title: Center(child: Text('Languages')),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LanguagePage()),
                );
              },
            ),
          )

        ],
      ),
    );
  }
}
