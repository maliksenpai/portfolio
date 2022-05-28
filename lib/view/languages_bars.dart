import 'package:flutter/material.dart';
import 'package:portfolio/data/data.dart';
import 'package:portfolio/view/animated_language_bar.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:sizer/sizer.dart';

class LanguageBars extends StatefulWidget {
  const LanguageBars({Key? key}) : super(key: key);

  @override
  _LanguageBarsState createState() => _LanguageBarsState();
}

class _LanguageBarsState extends State<LanguageBars>{

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
            "Languages (Technology)",
            colors: [
              Colors.redAccent,
              Colors.deepOrangeAccent,
              Colors.blueAccent,
            ],
            gradientType: GradientType.linear,
            style: TextStyle(
              fontSize: 8.sp,
            ),
          ),
          Container(
            width: 60.w,
            height: (100.h - AppBar().preferredSize.height) * 0.7,
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Align(
              alignment: Alignment.center,
              child: ListView.separated(
                shrinkWrap: true,
                itemCount: languages.length,
                separatorBuilder: (context, index) {
                  return Divider();
                },
                itemBuilder: (context, index) {
                  return Container(
                    child: AnimatedLanguageBar(
                      title: languages.keys.elementAt(index),
                      progress: languages.values.elementAt(index),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
