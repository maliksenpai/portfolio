import 'package:flutter/material.dart';
import 'package:portfolio/data/data.dart';
import 'package:portfolio/view/project_item.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:sizer/sizer.dart';

class IntroductionProjects extends StatefulWidget {
  bool isMobile;
  bool isExtended;
  IntroductionProjects({Key? key, required this.isMobile, required this.isExtended}) : super(key: key);

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
          GradientText(
            "Projects",
            colors: const [
              Colors.blueAccent,
              Colors.deepOrangeAccent,
              Colors.redAccent,
            ],
            gradientType: GradientType.linear,
            style: TextStyle(
                fontSize: widget.isMobile ? 24.sp : 8.sp
            ),
          ),
          Text(
            "Number of Project: ${projects.length}",
            style: TextStyle(
                fontSize: widget.isMobile ? 9.sp : 3.sp
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: projects.length,
            itemBuilder: (context, index){
              return Container(
                height: 80.h,
                child: Align(
                  alignment: index % 2 == 0 ? Alignment.centerLeft : Alignment.centerRight,
                  child: ProjectItem(project: projects[index],),
                )
              );
            },
          )
        ],
      ),
    );
  }
}
