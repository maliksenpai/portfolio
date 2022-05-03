import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/data/data.dart';
import 'package:portfolio/view/experience_area.dart';
import 'package:portfolio/view/introduction_image_area.dart';
import 'package:portfolio/view/introduction_text_area.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class WebPage extends StatelessWidget {
  const WebPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ItemScrollController scrollController = new ItemScrollController();

    return Scaffold(
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
              TextSpan(text: "Page", style: TextStyle(decoration: TextDecoration.underline))
            ]
          ),
        ),
        actions: [
          TextButton(
            child: const Text('About me'),
            onPressed: () {
              scrollController.scrollTo(index: 0, duration: Duration(seconds: 1), curve: Curves.bounceInOut);
            },
          ),
          TextButton(
            child: const Text('Experiences'),
            onPressed: () {
              scrollController.scrollTo(index: 1, duration: Duration(seconds: 1), curve: Curves.bounceInOut);
            },
          ),
          TextButton(
            child: const Text('Languages'),
            onPressed: () {},
          ),
          TextButton(
            child: const Text('Projects'),
            onPressed: () {},
          ),
          TextButton(
            child: const Text('Jobs'),
            onPressed: () {},
          ),
        ],
      ),
      body: ScrollablePositionedList.builder(
        itemCount: 2,
        itemScrollController: scrollController,
        itemBuilder: (context, index) {
          if(index==0){
            return Row(
              children: [
                IntroductionTextArea(isSmallScreen: false,),
                IntroductionImageArea(isSmallScreen: false),
              ],
            );
          }else if(index==1){
            return ExperienceArea();
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
