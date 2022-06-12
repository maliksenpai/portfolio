import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:sizer/sizer.dart';

class IntroductionProjectTitle extends StatelessWidget {
  bool isMobile;
  String numberOfProject;

  IntroductionProjectTitle(
      {Key? key, required this.isMobile, required this.numberOfProject})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GradientText(
          "Projects",
          colors: const [
            Colors.blueAccent,
            Colors.deepOrangeAccent,
            Colors.redAccent,
          ],
          gradientType: GradientType.linear,
          style: TextStyle(fontSize: isMobile ? 24.sp : 8.sp),
        ),
        Text(
          "Number of Project: ${numberOfProject}",
          style: TextStyle(
            fontSize: isMobile ? 9.sp : 3.sp,
            color: Colors.white70,
          ),
        ),
      ],
    );
  }
}
