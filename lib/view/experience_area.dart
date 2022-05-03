import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:portfolio/data/data.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:timeline_tile/timeline_tile.dart';

class ExperienceArea extends StatelessWidget {
  ExperienceArea({Key? key}) : super(key: key);

  DateFormat dateFormat = DateFormat('yyyy MM');

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      constraints: BoxConstraints(
        minHeight: MediaQuery.of(context).size.height - AppBar().preferredSize.height,
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
            style: const TextStyle(
              fontSize: 36
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


/*
import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class ExperienceArea extends StatelessWidget {
  const ExperienceArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          TimelineTile(
            alignment: TimelineAlign.manual,
            lineXY: 0.1,
            isFirst: true,
            indicatorStyle: const IndicatorStyle(
              width: 20,
              color: Colors.purple,
            ),
            beforeLineStyle: const LineStyle(
              color: Colors.purple,
              thickness: 6,
            ),
          ),
          const TimelineDivider(
            begin: 0.1,
            end: 0.9,
            thickness: 6,
            color: Colors.purple,
          ),
          TimelineTile(
            alignment: TimelineAlign.manual,
            lineXY: 0.9,
            beforeLineStyle: const LineStyle(
              color: Colors.purple,
              thickness: 6,
            ),
            afterLineStyle: const LineStyle(
              color: Colors.deepOrange,
              thickness: 6,
            ),
            indicatorStyle: const IndicatorStyle(
              width: 20,
              color: Colors.cyan,
            ),
          ),
          const TimelineDivider(
            begin: 0.1,
            end: 0.9,
            thickness: 6,
            color: Colors.deepOrange,
          ),
          TimelineTile(
            alignment: TimelineAlign.manual,
            lineXY: 0.1,
            isLast: true,
            beforeLineStyle: const LineStyle(
              color: Colors.deepOrange,
              thickness: 6,
            ),
            indicatorStyle: const IndicatorStyle(
              width: 20,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}

 */