import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:portfolio/data/data.dart';
import 'package:portfolio/model/experience.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:sizer/sizer.dart';
import 'package:timeline_tile/timeline_tile.dart';

class ExperienceArea extends StatelessWidget {
  ExperienceArea({Key? key}) : super(key: key);

  DateFormat dateFormat = DateFormat('yyyy MM');

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      constraints: BoxConstraints(
        minHeight: 100.h - AppBar().preferredSize.height,
      ),
      child: Column(
        children: [
          GradientText(
              "Experiences",
            colors: [
              Colors.blueAccent,
              Colors.deepOrangeAccent,
              Colors.redAccent,
            ],
            gradientType: GradientType.radial,
            style: TextStyle(
              fontSize: 8.sp,
            ),
          ),
          Text(
            "Total experience duration: ${getExperinceDuration(experiences)}",
            style: TextStyle(
              fontSize: 3.sp,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: ListView.separated(
              shrinkWrap: true,
              itemCount: experiences.length,
              separatorBuilder: (context, index) {
                return const TimelineDivider(
                  begin: 0.01,
                  end: 0.99,
                  thickness: 6,
                  color: Colors.redAccent,
                );
              },
              itemBuilder: (context, index) {
                if(index % 2 == 0){
                  return TimelineTile(
                    alignment: TimelineAlign.manual,
                    lineXY: 0.01,
                    isFirst: index == 0,
                    indicatorStyle: const IndicatorStyle(
                      width: 20,
                      color: Colors.deepOrangeAccent,
                    ),
                    beforeLineStyle: const LineStyle(
                      color: Colors.redAccent,
                      thickness: 6,
                    ),
                    endChild: Container(
                      padding: const EdgeInsets.all(18),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Column(
                          children: [
                            SelectableText(experiences[index].companyName, style: const TextStyle(fontWeight: FontWeight.bold),),
                            SelectableText(experiences[index].description),
                            SelectableText(dateFormat.format(experiences[index].startTime) + ' - ' + dateFormat.format(experiences[index].endTime), style: TextStyle(color: Colors.grey.shade500),),
                          ],
                        ),
                      ),
                    ),
                  );
                }else {
                  return TimelineTile(
                    alignment: TimelineAlign.manual,
                    lineXY: 0.99,
                    isLast: index == experiences.length - 1,
                    beforeLineStyle: const LineStyle(
                      color: Colors.redAccent,
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
                            SelectableText(experiences[index].companyName, style: const TextStyle(fontWeight: FontWeight.bold),),
                            SelectableText(experiences[index].description),
                            SelectableText(dateFormat.format(experiences[index].startTime) + ' - ' + dateFormat.format(experiences[index].endTime), style: TextStyle(color: Colors.grey.shade500),),
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
  Duration totalDuration = Duration(seconds: 0);
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