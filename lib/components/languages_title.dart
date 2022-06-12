import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:sizer/sizer.dart';

class LanguagesTitle extends StatelessWidget {
  bool isMobile;

  LanguagesTitle({Key? key, required this.isMobile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
            fontSize: isMobile ? 24.sp : 8.sp,
          ),
        ),
      ],
    );
  }
}
