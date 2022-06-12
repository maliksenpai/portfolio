import 'package:flutter/material.dart';
import 'package:portfolio/components/experience_area_item.dart';
import 'package:portfolio/components/experience_area_title.dart';
import 'package:portfolio/data/data.dart';
import 'package:sizer/sizer.dart';
import 'package:timeline_tile/timeline_tile.dart';

class ExperienceAreaSmall extends StatelessWidget {
  ExperienceAreaSmall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      constraints: BoxConstraints(
        minHeight: 100.h,
      ),
      child: ListView(
        children: [
          ExperienceAreaTitle(experiences: experiences, isMobile: true),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: ListView.separated(
              shrinkWrap: true,
              itemCount: experiences.length,
              physics: const NeverScrollableScrollPhysics(),
              separatorBuilder: (context, index) {
                return const TimelineDivider(
                  begin: 0.05,
                  end: 0.95,
                  thickness: 6,
                  color: Color(0xFFB71C1C),
                );
              },
              itemBuilder: (context, index) {
                return ExperienceAreaItem(
                    index: index,
                    item: experiences[index],
                    isLast: index == experiences.length - 1);
              },
            ),
          ),
        ],
      ),
    );
  }
}
