import 'package:flutter/material.dart';
import 'package:portfolio/model/project.dart';
import 'package:portfolio/view/project_item.dart';
import 'package:sizer/sizer.dart';

class IntroductionProjectItem extends StatelessWidget {
  bool isMobile;
  int index;
  Project item;

  IntroductionProjectItem(
      {Key? key,
      required this.isMobile,
      required this.index,
      required this.item})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          isMobile ? const EdgeInsets.symmetric(vertical: 12) : EdgeInsets.zero,
      height: 80.h,
      child: Align(
        alignment:
            index % 2 == 0 ? Alignment.centerLeft : Alignment.centerRight,
        child: ProjectItem(
          project: item,
          isMobile: isMobile,
        ),
      ),
    );
  }
}
