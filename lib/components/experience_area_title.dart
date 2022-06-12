import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/model/experience.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:sizer/sizer.dart';

class ExperienceAreaTitle extends StatelessWidget {
  List<Experience> experiences;
  bool isMobile;

  ExperienceAreaTitle(
      {Key? key, required this.experiences, required this.isMobile})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GradientText(
          "Experiences",
          colors: [
            Colors.deepOrangeAccent,
            Color(0xFFB71C1C),
          ],
          gradientType: GradientType.radial,
          style: TextStyle(
            fontSize: isMobile ? 24.sp : 8.sp,
            color: Colors.white70,
          ),
        ),
        Text(
          "Total experience duration: ${getExperinceDuration(experiences)}",
          style: TextStyle(
            fontSize: isMobile ? 9.sp : 3.sp,
            color: Colors.white70,
          ),
        ),
      ],
    );
  }
}

String getExperinceDuration(List<Experience> experience) {
  Duration totalDuration = const Duration(seconds: 0);
  experience.forEach((element) {
    totalDuration = element.endTime.difference(element.startTime);
  });
  String durationString = "";
  durationString += totalDuration.inDays > 365
      ? "Year: ${(totalDuration.inDays / 365).floorToDouble()} "
      : "";
  durationString += totalDuration.inDays > 30
      ? "Month: ${((totalDuration.inDays % 365) / 30).floorToDouble()} "
      : "";
  durationString += totalDuration.inDays > 1
      ? "Day: ${((totalDuration.inDays % 365) % 30)}"
      : "";
  if (durationString == "") {
    durationString = "Inexperienced";
  }
  return durationString;
}
