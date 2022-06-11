import 'package:flutter/material.dart';
import 'package:portfolio/data/data.dart';
import 'package:portfolio/view/animated_language_bar.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:sizer/sizer.dart';

class LanguageBars extends StatefulWidget {
  bool isMobile;

  LanguageBars({Key? key, required this.isMobile}) : super(key: key);

  @override
  _LanguageBarsState createState() => _LanguageBarsState();
}

class _LanguageBarsState extends State<LanguageBars> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      constraints: BoxConstraints(
        minHeight: 100.h,
      ),
      child: Column(
        children: [
          GradientText(
            "Languages",
            colors: const [
              Colors.redAccent,
              Colors.deepOrangeAccent,
              Colors.blueAccent,
            ],
            gradientType: GradientType.linear,
            style: TextStyle(
              fontSize: widget.isMobile ? 24.sp : 8.sp,
            ),
          ),
          Container(
            width: widget.isMobile ? 100.w : 70.w,
            height: 100.h * 0.7,
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Align(
              alignment: Alignment.center,
              child: ListView.separated(
                shrinkWrap: true,
                itemCount: languages.length,
                separatorBuilder: (context, index) {
                  return const Divider();
                },
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: AnimatedLanguageBar(
                      title: languages.keys.elementAt(index),
                      description:
                          languages.values.elementAt(index).description,
                      progress: languages.values.elementAt(index).level,
                      isMobile: widget.isMobile,
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
