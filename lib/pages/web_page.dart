import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/view/experience_area.dart';
import 'package:portfolio/view/introduction_image_area.dart';
import 'package:portfolio/view/introduction_text_area.dart';
import 'package:smooth_scroll_web/smooth_scroll_web.dart';

class WebPage extends StatelessWidget {
  const WebPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScrollController  scrollController = ScrollController();

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
              //scrollController.scrollToIndex(index: 0,);
            },
          ),
          TextButton(
            child: const Text('Experiences'),
            onPressed: () {
              print("..");
              //scrollController.scrollToIndex(index: 1);
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
      body: SmoothScrollWeb(
        controller: scrollController,
        child: ListView.builder(
          controller: scrollController,
          itemCount: 2,
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
      ),
    );
  }
}
