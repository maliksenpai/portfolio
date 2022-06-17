import 'package:fancy_cursor/fancy_cursor.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/view/certificates_area.dart';
import 'package:portfolio/view/experience_area.dart';
import 'package:portfolio/view/introduction_projects.dart';
import 'package:portfolio/view/introduction_web_area.dart';
import 'package:portfolio/view/languages_bars.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:sidebarx/sidebarx.dart';
import 'package:sizer/sizer.dart';

class WebPage extends StatefulWidget {
  const WebPage({Key? key}) : super(key: key);

  @override
  State<WebPage> createState() => _WebPageState();
}

class _WebPageState extends State<WebPage> {
  int selectedIndex = 0;
  bool isExtended = false;
  AutoScrollController scrollController = AutoScrollController();
  late SidebarXController sidebarXController;

  @override
  void initState() {
    super.initState();
    sidebarXController =
        SidebarXController(selectedIndex: selectedIndex, extended: isExtended);
  }

  @override
  Widget build(BuildContext context) {
    return FancyCursor(
      color: const Color(0xFFB71C1C),
      child: Scaffold(
        backgroundColor: const Color(0xFF424242),
        body: Row(
          children: [
            SidebarX(
              controller: sidebarXController,
              theme: SidebarXTheme(
                width: 5.w,
                textStyle: const TextStyle(color: Color(0xFFB71C1C)),
                selectedTextStyle: const TextStyle(color: Colors.white70),
                decoration: const BoxDecoration(
                  color: const Color(0xFF1B1B1B),
                ),
              ),
              extendedTheme: SidebarXTheme(
                width: 10.w,
              ),
              items: [
                SidebarXItem(
                  iconWidget: const Icon(
                    Icons.person,
                    color: Color(0xFFB71C1C),
                  ),
                  label: 'About me',
                  onTap: () {
                    scrollController.scrollToIndex(0);
                  },
                ),
                SidebarXItem(
                    iconWidget: const Icon(
                      Icons.watch,
                      color: Color(0xFFB71C1C),
                    ),
                    label: 'Experiences',
                    onTap: () => {
                          scrollController.scrollToIndex(1,
                              preferPosition: AutoScrollPosition.begin)
                        }),
                SidebarXItem(
                    iconWidget: const Icon(
                      Icons.document_scanner,
                      color: Color(0xFFB71C1C),
                    ),
                    label: 'Projects',
                    onTap: () => {
                          scrollController.scrollToIndex(2,
                              preferPosition: AutoScrollPosition.begin)
                        }),
                SidebarXItem(
                    iconWidget: const Icon(
                      Icons.sort,
                      color: Color(0xFFB71C1C),
                    ),
                    label: 'Languages',
                    onTap: () => {scrollController.scrollToIndex(3)}),
                SidebarXItem(
                  iconWidget: const Icon(
                    Icons.description,
                    color: Color(0xFFB71C1C),
                  ),
                  label: 'Certificates',
                  onTap: () {
                    scrollController.scrollToIndex(4);
                  },
                )
              ],
              headerBuilder: (context, expanded) {
                return Container(
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
                            color: Colors.white70,
                            fontSize: expanded ? 8.sp : 3.sp),
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
                  icon:
                      Icon(expanded ? Icons.chevron_left : Icons.chevron_right),
                  color: const Color(0xFFB71C1C),
                  onPressed: () {
                    sidebarXController.toggleExtended();
                    setState(() {
                      isExtended = !isExtended;
                    });
                  },
                );
              },
            ),
            Container(
              width: isExtended ? 90.w : 95.w,
              child: ListView(
                controller: scrollController,
                children: [
                  AutoScrollTag(
                    index: 0,
                    key: const ValueKey(0),
                    controller: scrollController,
                    child: IntroductionWebArea(
                      isExtended: isExtended,
                    ),
                  ),
                  AutoScrollTag(
                    index: 1,
                    key: const ValueKey(1),
                    controller: scrollController,
                    child: ExperienceArea(),
                  ),
                  AutoScrollTag(
                    index: 2,
                    key: const ValueKey(2),
                    controller: scrollController,
                    child: IntroductionProjects(
                      isExtended: isExtended,
                    ),
                  ),
                  AutoScrollTag(
                    index: 3,
                    key: const ValueKey(3),
                    controller: scrollController,
                    child: LanguageBars(),
                  ),
                  AutoScrollTag(
                    index: 4,
                    key: const ValueKey(4),
                    controller: scrollController,
                    child: const CertificatesArea(),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
