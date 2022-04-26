import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/data/data.dart';
import 'package:portfolio/view/introduction_image_area.dart';
import 'package:portfolio/view/introduction_text_area.dart';

class WebPage extends StatelessWidget {
  const WebPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            child: const Text('Experiences'),
            onPressed: () {},
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
      body: ListView(
        children: [
          Row(
            children: [
              IntroductionTextArea(isSmallScreen: false,),
              IntroductionImageArea(isSmallScreen: false),
            ],
          )
        ],
      ),
    );
  }
}
