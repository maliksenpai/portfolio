import 'dart:async';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/data/data.dart';
import 'package:portfolio/view/project_carousel_item.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher_string.dart';

class IntroductionProjectCarousel extends StatefulWidget {
  const IntroductionProjectCarousel({Key? key}) : super(key: key);

  @override
  State<IntroductionProjectCarousel> createState() => _IntroductionProjectCarouselState();
}

class _IntroductionProjectCarouselState extends State<IntroductionProjectCarousel> {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.w,
      height: 100.h - AppBar().preferredSize.height,
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
                fontSize: 8.sp
            ),
          ),
          SizedBox(
            width: 100.w,
            height: (100.h - AppBar().preferredSize.height) * 0.7,
            child: CarouselSlider(
              options: CarouselOptions(
                enableInfiniteScroll: true,
                autoPlay: true,
              ),
              items: projects.map((project) {
                return Center(
                  child: ProjectCarouselItem(project: project,),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
