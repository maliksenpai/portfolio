import 'package:fancy_cursor/fancy_cursor.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/view/experience_area.dart';
import 'package:portfolio/view/introduction_image_area.dart';
import 'package:portfolio/view/introduction_project_carousel.dart';
import 'package:portfolio/view/introduction_text_area.dart';
import 'package:portfolio/view/languages_bars.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

class WebPage extends StatelessWidget {
  const WebPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AutoScrollController scrollController = AutoScrollController();

    return FancyCursor(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: RichText(
            text: const TextSpan(
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
                children: [
                  TextSpan(text: "Portfolio "),
                  TextSpan(
                      text: "Page",
                      style: TextStyle(decoration: TextDecoration.underline))
                ]),
          ),
          actions: [
            TextButton(
              child: const Text('About me'),
              onPressed: () {
                scrollController.scrollToIndex(0);
              },
            ),
            TextButton(
              child: const Text('Experiences'),
              onPressed: () {
                scrollController.scrollToIndex(1,
                    preferPosition: AutoScrollPosition.begin);
              },
            ),
            TextButton(
              child: const Text('Projects'),
              onPressed: () {
                scrollController.scrollToIndex(2);
              },
            ),
            TextButton(
              child: const Text('Languages'),
              onPressed: () {
                scrollController.scrollToIndex(3);
              },
            ),
          ],
        ),
        body: ListView.builder(
          controller: scrollController,
          cacheExtent: double.maxFinite,
          itemCount: 4,
          itemBuilder: (context, index) {
            if (index == 0) {
              return AutoScrollTag(
                index: 0,
                key: ValueKey(0),
                controller: scrollController,
                child: Row(
                  children: [
                    IntroductionTextArea(
                      isSmallScreen: false,
                    ),
                    IntroductionImageArea(isSmallScreen: false),
                  ],
                ),
              );
            } else if (index == 1) {
              return AutoScrollTag(
                index: 1,
                key: ValueKey(1),
                controller: scrollController,
                child: ExperienceArea(),
              );
            } else if (index == 2) {
              return AutoScrollTag(
                index: 2,
                key: ValueKey(2),
                controller: scrollController,
                child: const IntroductionProjectCarousel(),
              );
            } else if (index == 3) {
              return AutoScrollTag(
                index: 3,
                key: ValueKey(3),
                controller: scrollController,
                child: const LanguageBars(),
              );
            } else {
              return Container();
            }
          },
        ),
      ),
    );
  }
}
