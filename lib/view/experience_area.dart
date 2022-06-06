import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:portfolio/data/data.dart';
import 'package:portfolio/model/experience.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:sizer/sizer.dart';
import 'package:timeline_tile/timeline_tile.dart';

class ExperienceArea extends StatelessWidget {
  bool isMobile;
  ExperienceArea({Key? key, required this.isMobile}) : super(key: key);

  DateFormat dateFormat = DateFormat('yyyy MM');

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      constraints: BoxConstraints(
        minHeight: 100.h,
      ),
      child: Column(
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: ListView.separated(
              shrinkWrap: true,
              itemCount: experiences.length,
              separatorBuilder: (context, index) {
                return const TimelineDivider(
                  begin: 0.05,
                  end: 0.95,
                  thickness: 6,
                  color: Color(0xFFB71C1C),
                );
              },
              itemBuilder: (context, index) {
                if(index % 2 == 0){
                  return TimelineTile(
                    alignment: TimelineAlign.manual,
                    lineXY: 0.05,
                    isFirst: index == 0,
                    indicatorStyle: const IndicatorStyle(
                      width: 20,
                      color: Colors.deepOrangeAccent,
                    ),
                    beforeLineStyle: const LineStyle(
                      color: Color(0xFFB71C1C),
                      thickness: 6,
                    ),
                    endChild: Container(
                      padding: const EdgeInsets.all(18),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Column(
                          children: [
                            SelectableText(experiences[index].companyName, style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white70),),
                            SelectableText(experiences[index].description, style: TextStyle(color: Colors.white70),),
                            SelectableText(dateFormat.format(experiences[index].startTime) + ' - ' + dateFormat.format(experiences[index].endTime), style: TextStyle(color: Colors.white30),),
                          ],
                        ),
                      ),
                    ),
                  );
                }else {
                  return TimelineTile(
                    alignment: TimelineAlign.manual,
                    lineXY: 0.95,
                    isLast: index == experiences.length - 1,
                    beforeLineStyle: const LineStyle(
                      color: Color(0xFFB71C1C),
                      thickness: 6,
                    ),
                    indicatorStyle: const IndicatorStyle(
                      width: 20,
                      color: Colors.deepOrangeAccent,
                    ),
                    startChild: Container(
                      padding: const EdgeInsets.all(18),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Column(
                          children: [
                            SelectableText(experiences[index].companyName, style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white70),),
                            SelectableText(experiences[index].description, style: TextStyle(color: Colors.white70),),
                            SelectableText(dateFormat.format(experiences[index].startTime) + ' - ' + dateFormat.format(experiences[index].endTime), style: TextStyle(color: Colors.white30),),
                          ],
                        ),
                      ),
                    ),
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}

String getExperinceDuration(List<Experience> experience) {
  Duration totalDuration = const Duration(seconds: 0);
  experience.forEach((element) { 
    totalDuration = element.endTime.difference(element.startTime);
  });
  String durationString = "";
  durationString += totalDuration.inDays > 365 ? "Year: ${(totalDuration.inDays / 365).floorToDouble()} " : "";
  durationString += totalDuration.inDays > 30 ? "Month: ${((totalDuration.inDays % 365)/30).floorToDouble()} " : "";
  durationString += totalDuration.inDays > 1 ? "Day: ${((totalDuration.inDays % 365) % 30)}" : "";
  if(durationString == ""){
    durationString = "Inexperienced";
  }
  return durationString;
}  