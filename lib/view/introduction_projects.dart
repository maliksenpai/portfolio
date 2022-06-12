import 'package:flutter/material.dart';
import 'package:portfolio/components/introduction_project_item.dart';
import 'package:portfolio/components/introduction_project_title.dart';
import 'package:portfolio/data/data.dart';
import 'package:sizer/sizer.dart';

class IntroductionProjects extends StatefulWidget {
  bool isExtended;

  IntroductionProjects({Key? key, required this.isExtended}) : super(key: key);

  @override
  State<IntroductionProjects> createState() => _IntroductionProjectsState();
}

class _IntroductionProjectsState extends State<IntroductionProjects> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      width: widget.isExtended ? 90.w : 95.w,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IntroductionProjectTitle(
              isMobile: false, numberOfProject: projects.length.toString()),
          ListView.builder(
            shrinkWrap: true,
            itemCount: projects.length,
            itemBuilder: (context, index) {
              return IntroductionProjectItem(
                isMobile: false,
                index: index,
                item: projects[index],
              );
            },
          )
        ],
      ),
    );
  }
}
