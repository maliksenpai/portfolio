import 'package:flutter/material.dart';
import 'package:portfolio/pages/experiences_page.dart';
import 'package:portfolio/pages/language_page.dart';
import 'package:portfolio/pages/mobile_page.dart';
import 'package:portfolio/pages/projects_page.dart';
import 'package:sidebarx/sidebarx.dart';
import 'package:sizer/sizer.dart';

class SideBarMobile extends StatefulWidget {
  SidebarXController controller;
  int selectedIndex;
  bool isExtended;

  SideBarMobile(
      {Key? key,
      required this.controller,
      required this.selectedIndex,
      required this.isExtended})
      : super(key: key);

  @override
  State<SideBarMobile> createState() => _SideBarMobileState();
}

class _SideBarMobileState extends State<SideBarMobile> {
  @override
  Widget build(BuildContext context) {
    return SidebarX(
      controller: widget.controller,
      theme: SidebarXTheme(
        width: 20.w,
        textStyle: const TextStyle(color: Color(0xFFB71C1C)),
        selectedTextStyle: const TextStyle(color: Colors.white70),
        decoration: const BoxDecoration(
          color: Color(0xFF1B1B1B),
        ),
      ),
      extendedTheme: SidebarXTheme(
        width: 50.w,
      ),
      items: [
        SidebarXItem(
          iconWidget: const Icon(
            Icons.person,
            color: Color(0xFFB71C1C),
          ),
          label: 'About me',
          onTap: () => {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MobilePage()),
            )
          },
        ),
        SidebarXItem(
            iconWidget: const Icon(
              Icons.watch,
              color: Color(0xFFB71C1C),
            ),
            label: 'Experiences',
            onTap: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ExperiencesPage()),
                  )
                }),
        SidebarXItem(
            iconWidget: const Icon(
              Icons.document_scanner,
              color: Color(0xFFB71C1C),
            ),
            label: 'Projects',
            onTap: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProjectsPage()),
                  )
                }),
        SidebarXItem(
            iconWidget: const Icon(
              Icons.sort,
              color: Color(0xFFB71C1C),
            ),
            label: 'Languages',
            onTap: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LanguagePage()),
                  )
                }),
      ],
      headerBuilder: (context, expanded) {
        return SizedBox(
          height: 20.h,
          child: Align(
            alignment: Alignment.center,
            child: Container(
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xFFB71C1C))),
              child: Text(
                'EMA',
                style: TextStyle(
                    color: Colors.white70, fontSize: expanded ? 24.sp : 9.sp),
              ),
            ),
          ),
        );
      },
      headerDivider: const Divider(
        color: Color(0xFFB71C1C),
      ),
      toggleButtonBuilder: (context, expanded) {
        return IconButton(
          icon: Icon(expanded ? Icons.chevron_left : Icons.chevron_right),
          color: const Color(0xFFB71C1C),
          onPressed: () {
            widget.controller.toggleExtended();
            setState(() {
              widget.isExtended = !widget.isExtended;
            });
          },
        );
      },
    );
  }
}
