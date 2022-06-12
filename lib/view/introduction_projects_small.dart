import 'package:flutter/material.dart';
import 'package:portfolio/components/introduction_project_item.dart';
import 'package:portfolio/components/introduction_project_title.dart';
import 'package:portfolio/data/data.dart';
import 'package:sizer/sizer.dart';

class IntroductionProjectsSmall extends StatefulWidget {
  bool isExtended;

  IntroductionProjectsSmall({Key? key, required this.isExtended})
      : super(key: key);

  @override
  State<IntroductionProjectsSmall> createState() =>
      _IntroductionProjectsSmallState();
}

class _IntroductionProjectsSmallState extends State<IntroductionProjectsSmall> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      width: 100.w,
      height: 100.h,
      child: ListView(
        children: [
          IntroductionProjectTitle(
              isMobile: true, numberOfProject: projects.length.toString()),
          ListView.builder(
            shrinkWrap: true,
            itemCount: projects.length,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return IntroductionProjectItem(
                isMobile: true,
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
