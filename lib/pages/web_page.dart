import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/data/data.dart';

class WebPage extends StatelessWidget {
  const WebPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: DefaultTextStyle(
          style: const TextStyle(
            color: Colors.black87
          ),
          child: AnimatedTextKit(
            animatedTexts: [
              RotateAnimatedText(title),
              RotateAnimatedText(name)
            ],
            repeatForever: true,
          ),
        ),
        actions: [
          TextButton(
            child: const Text('Experiences'),
            onPressed: () {

            },
          ),
          TextButton(
            child: const Text('Languages'),
            onPressed: () {

            },
          ),
          TextButton(
            child: const Text('Projects'),
            onPressed: () {

            },
          ),
          TextButton(
            child: const Text('Jobs'),
            onPressed: () {

            },
          ),
        ],
      ),
      body: Column(
        children: [
          const Text("Web")
        ],
      ),
    );
  }
}
