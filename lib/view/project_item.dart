import 'dart:async';
import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/model/project.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ProjectItem extends StatefulWidget {
  Project project;
  bool isMobile;

  ProjectItem({Key? key, required this.project, required this.isMobile})
      : super(key: key);

  @override
  State<ProjectItem> createState() => _ProjectItemState();
}

class _ProjectItemState extends State<ProjectItem> {
  List<Color> colorList = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.yellow
  ];
  List<Alignment> alignmentList = [
    Alignment.bottomLeft,
    Alignment.bottomRight,
    Alignment.topRight,
    Alignment.topLeft,
  ];

  int index = 0;
  Color bottomColor = Colors.red;
  Color topColor = Colors.yellow;
  Alignment begin = Alignment.bottomLeft;
  Alignment end = Alignment.topRight;

  var random = Random();

  @override
  void initState() {
    if (mounted) {
      setState(() {
        index = index + random.nextInt(5);
        bottomColor = colorList[index % colorList.length];
        topColor = colorList[(index + 1) % colorList.length];
        begin = alignmentList[index % alignmentList.length];
        end = alignmentList[(index + 2) % alignmentList.length];
      });
    }
    Timer.periodic(const Duration(seconds: 2), (timer) {
      if (mounted) {
        setState(() {
          index = index + random.nextInt(5);
          bottomColor = colorList[index % colorList.length];
          topColor = colorList[(index + 1) % colorList.length];
          begin = alignmentList[index % alignmentList.length];
          end = alignmentList[(index + 2) % alignmentList.length];
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(seconds: 3),
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: begin, end: end, colors: [bottomColor, topColor]),
        borderRadius: BorderRadius.circular(8),
      ),
      width: widget.isMobile ? 100.w : 40.w,
      padding: EdgeInsets.symmetric(
          horizontal: 36, vertical: widget.isMobile ? 12 : 0),
      child: Column(
        mainAxisAlignment: widget.isMobile
            ? MainAxisAlignment.center
            : MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            widget.project.projectImageUrl.toString(),
            height: 90.h * 0.4,
          ),
          SelectableText(
            widget.project.projectName,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SelectableText(widget.project.projectDescription),
          if (widget.project.projectUrl != null)
            Padding(
              padding: widget.isMobile ? const EdgeInsets.only(top: 24) : const EdgeInsets.all(0),
              child: InkWell(
                child: Text(widget.project.projectUrl!, style: TextStyle(color: Color(0xFFB71C1C)),),
                onTap: () {
                  launchUrlString(widget.project.projectUrl!);
                },
              ),
            )
        ],
      ),
    );
  }
}
