import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:portfolio/model/experience.dart';
import 'package:timeline_tile/timeline_tile.dart';

class ExperienceAreaItem extends StatelessWidget {
  int index;
  Experience item;
  bool isLast;

  ExperienceAreaItem(
      {Key? key, required this.index, required this.item, required this.isLast})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateFormat dateFormat = DateFormat('yyyy MM');

    if (index % 2 == 0) {
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
                SelectableText(
                  item.companyName,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white70),
                ),
                SelectableText(
                  item.description,
                  style: const TextStyle(color: Colors.white70),
                ),
                SelectableText(
                  dateFormat.format(item.endTime) +
                      ' - ' +
                      dateFormat.format(item.startTime),
                  style: const TextStyle(color: Colors.white30),
                ),
              ],
            ),
          ),
        ),
      );
    } else {
      return TimelineTile(
        alignment: TimelineAlign.manual,
        lineXY: 0.95,
        isLast: isLast,
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
                SelectableText(
                  item.companyName,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white70),
                ),
                SelectableText(
                  item.description,
                  style: const TextStyle(color: Colors.white70),
                ),
                SelectableText(
                  dateFormat.format(item.endTime) +
                      ' - ' +
                      dateFormat.format(item.startTime),
                  style: const TextStyle(color: Colors.white30),
                ),
              ],
            ),
          ),
        ),
      );
    }
  }
}
